import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'rutina_widget.dart' show RutinaWidget;
import 'package:flutter/material.dart';

class RutinaModel extends FlutterFlowModel<RutinaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Checkbox widget.
  Map<RutinaRecord, bool> checkboxValueMap = {};
  List<RutinaRecord> get checkboxCheckedItems =>
      checkboxValueMap.entries.where((e) => e.value).map((e) => e.key).toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
