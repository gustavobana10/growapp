import '/components/tipo_safra_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/web_app_template/menu/menu_widget.dart';
import 'perfil_widget.dart' show PerfilWidget;
import 'package:flutter/material.dart';

class PerfilModel extends FlutterFlowModel<PerfilWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey3 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for Menu component.
  late MenuModel menuModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // Model for tipoSafra component.
  late TipoSafraModel tipoSafraModel1;
  // State field(s) for ProdcaoSafra1 widget.
  FocusNode? prodcaoSafra1FocusNode;
  TextEditingController? prodcaoSafra1Controller;
  String? Function(BuildContext, String?)? prodcaoSafra1ControllerValidator;
  String? _prodcaoSafra1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    return null;
  }

  // State field(s) for AreaSafra1 widget.
  FocusNode? areaSafra1FocusNode1;
  TextEditingController? areaSafra1Controller1;
  String? Function(BuildContext, String?)? areaSafra1Controller1Validator;
  String? _areaSafra1Controller1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    return null;
  }

  // State field(s) for ProdutividadeSafra1 widget.
  FocusNode? produtividadeSafra1FocusNode;
  TextEditingController? produtividadeSafra1Controller;
  String? Function(BuildContext, String?)?
      produtividadeSafra1ControllerValidator;
  String? _produtividadeSafra1ControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    return null;
  }

  // State field(s) for TransporteSafra1 widget.
  FocusNode? transporteSafra1FocusNode;
  TextEditingController? transporteSafra1Controller;
  String? Function(BuildContext, String?)? transporteSafra1ControllerValidator;
  String? _transporteSafra1ControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    return null;
  }

  // Model for tipoSafra component.
  late TipoSafraModel tipoSafraModel2;
  // State field(s) for ProdcaoSafra2 widget.
  FocusNode? prodcaoSafra2FocusNode;
  TextEditingController? prodcaoSafra2Controller;
  String? Function(BuildContext, String?)? prodcaoSafra2ControllerValidator;
  String? _prodcaoSafra2ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    return null;
  }

  // State field(s) for AreaSafra1 widget.
  FocusNode? areaSafra1FocusNode2;
  TextEditingController? areaSafra1Controller2;
  String? Function(BuildContext, String?)? areaSafra1Controller2Validator;
  String? _areaSafra1Controller2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    return null;
  }

  // State field(s) for ProdutividadeSafra2 widget.
  FocusNode? produtividadeSafra2FocusNode;
  TextEditingController? produtividadeSafra2Controller;
  String? Function(BuildContext, String?)?
      produtividadeSafra2ControllerValidator;
  String? _produtividadeSafra2ControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    return null;
  }

  // State field(s) for TransporteSafra2 widget.
  FocusNode? transporteSafra2FocusNode;
  TextEditingController? transporteSafra2Controller;
  String? Function(BuildContext, String?)? transporteSafra2ControllerValidator;
  String? _transporteSafra2ControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    return null;
  }

  // Model for tipoSafra component.
  late TipoSafraModel tipoSafraModel3;
  // State field(s) for ProdcaoSafra3 widget.
  FocusNode? prodcaoSafra3FocusNode;
  TextEditingController? prodcaoSafra3Controller;
  String? Function(BuildContext, String?)? prodcaoSafra3ControllerValidator;
  String? _prodcaoSafra3ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    return null;
  }

  // State field(s) for AreaSafra1 widget.
  FocusNode? areaSafra1FocusNode3;
  TextEditingController? areaSafra1Controller3;
  String? Function(BuildContext, String?)? areaSafra1Controller3Validator;
  String? _areaSafra1Controller3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    return null;
  }

  // State field(s) for ProdutividadeSafra3 widget.
  FocusNode? produtividadeSafra3FocusNode;
  TextEditingController? produtividadeSafra3Controller;
  String? Function(BuildContext, String?)?
      produtividadeSafra3ControllerValidator;
  String? _produtividadeSafra3ControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    return null;
  }

  // State field(s) for TransporteSafra3 widget.
  FocusNode? transporteSafra3FocusNode;
  TextEditingController? transporteSafra3Controller;
  String? Function(BuildContext, String?)? transporteSafra3ControllerValidator;
  String? _transporteSafra3ControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório ';
    }

    return null;
  }

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
    tipoSafraModel1 = createModel(context, () => TipoSafraModel());
    prodcaoSafra1ControllerValidator = _prodcaoSafra1ControllerValidator;
    areaSafra1Controller1Validator = _areaSafra1Controller1Validator;
    produtividadeSafra1ControllerValidator =
        _produtividadeSafra1ControllerValidator;
    transporteSafra1ControllerValidator = _transporteSafra1ControllerValidator;
    tipoSafraModel2 = createModel(context, () => TipoSafraModel());
    prodcaoSafra2ControllerValidator = _prodcaoSafra2ControllerValidator;
    areaSafra1Controller2Validator = _areaSafra1Controller2Validator;
    produtividadeSafra2ControllerValidator =
        _produtividadeSafra2ControllerValidator;
    transporteSafra2ControllerValidator = _transporteSafra2ControllerValidator;
    tipoSafraModel3 = createModel(context, () => TipoSafraModel());
    prodcaoSafra3ControllerValidator = _prodcaoSafra3ControllerValidator;
    areaSafra1Controller3Validator = _areaSafra1Controller3Validator;
    produtividadeSafra3ControllerValidator =
        _produtividadeSafra3ControllerValidator;
    transporteSafra3ControllerValidator = _transporteSafra3ControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuModel.dispose();
    tipoSafraModel1.dispose();
    prodcaoSafra1FocusNode?.dispose();
    prodcaoSafra1Controller?.dispose();

    areaSafra1FocusNode1?.dispose();
    areaSafra1Controller1?.dispose();

    produtividadeSafra1FocusNode?.dispose();
    produtividadeSafra1Controller?.dispose();

    transporteSafra1FocusNode?.dispose();
    transporteSafra1Controller?.dispose();

    tipoSafraModel2.dispose();
    prodcaoSafra2FocusNode?.dispose();
    prodcaoSafra2Controller?.dispose();

    areaSafra1FocusNode2?.dispose();
    areaSafra1Controller2?.dispose();

    produtividadeSafra2FocusNode?.dispose();
    produtividadeSafra2Controller?.dispose();

    transporteSafra2FocusNode?.dispose();
    transporteSafra2Controller?.dispose();

    tipoSafraModel3.dispose();
    prodcaoSafra3FocusNode?.dispose();
    prodcaoSafra3Controller?.dispose();

    areaSafra1FocusNode3?.dispose();
    areaSafra1Controller3?.dispose();

    produtividadeSafra3FocusNode?.dispose();
    produtividadeSafra3Controller?.dispose();

    transporteSafra3FocusNode?.dispose();
    transporteSafra3Controller?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
