import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'area_model.dart';
export 'area_model.dart';

class AreaWidget extends StatefulWidget {
  const AreaWidget({
    super.key,
    this.parameter1,
  });

  final double? parameter1;

  @override
  State<AreaWidget> createState() => _AreaWidgetState();
}

class _AreaWidgetState extends State<AreaWidget> {
  late AreaModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AreaModel());

    _model.areaSafra1Controller ??=
        TextEditingController(text: widget.parameter1?.toString());
    _model.areaSafra1FocusNode ??= FocusNode();

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
        controller: _model.areaSafra1Controller,
        focusNode: _model.areaSafra1FocusNode,
        onChanged: (_) => EasyDebounce.debounce(
          '_model.areaSafra1Controller',
          const Duration(milliseconds: 100),
          () => setState(() {}),
        ),
        autofocus: true,
        obscureText: false,
        decoration: InputDecoration(
          labelText: 'Qual a área cultivada?',
          labelStyle: FlutterFlowTheme.of(context).labelMedium,
          hintText: 'área em alq',
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
        validator: _model.areaSafra1ControllerValidator.asValidator(context),
      ),
    );
  }
}
