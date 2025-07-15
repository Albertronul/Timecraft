import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'video3_widget.dart' show Video3Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class Video3Model extends FlutterFlowModel<Video3Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    expandableExpandableController.dispose();
  }
}
