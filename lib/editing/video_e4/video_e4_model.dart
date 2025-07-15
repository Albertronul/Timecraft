import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'video_e4_widget.dart' show VideoE4Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class VideoE4Model extends FlutterFlowModel<VideoE4Widget> {
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
