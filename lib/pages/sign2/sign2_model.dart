import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'sign2_widget.dart' show Sign2Widget;
import 'package:flutter/material.dart';

class Sign2Model extends FlutterFlowModel<Sign2Widget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataIpw = false;
  FFUploadedFile uploadedLocalFile_uploadDataIpw =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataIpw = '';

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode1;
  TextEditingController? yourNameTextController1;
  String? Function(BuildContext, String?)? yourNameTextController1Validator;
  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode2;
  TextEditingController? yourNameTextController2;
  String? Function(BuildContext, String?)? yourNameTextController2Validator;
  // State field(s) for Age widget.
  FocusNode? ageFocusNode;
  TextEditingController? ageTextController;
  String? Function(BuildContext, String?)? ageTextControllerValidator;
  // State field(s) for myBio widget.
  FocusNode? myBioFocusNode;
  TextEditingController? myBioTextController;
  String? Function(BuildContext, String?)? myBioTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode1?.dispose();
    yourNameTextController1?.dispose();

    yourNameFocusNode2?.dispose();
    yourNameTextController2?.dispose();

    ageFocusNode?.dispose();
    ageTextController?.dispose();

    myBioFocusNode?.dispose();
    myBioTextController?.dispose();
  }
}
