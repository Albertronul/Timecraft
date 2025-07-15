import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'video_c1_widget.dart' show VideoC1Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class VideoC1Model extends FlutterFlowModel<VideoC1Widget> {
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
