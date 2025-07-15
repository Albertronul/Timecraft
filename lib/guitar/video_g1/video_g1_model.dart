import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'video_g1_widget.dart' show VideoG1Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class VideoG1Model extends FlutterFlowModel<VideoG1Widget> {
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
