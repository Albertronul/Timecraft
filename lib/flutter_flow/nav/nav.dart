import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? MainPageWidget() : Auth1Widget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? MainPageWidget() : Auth1Widget(),
        ),
        FFRoute(
          name: Curspagina1Widget.routeName,
          path: Curspagina1Widget.routePath,
          builder: (context, params) => Curspagina1Widget(),
        ),
        FFRoute(
          name: MainPageWidget.routeName,
          path: MainPageWidget.routePath,
          builder: (context, params) => MainPageWidget(),
        ),
        FFRoute(
          name: Auth1Widget.routeName,
          path: Auth1Widget.routePath,
          builder: (context, params) => Auth1Widget(),
        ),
        FFRoute(
          name: SetariWidget.routeName,
          path: SetariWidget.routePath,
          builder: (context, params) => SetariWidget(),
        ),
        FFRoute(
          name: AboutusWidget.routeName,
          path: AboutusWidget.routePath,
          builder: (context, params) => AboutusWidget(),
        ),
        FFRoute(
          name: AjutooorWidget.routeName,
          path: AjutooorWidget.routePath,
          builder: (context, params) => AjutooorWidget(),
        ),
        FFRoute(
          name: PrivacypolicyWidget.routeName,
          path: PrivacypolicyWidget.routePath,
          builder: (context, params) => PrivacypolicyWidget(),
        ),
        FFRoute(
          name: TermsandconditionsWidget.routeName,
          path: TermsandconditionsWidget.routePath,
          builder: (context, params) => TermsandconditionsWidget(),
        ),
        FFRoute(
          name: ProfileWidget.routeName,
          path: ProfileWidget.routePath,
          builder: (context, params) => ProfileWidget(),
        ),
        FFRoute(
          name: EditProfileWidget.routeName,
          path: EditProfileWidget.routePath,
          builder: (context, params) => EditProfileWidget(
            age: params.getParam(
              'age',
              ParamType.String,
            ),
            name2: params.getParam(
              'name2',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ChangePasswordWidget.routeName,
          path: ChangePasswordWidget.routePath,
          builder: (context, params) => ChangePasswordWidget(),
        ),
        FFRoute(
          name: ForgotPasswordWidget.routeName,
          path: ForgotPasswordWidget.routePath,
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: SubscriptionPaymentWidget.routeName,
          path: SubscriptionPaymentWidget.routePath,
          builder: (context, params) => SubscriptionPaymentWidget(),
        ),
        FFRoute(
          name: ChatAIWidget.routeName,
          path: ChatAIWidget.routePath,
          builder: (context, params) => ChatAIWidget(),
        ),
        FFRoute(
          name: MainWidget.routeName,
          path: MainWidget.routePath,
          builder: (context, params) => MainWidget(),
        ),
        FFRoute(
          name: Sign2Widget.routeName,
          path: Sign2Widget.routePath,
          builder: (context, params) => Sign2Widget(),
        ),
        FFRoute(
          name: Video1Widget.routeName,
          path: Video1Widget.routePath,
          builder: (context, params) => Video1Widget(),
        ),
        FFRoute(
          name: Quiz1Widget.routeName,
          path: Quiz1Widget.routePath,
          builder: (context, params) => Quiz1Widget(),
        ),
        FFRoute(
          name: Work1Widget.routeName,
          path: Work1Widget.routePath,
          builder: (context, params) => Work1Widget(),
        ),
        FFRoute(
          name: Video2Widget.routeName,
          path: Video2Widget.routePath,
          builder: (context, params) => Video2Widget(),
        ),
        FFRoute(
          name: Work2Widget.routeName,
          path: Work2Widget.routePath,
          builder: (context, params) => Work2Widget(),
        ),
        FFRoute(
          name: Video3Widget.routeName,
          path: Video3Widget.routePath,
          builder: (context, params) => Video3Widget(),
        ),
        FFRoute(
          name: CrediteWidget.routeName,
          path: CrediteWidget.routePath,
          builder: (context, params) => CrediteWidget(),
        ),
        FFRoute(
          name: HomeCalendarWidget.routeName,
          path: HomeCalendarWidget.routePath,
          builder: (context, params) => HomeCalendarWidget(),
        ),
        FFRoute(
          name: Quiz2Widget.routeName,
          path: Quiz2Widget.routePath,
          builder: (context, params) => Quiz2Widget(),
        ),
        FFRoute(
          name: TaskWidget.routeName,
          path: TaskWidget.routePath,
          builder: (context, params) => TaskWidget(),
        ),
        FFRoute(
          name: Video4Widget.routeName,
          path: Video4Widget.routePath,
          builder: (context, params) => Video4Widget(),
        ),
        FFRoute(
          name: Quiz3Widget.routeName,
          path: Quiz3Widget.routePath,
          builder: (context, params) => Quiz3Widget(),
        ),
        FFRoute(
          name: Answers1Widget.routeName,
          path: Answers1Widget.routePath,
          builder: (context, params) => Answers1Widget(),
        ),
        FFRoute(
          name: Answers2Widget.routeName,
          path: Answers2Widget.routePath,
          builder: (context, params) => Answers2Widget(),
        ),
        FFRoute(
          name: Answers3Widget.routeName,
          path: Answers3Widget.routePath,
          builder: (context, params) => Answers3Widget(),
        ),
        FFRoute(
          name: Success03Widget.routeName,
          path: Success03Widget.routePath,
          builder: (context, params) => Success03Widget(),
        ),
        FFRoute(
          name: Cursspagina2Widget.routeName,
          path: Cursspagina2Widget.routePath,
          builder: (context, params) => Cursspagina2Widget(),
        ),
        FFRoute(
          name: VideoC1Widget.routeName,
          path: VideoC1Widget.routePath,
          builder: (context, params) => VideoC1Widget(),
        ),
        FFRoute(
          name: QuizC1Widget.routeName,
          path: QuizC1Widget.routePath,
          builder: (context, params) => QuizC1Widget(),
        ),
        FFRoute(
          name: AnswersC1Widget.routeName,
          path: AnswersC1Widget.routePath,
          builder: (context, params) => AnswersC1Widget(),
        ),
        FFRoute(
          name: VideoC2Widget.routeName,
          path: VideoC2Widget.routePath,
          builder: (context, params) => VideoC2Widget(),
        ),
        FFRoute(
          name: Cook1Widget.routeName,
          path: Cook1Widget.routePath,
          builder: (context, params) => Cook1Widget(),
        ),
        FFRoute(
          name: Cook2Widget.routeName,
          path: Cook2Widget.routePath,
          builder: (context, params) => Cook2Widget(),
        ),
        FFRoute(
          name: VideoC3Widget.routeName,
          path: VideoC3Widget.routePath,
          builder: (context, params) => VideoC3Widget(),
        ),
        FFRoute(
          name: QuizC2Widget.routeName,
          path: QuizC2Widget.routePath,
          builder: (context, params) => QuizC2Widget(),
        ),
        FFRoute(
          name: AnswersC2Widget.routeName,
          path: AnswersC2Widget.routePath,
          builder: (context, params) => AnswersC2Widget(),
        ),
        FFRoute(
          name: TaskCWidget.routeName,
          path: TaskCWidget.routePath,
          builder: (context, params) => TaskCWidget(),
        ),
        FFRoute(
          name: SuccessCWidget.routeName,
          path: SuccessCWidget.routePath,
          builder: (context, params) => SuccessCWidget(),
        ),
        FFRoute(
          name: Cursspagina3InformaticaWidget.routeName,
          path: Cursspagina3InformaticaWidget.routePath,
          builder: (context, params) => Cursspagina3InformaticaWidget(),
        ),
        FFRoute(
          name: VideoINFO1Widget.routeName,
          path: VideoINFO1Widget.routePath,
          builder: (context, params) => VideoINFO1Widget(),
        ),
        FFRoute(
          name: Quiz1INFOWidget.routeName,
          path: Quiz1INFOWidget.routePath,
          builder: (context, params) => Quiz1INFOWidget(),
        ),
        FFRoute(
          name: AnswersINFO1Widget.routeName,
          path: AnswersINFO1Widget.routePath,
          builder: (context, params) => AnswersINFO1Widget(),
        ),
        FFRoute(
          name: VideoINFO2Widget.routeName,
          path: VideoINFO2Widget.routePath,
          builder: (context, params) => VideoINFO2Widget(),
        ),
        FFRoute(
          name: Quiz2INFOWidget.routeName,
          path: Quiz2INFOWidget.routePath,
          builder: (context, params) => Quiz2INFOWidget(),
        ),
        FFRoute(
          name: AnswersINFO2Widget.routeName,
          path: AnswersINFO2Widget.routePath,
          builder: (context, params) => AnswersINFO2Widget(),
        ),
        FFRoute(
          name: VideoINFO3Widget.routeName,
          path: VideoINFO3Widget.routePath,
          builder: (context, params) => VideoINFO3Widget(),
        ),
        FFRoute(
          name: Quiz3INFOWidget.routeName,
          path: Quiz3INFOWidget.routePath,
          builder: (context, params) => Quiz3INFOWidget(),
        ),
        FFRoute(
          name: AnswersINFO3Widget.routeName,
          path: AnswersINFO3Widget.routePath,
          builder: (context, params) => AnswersINFO3Widget(),
        ),
        FFRoute(
          name: TaskINFOWidget.routeName,
          path: TaskINFOWidget.routePath,
          builder: (context, params) => TaskINFOWidget(),
        ),
        FFRoute(
          name: SuccessINFOWidget.routeName,
          path: SuccessINFOWidget.routePath,
          builder: (context, params) => SuccessINFOWidget(),
        ),
        FFRoute(
          name: Cursspagina4GuitarWidget.routeName,
          path: Cursspagina4GuitarWidget.routePath,
          builder: (context, params) => Cursspagina4GuitarWidget(),
        ),
        FFRoute(
          name: VideoG1Widget.routeName,
          path: VideoG1Widget.routePath,
          builder: (context, params) => VideoG1Widget(),
        ),
        FFRoute(
          name: QuizG1Widget.routeName,
          path: QuizG1Widget.routePath,
          builder: (context, params) => QuizG1Widget(),
        ),
        FFRoute(
          name: AnswersG1Widget.routeName,
          path: AnswersG1Widget.routePath,
          builder: (context, params) => AnswersG1Widget(),
        ),
        FFRoute(
          name: Guitar1Widget.routeName,
          path: Guitar1Widget.routePath,
          builder: (context, params) => Guitar1Widget(),
        ),
        FFRoute(
          name: VideoG2Widget.routeName,
          path: VideoG2Widget.routePath,
          builder: (context, params) => VideoG2Widget(),
        ),
        FFRoute(
          name: Guitar2Widget.routeName,
          path: Guitar2Widget.routePath,
          builder: (context, params) => Guitar2Widget(),
        ),
        FFRoute(
          name: TaskGWidget.routeName,
          path: TaskGWidget.routePath,
          builder: (context, params) => TaskGWidget(),
        ),
        FFRoute(
          name: SuccesGWidget.routeName,
          path: SuccesGWidget.routePath,
          builder: (context, params) => SuccesGWidget(),
        ),
        FFRoute(
          name: Cursspagina5PaintingWidget.routeName,
          path: Cursspagina5PaintingWidget.routePath,
          builder: (context, params) => Cursspagina5PaintingWidget(),
        ),
        FFRoute(
          name: VideoP1Widget.routeName,
          path: VideoP1Widget.routePath,
          builder: (context, params) => VideoP1Widget(),
        ),
        FFRoute(
          name: QuizP1Widget.routeName,
          path: QuizP1Widget.routePath,
          builder: (context, params) => QuizP1Widget(),
        ),
        FFRoute(
          name: AnswersP1Widget.routeName,
          path: AnswersP1Widget.routePath,
          builder: (context, params) => AnswersP1Widget(),
        ),
        FFRoute(
          name: VideoP2Widget.routeName,
          path: VideoP2Widget.routePath,
          builder: (context, params) => VideoP2Widget(),
        ),
        FFRoute(
          name: QuizP2Widget.routeName,
          path: QuizP2Widget.routePath,
          builder: (context, params) => QuizP2Widget(),
        ),
        FFRoute(
          name: AnswersP2Widget.routeName,
          path: AnswersP2Widget.routePath,
          builder: (context, params) => AnswersP2Widget(),
        ),
        FFRoute(
          name: TaskPWidget.routeName,
          path: TaskPWidget.routePath,
          builder: (context, params) => TaskPWidget(),
        ),
        FFRoute(
          name: SuccessPWidget.routeName,
          path: SuccessPWidget.routePath,
          builder: (context, params) => SuccessPWidget(),
        ),
        FFRoute(
          name: Cursspagina6GardeningWidget.routeName,
          path: Cursspagina6GardeningWidget.routePath,
          builder: (context, params) => Cursspagina6GardeningWidget(),
        ),
        FFRoute(
          name: VideoGARD1Widget.routeName,
          path: VideoGARD1Widget.routePath,
          builder: (context, params) => VideoGARD1Widget(),
        ),
        FFRoute(
          name: AnswersGARD1Widget.routeName,
          path: AnswersGARD1Widget.routePath,
          builder: (context, params) => AnswersGARD1Widget(),
        ),
        FFRoute(
          name: QuizGARD1Widget.routeName,
          path: QuizGARD1Widget.routePath,
          builder: (context, params) => QuizGARD1Widget(),
        ),
        FFRoute(
          name: VideoGARD2Widget.routeName,
          path: VideoGARD2Widget.routePath,
          builder: (context, params) => VideoGARD2Widget(),
        ),
        FFRoute(
          name: QuizGARD2Widget.routeName,
          path: QuizGARD2Widget.routePath,
          builder: (context, params) => QuizGARD2Widget(),
        ),
        FFRoute(
          name: AnswersGARD2Widget.routeName,
          path: AnswersGARD2Widget.routePath,
          builder: (context, params) => AnswersGARD2Widget(),
        ),
        FFRoute(
          name: VideoGARD3Widget.routeName,
          path: VideoGARD3Widget.routePath,
          builder: (context, params) => VideoGARD3Widget(),
        ),
        FFRoute(
          name: QuizGARD3Widget.routeName,
          path: QuizGARD3Widget.routePath,
          builder: (context, params) => QuizGARD3Widget(),
        ),
        FFRoute(
          name: AnswersGARD3Widget.routeName,
          path: AnswersGARD3Widget.routePath,
          builder: (context, params) => AnswersGARD3Widget(),
        ),
        FFRoute(
          name: TaskGARDWidget.routeName,
          path: TaskGARDWidget.routePath,
          builder: (context, params) => TaskGARDWidget(),
        ),
        FFRoute(
          name: SuccesGARDWidget.routeName,
          path: SuccesGARDWidget.routePath,
          builder: (context, params) => SuccesGARDWidget(),
        ),
        FFRoute(
          name: VideoGARD4Widget.routeName,
          path: VideoGARD4Widget.routePath,
          builder: (context, params) => VideoGARD4Widget(),
        ),
        FFRoute(
          name: Cursspagina7ArcheryWidget.routeName,
          path: Cursspagina7ArcheryWidget.routePath,
          builder: (context, params) => Cursspagina7ArcheryWidget(),
        ),
        FFRoute(
          name: VideoA1Widget.routeName,
          path: VideoA1Widget.routePath,
          builder: (context, params) => VideoA1Widget(),
        ),
        FFRoute(
          name: Archery1Widget.routeName,
          path: Archery1Widget.routePath,
          builder: (context, params) => Archery1Widget(),
        ),
        FFRoute(
          name: QuizA1Widget.routeName,
          path: QuizA1Widget.routePath,
          builder: (context, params) => QuizA1Widget(),
        ),
        FFRoute(
          name: AnswersA1Widget.routeName,
          path: AnswersA1Widget.routePath,
          builder: (context, params) => AnswersA1Widget(),
        ),
        FFRoute(
          name: TaskAWidget.routeName,
          path: TaskAWidget.routePath,
          builder: (context, params) => TaskAWidget(),
        ),
        FFRoute(
          name: SuccesAWidget.routeName,
          path: SuccesAWidget.routePath,
          builder: (context, params) => SuccesAWidget(),
        ),
        FFRoute(
          name: Cursspagina8FishingWidget.routeName,
          path: Cursspagina8FishingWidget.routePath,
          builder: (context, params) => Cursspagina8FishingWidget(),
        ),
        FFRoute(
          name: VideoF1Widget.routeName,
          path: VideoF1Widget.routePath,
          builder: (context, params) => VideoF1Widget(),
        ),
        FFRoute(
          name: QuizF1Widget.routeName,
          path: QuizF1Widget.routePath,
          builder: (context, params) => QuizF1Widget(),
        ),
        FFRoute(
          name: AnswersF1Widget.routeName,
          path: AnswersF1Widget.routePath,
          builder: (context, params) => AnswersF1Widget(),
        ),
        FFRoute(
          name: TaskFWidget.routeName,
          path: TaskFWidget.routePath,
          builder: (context, params) => TaskFWidget(),
        ),
        FFRoute(
          name: SuccesFWidget.routeName,
          path: SuccesFWidget.routePath,
          builder: (context, params) => SuccesFWidget(),
        ),
        FFRoute(
          name: Cursspagina9ChessWidget.routeName,
          path: Cursspagina9ChessWidget.routePath,
          builder: (context, params) => Cursspagina9ChessWidget(),
        ),
        FFRoute(
          name: VideoCHS1Widget.routeName,
          path: VideoCHS1Widget.routePath,
          builder: (context, params) => VideoCHS1Widget(),
        ),
        FFRoute(
          name: QuizCHS1Widget.routeName,
          path: QuizCHS1Widget.routePath,
          builder: (context, params) => QuizCHS1Widget(),
        ),
        FFRoute(
          name: AnswersCHS1Widget.routeName,
          path: AnswersCHS1Widget.routePath,
          builder: (context, params) => AnswersCHS1Widget(),
        ),
        FFRoute(
          name: VideoCHS2Widget.routeName,
          path: VideoCHS2Widget.routePath,
          builder: (context, params) => VideoCHS2Widget(),
        ),
        FFRoute(
          name: QuizCHS2Widget.routeName,
          path: QuizCHS2Widget.routePath,
          builder: (context, params) => QuizCHS2Widget(),
        ),
        FFRoute(
          name: AnswersCHS2Widget.routeName,
          path: AnswersCHS2Widget.routePath,
          builder: (context, params) => AnswersCHS2Widget(),
        ),
        FFRoute(
          name: TaskCHSWidget.routeName,
          path: TaskCHSWidget.routePath,
          builder: (context, params) => TaskCHSWidget(),
        ),
        FFRoute(
          name: SuccesCHSWidget.routeName,
          path: SuccesCHSWidget.routePath,
          builder: (context, params) => SuccesCHSWidget(),
        ),
        FFRoute(
          name: Cursspagina10CampingWidget.routeName,
          path: Cursspagina10CampingWidget.routePath,
          builder: (context, params) => Cursspagina10CampingWidget(),
        ),
        FFRoute(
          name: VideoCAMP1Widget.routeName,
          path: VideoCAMP1Widget.routePath,
          builder: (context, params) => VideoCAMP1Widget(),
        ),
        FFRoute(
          name: VideoCAMP2Widget.routeName,
          path: VideoCAMP2Widget.routePath,
          builder: (context, params) => VideoCAMP2Widget(),
        ),
        FFRoute(
          name: QuizE1Widget.routeName,
          path: QuizE1Widget.routePath,
          builder: (context, params) => QuizE1Widget(),
        ),
        FFRoute(
          name: AnswersCAMP1Widget.routeName,
          path: AnswersCAMP1Widget.routePath,
          builder: (context, params) => AnswersCAMP1Widget(),
        ),
        FFRoute(
          name: SuccesCAMPWidget.routeName,
          path: SuccesCAMPWidget.routePath,
          builder: (context, params) => SuccesCAMPWidget(),
        ),
        FFRoute(
          name: CalendarTaskWidget.routeName,
          path: CalendarTaskWidget.routePath,
          builder: (context, params) => CalendarTaskWidget(),
        ),
        FFRoute(
          name: SearchWidget.routeName,
          path: SearchWidget.routePath,
          builder: (context, params) => SearchWidget(),
        ),
        FFRoute(
          name: TosprivacyWidget.routeName,
          path: TosprivacyWidget.routePath,
          builder: (context, params) => TosprivacyWidget(),
        ),
        FFRoute(
          name: FlashCardsWidget.routeName,
          path: FlashCardsWidget.routePath,
          builder: (context, params) => FlashCardsWidget(),
        ),
        FFRoute(
          name: FlashScrisWidget.routeName,
          path: FlashScrisWidget.routePath,
          builder: (context, params) => FlashScrisWidget(),
        ),
        FFRoute(
          name: FlashScrisAnswersWidget.routeName,
          path: FlashScrisAnswersWidget.routePath,
          builder: (context, params) => FlashScrisAnswersWidget(),
        ),
        FFRoute(
          name: DragAnswersWidget.routeName,
          path: DragAnswersWidget.routePath,
          builder: (context, params) => DragAnswersWidget(),
        ),
        FFRoute(
          name: Drag1Widget.routeName,
          path: Drag1Widget.routePath,
          builder: (context, params) => Drag1Widget(),
        ),
        FFRoute(
          name: ClubsWidget.routeName,
          path: ClubsWidget.routePath,
          builder: (context, params) => ClubsWidget(),
        ),
        FFRoute(
          name: MotivationWidget.routeName,
          path: MotivationWidget.routePath,
          builder: (context, params) => MotivationWidget(),
        ),
        FFRoute(
          name: RutinaWidget.routeName,
          path: RutinaWidget.routePath,
          builder: (context, params) => RutinaWidget(),
        ),
        FFRoute(
          name: ChatsWidget.routeName,
          path: ChatsWidget.routePath,
          builder: (context, params) => ChatsWidget(
            receivechat: params.getParam(
              'receivechat',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['chats'],
            ),
          ),
        ),
        FFRoute(
          name: HealthWidget.routeName,
          path: HealthWidget.routePath,
          builder: (context, params) => HealthWidget(),
        ),
        FFRoute(
          name: HealthChartWidget.routeName,
          path: HealthChartWidget.routePath,
          builder: (context, params) => HealthChartWidget(),
        ),
        FFRoute(
          name: Setari2Widget.routeName,
          path: Setari2Widget.routePath,
          builder: (context, params) => Setari2Widget(),
        ),
        FFRoute(
          name: Setari3Widget.routeName,
          path: Setari3Widget.routePath,
          builder: (context, params) => Setari3Widget(),
        ),
        FFRoute(
          name: Cursspagina11EditingWidget.routeName,
          path: Cursspagina11EditingWidget.routePath,
          builder: (context, params) => Cursspagina11EditingWidget(),
        ),
        FFRoute(
          name: VideoE1Widget.routeName,
          path: VideoE1Widget.routePath,
          builder: (context, params) => VideoE1Widget(),
        ),
        FFRoute(
          name: QuizCAMP1Widget.routeName,
          path: QuizCAMP1Widget.routePath,
          builder: (context, params) => QuizCAMP1Widget(),
        ),
        FFRoute(
          name: AnswersE1Widget.routeName,
          path: AnswersE1Widget.routePath,
          builder: (context, params) => AnswersE1Widget(),
        ),
        FFRoute(
          name: FlashCardsE1Widget.routeName,
          path: FlashCardsE1Widget.routePath,
          builder: (context, params) => FlashCardsE1Widget(),
        ),
        FFRoute(
          name: VideoE2Widget.routeName,
          path: VideoE2Widget.routePath,
          builder: (context, params) => VideoE2Widget(),
        ),
        FFRoute(
          name: QuizE2Widget.routeName,
          path: QuizE2Widget.routePath,
          builder: (context, params) => QuizE2Widget(),
        ),
        FFRoute(
          name: AnswersE2Widget.routeName,
          path: AnswersE2Widget.routePath,
          builder: (context, params) => AnswersE2Widget(),
        ),
        FFRoute(
          name: FlashScrisEWidget.routeName,
          path: FlashScrisEWidget.routePath,
          builder: (context, params) => FlashScrisEWidget(),
        ),
        FFRoute(
          name: FlashScrisAnswersE1Widget.routeName,
          path: FlashScrisAnswersE1Widget.routePath,
          builder: (context, params) => FlashScrisAnswersE1Widget(),
        ),
        FFRoute(
          name: VideoE3Widget.routeName,
          path: VideoE3Widget.routePath,
          builder: (context, params) => VideoE3Widget(),
        ),
        FFRoute(
          name: QuizE3Widget.routeName,
          path: QuizE3Widget.routePath,
          builder: (context, params) => QuizE3Widget(),
        ),
        FFRoute(
          name: AnswersE3Widget.routeName,
          path: AnswersE3Widget.routePath,
          builder: (context, params) => AnswersE3Widget(),
        ),
        FFRoute(
          name: VideoE4Widget.routeName,
          path: VideoE4Widget.routePath,
          builder: (context, params) => VideoE4Widget(),
        ),
        FFRoute(
          name: FlashCardsE2Widget.routeName,
          path: FlashCardsE2Widget.routePath,
          builder: (context, params) => FlashCardsE2Widget(),
        ),
        FFRoute(
          name: QuizE4Widget.routeName,
          path: QuizE4Widget.routePath,
          builder: (context, params) => QuizE4Widget(),
        ),
        FFRoute(
          name: AnswersE4Widget.routeName,
          path: AnswersE4Widget.routePath,
          builder: (context, params) => AnswersE4Widget(),
        ),
        FFRoute(
          name: TaskEWidget.routeName,
          path: TaskEWidget.routePath,
          builder: (context, params) => TaskEWidget(),
        ),
        FFRoute(
          name: SuccesEWidget.routeName,
          path: SuccesEWidget.routePath,
          builder: (context, params) => SuccesEWidget(),
        ),
        FFRoute(
          name: Cursspagina12DProjectionWidget.routeName,
          path: Cursspagina12DProjectionWidget.routePath,
          builder: (context, params) => Cursspagina12DProjectionWidget(),
        ),
        FFRoute(
          name: Video12D1Widget.routeName,
          path: Video12D1Widget.routePath,
          builder: (context, params) => Video12D1Widget(),
        ),
        FFRoute(
          name: Quiz12D1Widget.routeName,
          path: Quiz12D1Widget.routePath,
          builder: (context, params) => Quiz12D1Widget(),
        ),
        FFRoute(
          name: Answers12D1Widget.routeName,
          path: Answers12D1Widget.routePath,
          builder: (context, params) => Answers12D1Widget(),
        ),
        FFRoute(
          name: Video12D2Widget.routeName,
          path: Video12D2Widget.routePath,
          builder: (context, params) => Video12D2Widget(),
        ),
        FFRoute(
          name: FlashScris12D1Widget.routeName,
          path: FlashScris12D1Widget.routePath,
          builder: (context, params) => FlashScris12D1Widget(),
        ),
        FFRoute(
          name: FlashScrisAnswers12D1Widget.routeName,
          path: FlashScrisAnswers12D1Widget.routePath,
          builder: (context, params) => FlashScrisAnswers12D1Widget(),
        ),
        FFRoute(
          name: Video12D3Widget.routeName,
          path: Video12D3Widget.routePath,
          builder: (context, params) => Video12D3Widget(),
        ),
        FFRoute(
          name: Drag12DWidget.routeName,
          path: Drag12DWidget.routePath,
          builder: (context, params) => Drag12DWidget(),
        ),
        FFRoute(
          name: DragAnswers12DWidget.routeName,
          path: DragAnswers12DWidget.routePath,
          builder: (context, params) => DragAnswers12DWidget(),
        ),
        FFRoute(
          name: Video12D4Widget.routeName,
          path: Video12D4Widget.routePath,
          builder: (context, params) => Video12D4Widget(),
        ),
        FFRoute(
          name: Quiz12D2Widget.routeName,
          path: Quiz12D2Widget.routePath,
          builder: (context, params) => Quiz12D2Widget(),
        ),
        FFRoute(
          name: Answers12D2Widget.routeName,
          path: Answers12D2Widget.routePath,
          builder: (context, params) => Answers12D2Widget(),
        ),
        FFRoute(
          name: Video12D5Widget.routeName,
          path: Video12D5Widget.routePath,
          builder: (context, params) => Video12D5Widget(),
        ),
        FFRoute(
          name: FlashCards12DWidget.routeName,
          path: FlashCards12DWidget.routePath,
          builder: (context, params) => FlashCards12DWidget(),
        ),
        FFRoute(
          name: Video12D6Widget.routeName,
          path: Video12D6Widget.routePath,
          builder: (context, params) => Video12D6Widget(),
        ),
        FFRoute(
          name: FlashScris12D2Widget.routeName,
          path: FlashScris12D2Widget.routePath,
          builder: (context, params) => FlashScris12D2Widget(),
        ),
        FFRoute(
          name: FlashScrisAnswers12D2Widget.routeName,
          path: FlashScrisAnswers12D2Widget.routePath,
          builder: (context, params) => FlashScrisAnswers12D2Widget(),
        ),
        FFRoute(
          name: Task12DWidget.routeName,
          path: Task12DWidget.routePath,
          builder: (context, params) => Task12DWidget(),
        ),
        FFRoute(
          name: Graduation12DWidget.routeName,
          path: Graduation12DWidget.routePath,
          builder: (context, params) => Graduation12DWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/auth1';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
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
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
