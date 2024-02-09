// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SafraStruct extends FFFirebaseStruct {
  SafraStruct({
    String? tipo,
    double? producao,
    double? produtividade,
    double? transporte,
    double? areaCultivada,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _tipo = tipo,
        _producao = producao,
        _produtividade = produtividade,
        _transporte = transporte,
        _areaCultivada = areaCultivada,
        super(firestoreUtilData);

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;
  bool hasTipo() => _tipo != null;

  // "producao" field.
  double? _producao;
  double get producao => _producao ?? 0.0;
  set producao(double? val) => _producao = val;
  void incrementProducao(double amount) => _producao = producao + amount;
  bool hasProducao() => _producao != null;

  // "produtividade" field.
  double? _produtividade;
  double get produtividade => _produtividade ?? 0.0;
  set produtividade(double? val) => _produtividade = val;
  void incrementProdutividade(double amount) =>
      _produtividade = produtividade + amount;
  bool hasProdutividade() => _produtividade != null;

  // "transporte" field.
  double? _transporte;
  double get transporte => _transporte ?? 0.0;
  set transporte(double? val) => _transporte = val;
  void incrementTransporte(double amount) => _transporte = transporte + amount;
  bool hasTransporte() => _transporte != null;

  // "areaCultivada" field.
  double? _areaCultivada;
  double get areaCultivada => _areaCultivada ?? 0.0;
  set areaCultivada(double? val) => _areaCultivada = val;
  void incrementAreaCultivada(double amount) =>
      _areaCultivada = areaCultivada + amount;
  bool hasAreaCultivada() => _areaCultivada != null;

  static SafraStruct fromMap(Map<String, dynamic> data) => SafraStruct(
        tipo: data['tipo'] as String?,
        producao: castToType<double>(data['producao']),
        produtividade: castToType<double>(data['produtividade']),
        transporte: castToType<double>(data['transporte']),
        areaCultivada: castToType<double>(data['areaCultivada']),
      );

  static SafraStruct? maybeFromMap(dynamic data) =>
      data is Map ? SafraStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'tipo': _tipo,
        'producao': _producao,
        'produtividade': _produtividade,
        'transporte': _transporte,
        'areaCultivada': _areaCultivada,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'producao': serializeParam(
          _producao,
          ParamType.double,
        ),
        'produtividade': serializeParam(
          _produtividade,
          ParamType.double,
        ),
        'transporte': serializeParam(
          _transporte,
          ParamType.double,
        ),
        'areaCultivada': serializeParam(
          _areaCultivada,
          ParamType.double,
        ),
      }.withoutNulls;

  static SafraStruct fromSerializableMap(Map<String, dynamic> data) =>
      SafraStruct(
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        producao: deserializeParam(
          data['producao'],
          ParamType.double,
          false,
        ),
        produtividade: deserializeParam(
          data['produtividade'],
          ParamType.double,
          false,
        ),
        transporte: deserializeParam(
          data['transporte'],
          ParamType.double,
          false,
        ),
        areaCultivada: deserializeParam(
          data['areaCultivada'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'SafraStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SafraStruct &&
        tipo == other.tipo &&
        producao == other.producao &&
        produtividade == other.produtividade &&
        transporte == other.transporte &&
        areaCultivada == other.areaCultivada;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([tipo, producao, produtividade, transporte, areaCultivada]);
}

SafraStruct createSafraStruct({
  String? tipo,
  double? producao,
  double? produtividade,
  double? transporte,
  double? areaCultivada,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SafraStruct(
      tipo: tipo,
      producao: producao,
      produtividade: produtividade,
      transporte: transporte,
      areaCultivada: areaCultivada,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SafraStruct? updateSafraStruct(
  SafraStruct? safra, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    safra
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSafraStructData(
  Map<String, dynamic> firestoreData,
  SafraStruct? safra,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (safra == null) {
    return;
  }
  if (safra.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && safra.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final safraData = getSafraFirestoreData(safra, forFieldValue);
  final nestedData = safraData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = safra.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSafraFirestoreData(
  SafraStruct? safra, [
  bool forFieldValue = false,
]) {
  if (safra == null) {
    return {};
  }
  final firestoreData = mapToFirestore(safra.toMap());

  // Add any Firestore field values
  safra.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSafraListFirestoreData(
  List<SafraStruct>? safras,
) =>
    safras?.map((e) => getSafraFirestoreData(e, true)).toList() ?? [];
