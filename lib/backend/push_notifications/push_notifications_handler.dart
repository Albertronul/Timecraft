import 'dart:async';

import 'serialization_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


final _handledMessageIds = <String?>{};

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler({Key? key, required this.child})
      : super(key: key);

  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    if (isWeb) {
      return;
    }

    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    if (_handledMessageIds.contains(message.messageId)) {
      return;
    }
    _handledMessageIds.add(message.messageId);

    safeSetState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final parametersBuilder = parametersBuilderMap[initialPageName];
      if (parametersBuilder != null) {
        final parameterData = await parametersBuilder(initialParameterData);
        if (mounted) {
          context.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        } else {
          appNavigatorKey.currentContext?.pushNamed(
            initialPageName,
            pathParameters: parameterData.pathParameters,
            extra: parameterData.extra,
          );
        }
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      safeSetState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      handleOpenedPushNotification();
    });
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Center(
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(
                FlutterFlowTheme.of(context).customColor1,
              ),
            ),
          ),
        )
      : widget.child;
}

class ParameterData {
  const ParameterData(
      {this.requiredParams = const {}, this.allParams = const {}});
  final Map<String, String?> requiredParams;
  final Map<String, dynamic> allParams;

  Map<String, String> get pathParameters => Map.fromEntries(
        requiredParams.entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
  Map<String, dynamic> get extra => Map.fromEntries(
        allParams.entries.where((e) => e.value != null),
      );

  static Future<ParameterData> Function(Map<String, dynamic>) none() =>
      (data) async => ParameterData();
}

final parametersBuilderMap =
    <String, Future<ParameterData> Function(Map<String, dynamic>)>{
  'Curspagina1': ParameterData.none(),
  'MainPage': ParameterData.none(),
  'Auth1': ParameterData.none(),
  'setari': ParameterData.none(),
  'aboutus': ParameterData.none(),
  'ajutooor': ParameterData.none(),
  'privacypolicy': ParameterData.none(),
  'termsandconditions': ParameterData.none(),
  'Profile': ParameterData.none(),
  'EditProfile': (data) async => ParameterData(
        allParams: {
          'age': getParameter<String>(data, 'age'),
          'name2': getParameter<String>(data, 'name2'),
        },
      ),
  'ChangePassword': ParameterData.none(),
  'ForgotPassword': ParameterData.none(),
  'SubscriptionPayment': ParameterData.none(),
  'ChatAI': ParameterData.none(),
  'MAIN': ParameterData.none(),
  'Sign2': ParameterData.none(),
  'Video1': ParameterData.none(),
  'Quiz1': ParameterData.none(),
  'Work1': ParameterData.none(),
  'Video2': ParameterData.none(),
  'Work2': ParameterData.none(),
  'Video3': ParameterData.none(),
  'Credite': ParameterData.none(),
  'HomeCalendar': ParameterData.none(),
  'Quiz2': ParameterData.none(),
  'Task': ParameterData.none(),
  'Video4': ParameterData.none(),
  'Quiz3': ParameterData.none(),
  'Answers1': ParameterData.none(),
  'Answers2': ParameterData.none(),
  'Answers3': ParameterData.none(),
  'Success03': ParameterData.none(),
  'Cursspagina2': ParameterData.none(),
  'VideoC1': ParameterData.none(),
  'QuizC1': ParameterData.none(),
  'AnswersC1': ParameterData.none(),
  'VideoC2': ParameterData.none(),
  'Cook1': ParameterData.none(),
  'Cook2': ParameterData.none(),
  'VideoC3': ParameterData.none(),
  'QuizC2': ParameterData.none(),
  'AnswersC2': ParameterData.none(),
  'TaskC': ParameterData.none(),
  'SuccessC': ParameterData.none(),
  'Cursspagina3Informatica': ParameterData.none(),
  'VideoINFO1': ParameterData.none(),
  'Quiz1INFO': ParameterData.none(),
  'AnswersINFO1': ParameterData.none(),
  'VideoINFO2': ParameterData.none(),
  'Quiz2INFO': ParameterData.none(),
  'AnswersINFO2': ParameterData.none(),
  'VideoINFO3': ParameterData.none(),
  'Quiz3INFO': ParameterData.none(),
  'AnswersINFO3': ParameterData.none(),
  'TaskINFO': ParameterData.none(),
  'SuccessINFO': ParameterData.none(),
  'Cursspagina4Guitar': ParameterData.none(),
  'VideoG1': ParameterData.none(),
  'QuizG1': ParameterData.none(),
  'AnswersG1': ParameterData.none(),
  'Guitar1': ParameterData.none(),
  'VideoG2': ParameterData.none(),
  'Guitar2': ParameterData.none(),
  'TaskG': ParameterData.none(),
  'SuccesG': ParameterData.none(),
  'Cursspagina5Painting': ParameterData.none(),
  'VideoP1': ParameterData.none(),
  'QuizP1': ParameterData.none(),
  'AnswersP1': ParameterData.none(),
  'VideoP2': ParameterData.none(),
  'QuizP2': ParameterData.none(),
  'AnswersP2': ParameterData.none(),
  'TaskP': ParameterData.none(),
  'SuccessP': ParameterData.none(),
  'Cursspagina6Gardening': ParameterData.none(),
  'VideoGARD1': ParameterData.none(),
  'AnswersGARD1': ParameterData.none(),
  'QuizGARD1': ParameterData.none(),
  'VideoGARD2': ParameterData.none(),
  'QuizGARD2': ParameterData.none(),
  'AnswersGARD2': ParameterData.none(),
  'VideoGARD3': ParameterData.none(),
  'QuizGARD3': ParameterData.none(),
  'AnswersGARD3': ParameterData.none(),
  'TaskGARD': ParameterData.none(),
  'SuccesGARD': ParameterData.none(),
  'VideoGARD4': ParameterData.none(),
  'Cursspagina7Archery': ParameterData.none(),
  'VideoA1': ParameterData.none(),
  'Archery1': ParameterData.none(),
  'QuizA1': ParameterData.none(),
  'AnswersA1': ParameterData.none(),
  'TaskA': ParameterData.none(),
  'SuccesA': ParameterData.none(),
  'Cursspagina8Fishing': ParameterData.none(),
  'VideoF1': ParameterData.none(),
  'QuizF1': ParameterData.none(),
  'AnswersF1': ParameterData.none(),
  'TaskF': ParameterData.none(),
  'SuccesF': ParameterData.none(),
  'Cursspagina9Chess': ParameterData.none(),
  'VideoCHS1': ParameterData.none(),
  'QuizCHS1': ParameterData.none(),
  'AnswersCHS1': ParameterData.none(),
  'VideoCHS2': ParameterData.none(),
  'QuizCHS2': ParameterData.none(),
  'AnswersCHS2': ParameterData.none(),
  'TaskCHS': ParameterData.none(),
  'SuccesCHS': ParameterData.none(),
  'Cursspagina10Camping': ParameterData.none(),
  'VideoCAMP1': ParameterData.none(),
  'VideoCAMP2': ParameterData.none(),
  'QuizE1': ParameterData.none(),
  'AnswersCAMP1': ParameterData.none(),
  'SuccesCAMP': ParameterData.none(),
  'CalendarTask': ParameterData.none(),
  'search': ParameterData.none(),
  'tosprivacy': ParameterData.none(),
  'FlashCards': ParameterData.none(),
  'FlashScris': ParameterData.none(),
  'FlashScrisAnswers': ParameterData.none(),
  'DragAnswers': ParameterData.none(),
  'Drag1': ParameterData.none(),
  'clubs': ParameterData.none(),
  'Motivation': ParameterData.none(),
  'Rutina': ParameterData.none(),
  'chats': (data) async => ParameterData(
        allParams: {
          'receivechat': getParameter<DocumentReference>(data, 'receivechat'),
        },
      ),
  'Health': ParameterData.none(),
  'HealthChart': ParameterData.none(),
  'setari2': ParameterData.none(),
  'setari3': ParameterData.none(),
  'Cursspagina11Editing': ParameterData.none(),
  'VideoE1': ParameterData.none(),
  'QuizCAMP1': ParameterData.none(),
  'AnswersE1': ParameterData.none(),
  'FlashCardsE1': ParameterData.none(),
  'VideoE2': ParameterData.none(),
  'QuizE2': ParameterData.none(),
  'AnswersE2': ParameterData.none(),
  'FlashScrisE': ParameterData.none(),
  'FlashScrisAnswersE1': ParameterData.none(),
  'VideoE3': ParameterData.none(),
  'QuizE3': ParameterData.none(),
  'AnswersE3': ParameterData.none(),
  'VideoE4': ParameterData.none(),
  'FlashCardsE2': ParameterData.none(),
  'QuizE4': ParameterData.none(),
  'AnswersE4': ParameterData.none(),
  'TaskE': ParameterData.none(),
  'SuccesE': ParameterData.none(),
  'Cursspagina12DProjection': ParameterData.none(),
  'Video12D1': ParameterData.none(),
  'Quiz12D1': ParameterData.none(),
  'Answers12D1': ParameterData.none(),
  'Video12D2': ParameterData.none(),
  'FlashScris12D1': ParameterData.none(),
  'FlashScrisAnswers12D1': ParameterData.none(),
  'Video12D3': ParameterData.none(),
  'Drag12D': ParameterData.none(),
  'DragAnswers12D': ParameterData.none(),
  'Video12D4': ParameterData.none(),
  'Quiz12D2': ParameterData.none(),
  'Answers12D2': ParameterData.none(),
  'Video12D5': ParameterData.none(),
  'FlashCards12D': ParameterData.none(),
  'Video12D6': ParameterData.none(),
  'FlashScris12D2': ParameterData.none(),
  'FlashScrisAnswers12D2': ParameterData.none(),
  'Task12D': ParameterData.none(),
  'Graduation12D': ParameterData.none(),
};

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
