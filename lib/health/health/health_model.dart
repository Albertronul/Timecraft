import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'health_widget.dart' show HealthWidget;
import 'package:flutter/material.dart';

class HealthModel extends FlutterFlowModel<HealthWidget> {
  ///  Local state fields for this page.

  FFUploadedFile? uploadedimage;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadImage = false;
  FFUploadedFile uploadedLocalFile_uploadImage =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [AI Agent - Send Message to FoodCamera] action in FloatingActionButton widget.
  Map<String, dynamic>? foodCameraOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
