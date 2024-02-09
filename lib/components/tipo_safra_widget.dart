import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'tipo_safra_model.dart';
export 'tipo_safra_model.dart';

class TipoSafraWidget extends StatefulWidget {
  const TipoSafraWidget({
    super.key,
    this.tipo,
  });

  final String? tipo;

  @override
  State<TipoSafraWidget> createState() => _TipoSafraWidgetState();
}

class _TipoSafraWidgetState extends State<TipoSafraWidget> {
  late TipoSafraModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TipoSafraModel());

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

    return FlutterFlowDropDown<String>(
      controller: _model.dropDownValueController ??=
          FormFieldController<String>(
        _model.dropDownValue ??= widget.tipo,
      ),
      options: const ['Soja', 'Milho', 'Trigo'],
      onChanged: (val) async {
        setState(() => _model.dropDownValue = val);
        setState(() {});
      },
      width: 380.0,
      height: 50.0,
      textStyle: FlutterFlowTheme.of(context).bodyMedium,
      hintText: 'Selecione o tipo de safra ',
      icon: Icon(
        Icons.keyboard_arrow_down_rounded,
        color: FlutterFlowTheme.of(context).secondaryText,
        size: 24.0,
      ),
      elevation: 2.0,
      borderColor: FlutterFlowTheme.of(context).primary,
      borderWidth: 2.0,
      borderRadius: 8.0,
      margin: const EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
      hidesUnderline: true,
      isOverButton: true,
      isSearchable: false,
      isMultiSelect: false,
    );
  }
}
