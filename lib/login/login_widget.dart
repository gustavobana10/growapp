import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.emailAddressController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.passwordController ??= TextEditingController();
    _model.passwordFocusNode ??= FocusNode();

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
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.0),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/LOGO_04-2.png',
                        width: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Container(
                      width: double.infinity,
                      constraints: const BoxConstraints(
                        maxWidth: 570.0,
                      ),
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(0.0, 2.0),
                          )
                        ],
                        borderRadius: BorderRadius.circular(12.0),
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          width: 2.0,
                        ),
                      ),
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsets.all(24.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: const AlignmentDirectional(-1.0, -1.0),
                                child: Text(
                                  'Bem vindo ',
                                  textAlign: TextAlign.start,
                                  style:
                                      FlutterFlowTheme.of(context).displaySmall,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 12.0, 0.0, 24.0),
                                child: Text(
                                  'Preencha os dados abaixo para acessar sua conta.',
                                  textAlign: TextAlign.start,
                                  style:
                                      FlutterFlowTheme.of(context).labelLarge,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.emailAddressController,
                                    focusNode: _model.emailAddressFocusNode,
                                    autofocus: true,
                                    autofillHints: const [AutofillHints.email],
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Email',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      filled: true,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              24.0, 24.0, 0.0, 24.0),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    keyboardType: TextInputType.emailAddress,
                                    validator: _model
                                        .emailAddressControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: SizedBox(
                                  width: double.infinity,
                                  child: TextFormField(
                                    controller: _model.passwordController,
                                    focusNode: _model.passwordFocusNode,
                                    autofocus: true,
                                    autofillHints: const [AutofillHints.password],
                                    obscureText: !_model.passwordVisibility,
                                    decoration: InputDecoration(
                                      labelText: 'Senha',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .titleMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                      filled: true,
                                      contentPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              24.0, 24.0, 0.0, 24.0),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model.passwordVisibility =
                                              !_model.passwordVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                    validator: _model
                                        .passwordControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 16.0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      GoRouter.of(context).prepareAuthEvent();

                                      final user =
                                          await authManager.signInWithEmail(
                                        context,
                                        _model.emailAddressController.text,
                                        _model.passwordController.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      context.goNamedAuth(
                                          'Dashboard', context.mounted);
                                    },
                                    text: 'Entrar ',
                                    options: FFButtonOptions(
                                      width: 230.0,
                                      height: 52.0,
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 0.0, 0.0),
                                      iconPadding:
                                          const EdgeInsetsDirectional.fromSTEB(
                                              0.0, 0.0, 0.0, 0.0),
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: Colors.white,
                                          ),
                                      elevation: 3.0,
                                      borderSide: const BorderSide(
                                        color: Colors.transparent,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(40.0),
                                    ),
                                  ),
                                ),
                              ),

                              // You will have to add an action on this rich text to go to your login page.
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 12.0, 0.0, 12.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed('formulario');
                                    },
                                    child: RichText(
                                      textScaleFactor: MediaQuery.of(context)
                                          .textScaleFactor,
                                      text: TextSpan(
                                        children: [
                                          const TextSpan(
                                            text: 'Não tem uma conta?',
                                            style: TextStyle(),
                                          ),
                                          TextSpan(
                                            text: ' Cadastre-se agora.',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Readex Pro',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          )
                                        ],
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
