import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AssociacaoRecord extends FirestoreRecord {
  AssociacaoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "associados" field.
  List<DocumentReference>? _associados;
  List<DocumentReference> get associados => _associados ?? const [];
  bool hasAssociados() => _associados != null;

  // "nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  bool hasNome() => _nome != null;

  // "valorObjetivo" field.
  double? _valorObjetivo;
  double get valorObjetivo => _valorObjetivo ?? 0.0;
  bool hasValorObjetivo() => _valorObjetivo != null;

  // "posicao" field.
  LatLng? _posicao;
  LatLng? get posicao => _posicao;
  bool hasPosicao() => _posicao != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  bool hasTipo() => _tipo != null;

  // "descricao" field.
  String? _descricao;
  String get descricao => _descricao ?? '';
  bool hasDescricao() => _descricao != null;

  // "numAssociados" field.
  int? _numAssociados;
  int get numAssociados => _numAssociados ?? 0;
  bool hasNumAssociados() => _numAssociados != null;

  // "valorAreaConseguido" field.
  double? _valorAreaConseguido;
  double get valorAreaConseguido => _valorAreaConseguido ?? 0.0;
  bool hasValorAreaConseguido() => _valorAreaConseguido != null;

  void _initializeFields() {
    _associados = getDataList(snapshotData['associados']);
    _nome = snapshotData['nome'] as String?;
    _valorObjetivo = castToType<double>(snapshotData['valorObjetivo']);
    _posicao = snapshotData['posicao'] as LatLng?;
    _tipo = snapshotData['tipo'] as String?;
    _descricao = snapshotData['descricao'] as String?;
    _numAssociados = castToType<int>(snapshotData['numAssociados']);
    _valorAreaConseguido =
        castToType<double>(snapshotData['valorAreaConseguido']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Associacao');

  static Stream<AssociacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AssociacaoRecord.fromSnapshot(s));

  static Future<AssociacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AssociacaoRecord.fromSnapshot(s));

  static AssociacaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AssociacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AssociacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AssociacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AssociacaoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AssociacaoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAssociacaoRecordData({
  String? nome,
  double? valorObjetivo,
  LatLng? posicao,
  String? tipo,
  String? descricao,
  int? numAssociados,
  double? valorAreaConseguido,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nome': nome,
      'valorObjetivo': valorObjetivo,
      'posicao': posicao,
      'tipo': tipo,
      'descricao': descricao,
      'numAssociados': numAssociados,
      'valorAreaConseguido': valorAreaConseguido,
    }.withoutNulls,
  );

  return firestoreData;
}

class AssociacaoRecordDocumentEquality implements Equality<AssociacaoRecord> {
  const AssociacaoRecordDocumentEquality();

  @override
  bool equals(AssociacaoRecord? e1, AssociacaoRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.associados, e2?.associados) &&
        e1?.nome == e2?.nome &&
        e1?.valorObjetivo == e2?.valorObjetivo &&
        e1?.posicao == e2?.posicao &&
        e1?.tipo == e2?.tipo &&
        e1?.descricao == e2?.descricao &&
        e1?.numAssociados == e2?.numAssociados &&
        e1?.valorAreaConseguido == e2?.valorAreaConseguido;
  }

  @override
  int hash(AssociacaoRecord? e) => const ListEquality().hash([
        e?.associados,
        e?.nome,
        e?.valorObjetivo,
        e?.posicao,
        e?.tipo,
        e?.descricao,
        e?.numAssociados,
        e?.valorAreaConseguido
      ]);

  @override
  bool isValidKey(Object? o) => o is AssociacaoRecord;
}
