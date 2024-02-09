import '/flutter_flow/flutter_flow_util.dart';
import 'produtividade_widget.dart' show ProdutividadeWidget;
import 'package:flutter/material.dart';

class ProdutividadeModel extends FlutterFlowModel<ProdutividadeWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ProdcaoSafra1 widget.
  FocusNode? prodcaoSafra1FocusNode;
  TextEditingController? prodcaoSafra1Controller;
  String? Function(BuildContext, String?)? prodcaoSafra1ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    prodcaoSafra1FocusNode?.dispose();
    prodcaoSafra1Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
