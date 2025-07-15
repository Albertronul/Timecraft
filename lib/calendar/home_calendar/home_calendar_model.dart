import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_calendar_widget.dart' show HomeCalendarWidget;
import 'package:flutter/material.dart';

class HomeCalendarModel extends FlutterFlowModel<HomeCalendarWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay1;
  // State field(s) for Checkbox widget.
  Map<TasksRecord, bool> checkboxValueMap1 = {};
  List<TasksRecord> get checkboxCheckedItems1 => checkboxValueMap1.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay2;
  // State field(s) for Checkbox widget.
  Map<TasksRecord, bool> checkboxValueMap2 = {};
  List<TasksRecord> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  @override
  void initState(BuildContext context) {
    calendarSelectedDay1 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
    calendarSelectedDay2 = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
