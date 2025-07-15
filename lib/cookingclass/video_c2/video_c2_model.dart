import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'video_c2_widget.dart' show VideoC2Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class VideoC2Model extends FlutterFlowModel<VideoC2Widget> {
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
