import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/tipo_safra_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/web_app_template/menu/menu_widget.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'perfil_model.dart';
export 'perfil_model.dart';

class PerfilWidget extends StatefulWidget {
  const PerfilWidget({super.key});

  @override
  State<PerfilWidget> createState() => _PerfilWidgetState();
}

class _PerfilWidgetState extends State<PerfilWidget> {
  late PerfilModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PerfilModel());

    _model.prodcaoSafra1Controller ??= TextEditingController(
        text: (currentUserDocument?.listaSafra.toList() ?? [])
            .first
            .producao
            .toString());
    _model.prodcaoSafra1FocusNode ??= FocusNode();

    _model.areaSafra1Controller1 ??= TextEditingController(
        text: (currentUserDocument?.listaSafra.toList() ?? [])
            .first
            .areaCultivada
            .toString());
    _model.areaSafra1FocusNode1 ??= FocusNode();

    _model.produtividadeSafra1Controller ??= TextEditingController(
        text: (currentUserDocument?.listaSafra.toList() ?? [])
            .first
            .produtividade
            .toString());
    _model.produtividadeSafra1FocusNode ??= FocusNode();

    _model.transporteSafra1Controller ??= TextEditingController(
        text: (currentUserDocument?.listaSafra.toList() ?? [])
            .first
            .transporte
            .toString());
    _model.transporteSafra1FocusNode ??= FocusNode();

    _model.prodcaoSafra2Controller ??= TextEditingController(
        text: (currentUserDocument?.listaSafra.toList() ?? [])[1]
            .producao
            .toString());
    _model.prodcaoSafra2FocusNode ??= FocusNode();

    _model.areaSafra1Controller2 ??= TextEditingController(
        text: (currentUserDocument?.listaSafra.toList() ?? [])[1]
            .areaCultivada
            .toString());
    _model.areaSafra1FocusNode2 ??= FocusNode();

    _model.produtividadeSafra2Controller ??= TextEditingController(
        text: (currentUserDocument?.listaSafra.toList() ?? [])[1]
            .produtividade
            .toString());
    _model.produtividadeSafra2FocusNode ??= FocusNode();

    _model.transporteSafra2Controller ??= TextEditingController(
        text: (currentUserDocument?.listaSafra.toList() ?? [])[1]
            .transporte
            .toString());
    _model.transporteSafra2FocusNode ??= FocusNode();

    _model.prodcaoSafra3Controller ??= TextEditingController(
        text: (currentUserDocument?.listaSafra.toList() ?? [])[1]
            .producao
            .toString());
    _model.prodcaoSafra3FocusNode ??= FocusNode();

    _model.areaSafra1Controller3 ??= TextEditingController(
        text: (currentUserDocument?.listaSafra.toList() ?? [])
            .last
            .areaCultivada
            .toString());
    _model.areaSafra1FocusNode3 ??= FocusNode();

    _model.produtividadeSafra3Controller ??= TextEditingController(
        text: (currentUserDocument?.listaSafra.toList() ?? [])
            .last
            .produtividade
            .toString());
    _model.produtividadeSafra3FocusNode ??= FocusNode();

    _model.transporteSafra3Controller ??= TextEditingController(
        text: (currentUserDocument?.listaSafra.toList() ?? [])
            .last
            .transporte
            .toString());
    _model.transporteSafra3FocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.menuModel,
                updateCallback: () => setState(() {}),
                updateOnChange: true,
                child: const MenuWidget(
                  selectedNav: 0,
                ),
              ),
              Expanded(
                child: Align(
                  alignment: const AlignmentDirectional(-1.0, -1.0),
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          16.0, 24.0, 16.0, 24.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 4.0),
                                  child: Text(
                                    'Perfil',
                                    style: FlutterFlowTheme.of(context)
                                        .headlineMedium,
                                  ),
                                ),
                                if (responsiveVisibility(
                                  context: context,
                                  tablet: false,
                                  tabletLandscape: false,
                                  desktop: false,
                                ))
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 0.0, 0.0),
                                    child: InkWell(
                                      splashColor: Colors.transparent,
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () async {
                                        GoRouter.of(context).prepareAuthEvent();
                                        await authManager.signOut();
                                        GoRouter.of(context)
                                            .clearRedirectLocation();

                                        context.goNamedAuth(
                                            'LandPage', context.mounted);
                                      },
                                      child: Icon(
                                        Icons.logout_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 24.0,
                                      ),
                                    ),
                                  ),
                                FFButtonWidget(
                                  onPressed: () async {
                                    if ((currentUserDocument?.listaSafra
                                                    .toList() ??
                                                [])
                                            .length ==
                                        1) {
                                      await currentUserReference!.update({
                                        ...mapToFirestore(
                                          {
                                            'listaSafra':
                                                FieldValue.arrayUnion([
                                              getSafraFirestoreData(
                                                updateSafraStruct(
                                                  SafraStruct(
                                                    tipo: _model.tipoSafraModel1
                                                        .dropDownValue,
                                                    producao: double.tryParse(_model
                                                        .prodcaoSafra1Controller
                                                        .text),
                                                    produtividade:
                                                        double.tryParse(_model
                                                            .produtividadeSafra1Controller
                                                            .text),
                                                    transporte: double.tryParse(
                                                        _model
                                                            .transporteSafra1Controller
                                                            .text),
                                                    areaCultivada:
                                                        double.tryParse(_model
                                                            .areaSafra1Controller1
                                                            .text),
                                                  ),
                                                  clearUnsetFields: false,
                                                ),
                                                true,
                                              )
                                            ]),
                                          },
                                        ),
                                      });
                                    } else {
                                      if ((currentUserDocument?.listaSafra
                                                      .toList() ??
                                                  [])
                                              .length ==
                                          2) {
                                        await currentUserReference!.update({
                                          ...mapToFirestore(
                                            {
                                              'listaSafra':
                                                  FieldValue.arrayUnion([
                                                getSafraFirestoreData(
                                                  updateSafraStruct(
                                                    SafraStruct(
                                                      tipo: _model
                                                          .tipoSafraModel1
                                                          .dropDownValue,
                                                      producao: double.tryParse(
                                                          _model
                                                              .prodcaoSafra1Controller
                                                              .text),
                                                      produtividade:
                                                          double.tryParse(_model
                                                              .produtividadeSafra1Controller
                                                              .text),
                                                      transporte:
                                                          double.tryParse(_model
                                                              .transporteSafra1Controller
                                                              .text),
                                                      areaCultivada:
                                                          double.tryParse(_model
                                                              .areaSafra1Controller1
                                                              .text),
                                                    ),
                                                    clearUnsetFields: false,
                                                  ),
                                                  true,
                                                )
                                              ]),
                                            },
                                          ),
                                        });

                                        await currentUserReference!.update({
                                          ...mapToFirestore(
                                            {
                                              'listaSafra':
                                                  FieldValue.arrayUnion([
                                                getSafraFirestoreData(
                                                  updateSafraStruct(
                                                    SafraStruct(
                                                      tipo: _model
                                                          .tipoSafraModel2
                                                          .dropDownValue,
                                                      producao: double.tryParse(
                                                          _model
                                                              .prodcaoSafra2Controller
                                                              .text),
                                                      produtividade:
                                                          double.tryParse(_model
                                                              .produtividadeSafra2Controller
                                                              .text),
                                                      transporte:
                                                          double.tryParse(_model
                                                              .transporteSafra2Controller
                                                              .text),
                                                      areaCultivada:
                                                          double.tryParse(_model
                                                              .areaSafra1Controller2
                                                              .text),
                                                    ),
                                                    clearUnsetFields: false,
                                                  ),
                                                  true,
                                                )
                                              ]),
                                            },
                                          ),
                                        });
                                      } else {
                                        if ((currentUserDocument?.listaSafra
                                                        .toList() ??
                                                    [])
                                                .length ==
                                            3) {
                                          await currentUserReference!.update({
                                            ...mapToFirestore(
                                              {
                                                'listaSafra':
                                                    FieldValue.arrayUnion([
                                                  getSafraFirestoreData(
                                                    updateSafraStruct(
                                                      SafraStruct(
                                                        tipo: _model
                                                            .tipoSafraModel1
                                                            .dropDownValue,
                                                        producao: double
                                                            .tryParse(_model
                                                                .prodcaoSafra1Controller
                                                                .text),
                                                        produtividade: double
                                                            .tryParse(_model
                                                                .produtividadeSafra1Controller
                                                                .text),
                                                        transporte: double
                                                            .tryParse(_model
                                                                .transporteSafra1Controller
                                                                .text),
                                                        areaCultivada: double
                                                            .tryParse(_model
                                                                .areaSafra1Controller1
                                                                .text),
                                                      ),
                                                      clearUnsetFields: false,
                                                    ),
                                                    true,
                                                  )
                                                ]),
                                              },
                                            ),
                                          });

                                          await currentUserReference!.update({
                                            ...mapToFirestore(
                                              {
                                                'listaSafra':
                                                    FieldValue.arrayUnion([
                                                  getSafraFirestoreData(
                                                    updateSafraStruct(
                                                      SafraStruct(
                                                        tipo: _model
                                                            .tipoSafraModel2
                                                            .dropDownValue,
                                                        producao: double
                                                            .tryParse(_model
                                                                .prodcaoSafra2Controller
                                                                .text),
                                                        produtividade: double
                                                            .tryParse(_model
                                                                .produtividadeSafra2Controller
                                                                .text),
                                                        transporte: double
                                                            .tryParse(_model
                                                                .transporteSafra2Controller
                                                                .text),
                                                        areaCultivada: double
                                                            .tryParse(_model
                                                                .areaSafra1Controller2
                                                                .text),
                                                      ),
                                                      clearUnsetFields: false,
                                                    ),
                                                    true,
                                                  )
                                                ]),
                                              },
                                            ),
                                          });

                                          await currentUserReference!.update({
                                            ...mapToFirestore(
                                              {
                                                'listaSafra':
                                                    FieldValue.arrayUnion([
                                                  getSafraFirestoreData(
                                                    updateSafraStruct(
                                                      SafraStruct(
                                                        tipo: _model
                                                            .tipoSafraModel3
                                                            .dropDownValue,
                                                        producao: double
                                                            .tryParse(_model
                                                                .prodcaoSafra3Controller
                                                                .text),
                                                        produtividade: double
                                                            .tryParse(_model
                                                                .produtividadeSafra3Controller
                                                                .text),
                                                        transporte: double
                                                            .tryParse(_model
                                                                .transporteSafra3Controller
                                                                .text),
                                                        areaCultivada: double
                                                            .tryParse(_model
                                                                .areaSafra1Controller3
                                                                .text),
                                                      ),
                                                      clearUnsetFields: false,
                                                    ),
                                                    true,
                                                  )
                                                ]),
                                              },
                                            ),
                                          });
                                        }
                                      }
                                    }
                                  },
                                  text: 'Salvar',
                                  options: FFButtonOptions(
                                    height: 48.0,
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        24.0, 0.0, 24.0, 0.0),
                                    iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 0.0),
                                    color: FlutterFlowTheme.of(context).primary,
                                    textStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.white,
                                          fontSize: 20.0,
                                        ),
                                    elevation: 3.0,
                                    borderSide: const BorderSide(
                                      color: Colors.transparent,
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Abaixo você pode alterar suas informações',
                              style: FlutterFlowTheme.of(context).labelMedium,
                            ),
                            Align(
                              alignment: const AlignmentDirectional(-1.0, -1.0),
                              child: Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 20.0, 0.0, 0.0),
                                child: Container(
                                  width: 130.0,
                                  height: 130.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).primary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: AuthUserStreamWidget(
                                          builder: (context) => Container(
                                            width: 120.0,
                                            height: 120.0,
                                            clipBehavior: Clip.antiAlias,
                                            decoration: const BoxDecoration(
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                              currentUserPhoto,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(1.0, 1.0),
                                        child: Container(
                                          width: 40.0,
                                          height: 40.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            shape: BoxShape.circle,
                                          ),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              final selectedMedia =
                                                  await selectMediaWithSourceBottomSheet(
                                                context: context,
                                                allowPhoto: true,
                                              );
                                              if (selectedMedia != null &&
                                                  selectedMedia.every((m) =>
                                                      validateFileFormat(
                                                          m.storagePath,
                                                          context))) {
                                                setState(() => _model
                                                    .isDataUploading = true);
                                                var selectedUploadedFiles =
                                                    <FFUploadedFile>[];

                                                var downloadUrls = <String>[];
                                                try {
                                                  selectedUploadedFiles =
                                                      selectedMedia
                                                          .map((m) =>
                                                              FFUploadedFile(
                                                                name: m
                                                                    .storagePath
                                                                    .split('/')
                                                                    .last,
                                                                bytes: m.bytes,
                                                                height: m
                                                                    .dimensions
                                                                    ?.height,
                                                                width: m
                                                                    .dimensions
                                                                    ?.width,
                                                                blurHash:
                                                                    m.blurHash,
                                                              ))
                                                          .toList();

                                                  downloadUrls =
                                                      (await Future.wait(
                                                    selectedMedia.map(
                                                      (m) async =>
                                                          await uploadData(
                                                              m.storagePath,
                                                              m.bytes),
                                                    ),
                                                  ))
                                                          .where(
                                                              (u) => u != null)
                                                          .map((u) => u!)
                                                          .toList();
                                                } finally {
                                                  _model.isDataUploading =
                                                      false;
                                                }
                                                if (selectedUploadedFiles
                                                            .length ==
                                                        selectedMedia.length &&
                                                    downloadUrls.length ==
                                                        selectedMedia.length) {
                                                  setState(() {
                                                    _model.uploadedLocalFile =
                                                        selectedUploadedFiles
                                                            .first;
                                                    _model.uploadedFileUrl =
                                                        downloadUrls.first;
                                                  });
                                                } else {
                                                  setState(() {});
                                                  return;
                                                }
                                              }

                                              await currentUserReference!
                                                  .update(
                                                      createUsersRecordData());
                                            },
                                            child: const Icon(
                                              Icons.edit,
                                              color: Colors.white,
                                              size: 24.0,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Wrap(
                              spacing: 16.0,
                              runSpacing: 24.0,
                              alignment: WrapAlignment.start,
                              crossAxisAlignment: WrapCrossAlignment.start,
                              direction: Axis.horizontal,
                              runAlignment: WrapAlignment.start,
                              verticalDirection: VerticalDirection.down,
                              clipBehavior: Clip.none,
                              children: [
                                if ((currentUserDocument?.listaSafra
                                                .toList() ??
                                            []).isNotEmpty)
                                  AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 16.0),
                                        child: Form(
                                          key: _model.formKey3,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Safra 1:',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              wrapWithModel(
                                                model: _model.tipoSafraModel1,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TipoSafraWidget(
                                                  tipo: (currentUserDocument
                                                              ?.listaSafra
                                                              .toList() ??
                                                          [])
                                                      .first
                                                      .tipo,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 380.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .prodcaoSafra1Controller,
                                                  focusNode: _model
                                                      .prodcaoSafra1FocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.prodcaoSafra1Controller',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual o custo de produção?',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintText: 'custo ',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0x8157636C),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .prodcaoSafra1ControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 380.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .areaSafra1Controller1,
                                                  focusNode: _model
                                                      .areaSafra1FocusNode1,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.areaSafra1Controller1',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual a área cultivada?',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintText: 'área em alq',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0x8157636C),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .areaSafra1Controller1Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 380.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .produtividadeSafra1Controller,
                                                  focusNode: _model
                                                      .produtividadeSafra1FocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.produtividadeSafra1Controller',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual a produtividade?',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintText:
                                                        'quantidade de sacas por alq',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0x8157636C),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .produtividadeSafra1ControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 380.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .transporteSafra1Controller,
                                                  focusNode: _model
                                                      .transporteSafra1FocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.transporteSafra1Controller',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual o custo de transporte?',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintText:
                                                        'custo de transporte por saca',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0x8157636C),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .transporteSafra1ControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 16.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                if ((currentUserDocument?.listaSafra
                                                .toList() ??
                                            [])
                                        .length >=
                                    2)
                                  AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 16.0),
                                        child: Form(
                                          key: _model.formKey1,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Safra 2:',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              wrapWithModel(
                                                model: _model.tipoSafraModel2,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TipoSafraWidget(
                                                  tipo: (currentUserDocument
                                                              ?.listaSafra
                                                              .toList() ??
                                                          [])[1]
                                                      .tipo,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 380.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .prodcaoSafra2Controller,
                                                  focusNode: _model
                                                      .prodcaoSafra2FocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.prodcaoSafra2Controller',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual o custo de produção?',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintText: 'custo ',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0x8157636C),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .prodcaoSafra2ControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 380.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .areaSafra1Controller2,
                                                  focusNode: _model
                                                      .areaSafra1FocusNode2,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.areaSafra1Controller2',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual a área cultivada?',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintText: 'área em alq',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0x8157636C),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .areaSafra1Controller2Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 380.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .produtividadeSafra2Controller,
                                                  focusNode: _model
                                                      .produtividadeSafra2FocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.produtividadeSafra2Controller',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual a produtividade?',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintText:
                                                        'quantidade de sacas por alq',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0x8157636C),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .produtividadeSafra2ControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 380.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .transporteSafra2Controller,
                                                  focusNode: _model
                                                      .transporteSafra2FocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.transporteSafra2Controller',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual o custo de transporte?',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintText:
                                                        'custo de transporte por saca',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0x8157636C),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .transporteSafra2ControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 16.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                if ((currentUserDocument?.listaSafra
                                                .toList() ??
                                            [])
                                        .length >=
                                    3)
                                  AuthUserStreamWidget(
                                    builder: (context) => Container(
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 40.0, 0.0, 16.0),
                                        child: Form(
                                          key: _model.formKey2,
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Safra 3:',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          fontSize: 20.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              wrapWithModel(
                                                model: _model.tipoSafraModel3,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: TipoSafraWidget(
                                                  tipo: (currentUserDocument
                                                              ?.listaSafra
                                                              .toList() ??
                                                          [])
                                                      .last
                                                      .tipo,
                                                ),
                                              ),
                                              SizedBox(
                                                width: 380.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .prodcaoSafra3Controller,
                                                  focusNode: _model
                                                      .prodcaoSafra3FocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.prodcaoSafra3Controller',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual o custo de produção?',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintText: 'custo ',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0x8157636C),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .prodcaoSafra3ControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 380.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .areaSafra1Controller3,
                                                  focusNode: _model
                                                      .areaSafra1FocusNode3,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.areaSafra1Controller3',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual a área cultivada?',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintText: 'área em alq',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0x8157636C),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .areaSafra1Controller3Validator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 380.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .produtividadeSafra3Controller,
                                                  focusNode: _model
                                                      .produtividadeSafra3FocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.produtividadeSafra3Controller',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual a produtividade?',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintText:
                                                        'quantidade de sacas por alq',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0x8157636C),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .produtividadeSafra3ControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 380.0,
                                                child: TextFormField(
                                                  controller: _model
                                                      .transporteSafra3Controller,
                                                  focusNode: _model
                                                      .transporteSafra3FocusNode,
                                                  onChanged: (_) =>
                                                      EasyDebounce.debounce(
                                                    '_model.transporteSafra3Controller',
                                                    const Duration(milliseconds: 100),
                                                    () => setState(() {}),
                                                  ),
                                                  autofocus: true,
                                                  obscureText: false,
                                                  decoration: InputDecoration(
                                                    labelText:
                                                        'Qual o custo de transporte?',
                                                    labelStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .labelMedium,
                                                    hintText:
                                                        'custo de transporte por saca',
                                                    hintStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .labelMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color:
                                                              const Color(0x8157636C),
                                                        ),
                                                    enabledBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    errorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                    focusedErrorBorder:
                                                        OutlineInputBorder(
                                                      borderSide: BorderSide(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .error,
                                                        width: 2.0,
                                                      ),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                    ),
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium,
                                                  validator: _model
                                                      .transporteSafra3ControllerValidator
                                                      .asValidator(context),
                                                ),
                                              ),
                                            ].divide(const SizedBox(height: 16.0)),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
