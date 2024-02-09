import '/flutter_flow/flutter_flow_util.dart';
import 'transporte_widget.dart' show TransporteWidget;
import 'package:flutter/material.dart';

class TransporteModel extends FlutterFlowModel<TransporteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TransporteSafra1 widget.
  FocusNode? transporteSafra1FocusNode;
  TextEditingController? transporteSafra1Controller;
  String? Function(BuildContext, String?)? transporteSafra1ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    transporteSafra1FocusNode?.dispose();
    transporteSafra1Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
