import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'land_page_widget.dart' show LandPageWidget;
import 'package:flutter/material.dart';

class LandPageModel extends FlutterFlowModel<LandPageWidget> {
  ///  Local state fields for this page.

  int? oportunidades = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
