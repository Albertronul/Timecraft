import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'video_a1_widget.dart' show VideoA1Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class VideoA1Model extends FlutterFlowModel<VideoA1Widget> {
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
