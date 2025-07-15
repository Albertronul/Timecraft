import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'video_g2_widget.dart' show VideoG2Widget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class VideoG2Model extends FlutterFlowModel<VideoG2Widget> {
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
