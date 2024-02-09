import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'transporte_model.dart';
export 'transporte_model.dart';

class TransporteWidget extends StatefulWidget {
  const TransporteWidget({
    super.key,
    this.parameter1,
  });

  final double? parameter1;

  @override
  State<TransporteWidget> createState() => _TransporteWidgetState();
}

class _TransporteWidgetState extends State<TransporteWidget> {
  late TransporteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TransporteModel());

    _model.transporteSafra1Controller ??=
        TextEditingController(text: widget.parameter1?.toString());
    _model.transporteSafra1FocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return SizedBox(
      width: 380.0,
      child: TextFormField(
        controller: _model.transporteSafra1Controller,
        focusNode: _model.transporteSafra1FocusNode,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.transporteSafra1Controller',
          const Duration(milliseconds: 100),
          () => setState(() {}),
        ),
        autofocus: true,
        obscureText: false,
        decoration: InputDecoration(
          labelText: 'Qual o custo de transporte?',
          labelStyle: FlutterFlowTheme.of(context).labelMedium,
          hintText: 'custo de transporte por saca',
          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                fontFamily: 'Readex Pro',
                color: const Color(0x8157636C),
              ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).primary,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        style: FlutterFlowTheme.of(context).bodyMedium,
        validator:
            _model.transporteSafra1ControllerValidator.asValidator(context),
      ),
    );
  }
}
