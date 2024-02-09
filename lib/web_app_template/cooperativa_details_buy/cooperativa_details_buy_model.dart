import '/flutter_flow/flutter_flow_util.dart';
import '/web_app_template/menu/menu_widget.dart';
import 'cooperativa_details_buy_widget.dart' show CooperativaDetailsBuyWidget;
import 'package:flutter/material.dart';

class CooperativaDetailsBuyModel
    extends FlutterFlowModel<CooperativaDetailsBuyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Menu component.
  late MenuModel menuModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
