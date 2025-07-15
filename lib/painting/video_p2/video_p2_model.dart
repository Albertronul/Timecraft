import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'video_p2_widget.dart' show VideoP2Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class VideoP2Model extends FlutterFlowModel<VideoP2Widget> {
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
