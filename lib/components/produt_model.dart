import '/flutter_flow/flutter_flow_util.dart';
import 'produt_widget.dart' show ProdutWidget;
import 'package:flutter/material.dart';

class ProdutModel extends FlutterFlowModel<ProdutWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ProdutividadeSafra1 widget.
  FocusNode? produtividadeSafra1FocusNode;
  TextEditingController? produtividadeSafra1Controller;
  String? Function(BuildContext, String?)?
      produtividadeSafra1ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    produtividadeSafra1FocusNode?.dispose();
    produtividadeSafra1Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
