import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_a_i_widget.dart' show ChatAIWidget;
import 'package:flutter/material.dart';

class ChatAIModel extends FlutterFlowModel<ChatAIWidget> {
  ///  Local state fields for this page.

  List<ChatStruct> chats = [];
  void addToChats(ChatStruct item) => chats.add(item);
  void removeFromChats(ChatStruct item) => chats.remove(item);
  void removeAtIndexFromChats(int index) => chats.removeAt(index);
  void insertAtIndexInChats(int index, ChatStruct item) =>
      chats.insert(index, item);
  void updateChatsAtIndex(int index, Function(ChatStruct) updateFn) =>
      chats[index] = updateFn(chats[index]);

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [AI Agent - Send Message to Timey] action in Button widget.
  String? agentResponse;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
