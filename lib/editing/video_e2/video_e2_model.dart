import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'video_e2_widget.dart' show VideoE2Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class VideoE2Model extends FlutterFlowModel<VideoE2Widget> {
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
