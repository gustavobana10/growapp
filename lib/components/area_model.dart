import '/flutter_flow/flutter_flow_util.dart';
import 'area_widget.dart' show AreaWidget;
import 'package:flutter/material.dart';

class AreaModel extends FlutterFlowModel<AreaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for AreaSafra1 widget.
  FocusNode? areaSafra1FocusNode;
  TextEditingController? areaSafra1Controller;
  String? Function(BuildContext, String?)? areaSafra1ControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    areaSafra1FocusNode?.dispose();
    areaSafra1Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
