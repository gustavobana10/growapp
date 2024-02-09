import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrcamentoRecord extends FirestoreRecord {
  OrcamentoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "preco" field.
  double? _preco;
  double get preco => _preco ?? 0.0;
  bool hasPreco() => _preco != null;

  // "descricao_do_projeto" field.
  String? _descricaoDoProjeto;
  String get descricaoDoProjeto => _descricaoDoProjeto ?? '';
  bool hasDescricaoDoProjeto() => _descricaoDoProjeto != null;

  // "associacao" field.
  DocumentReference? _associacao;
  DocumentReference? get associacao => _associacao;
  bool hasAssociacao() => _associacao != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "imagens" field.
  List<String>? _imagens;
  List<String> get imagens => _imagens ?? const [];
  bool hasImagens() => _imagens != null;

  void _initializeFields() {
    _preco = castToType<double>(snapshotData['preco']);
    _descricaoDoProjeto = snapshotData['descricao_do_projeto'] as String?;
    _associacao = snapshotData['associacao'] as DocumentReference?;
    _user = snapshotData['user'] as DocumentReference?;
    _imagens = getDataList(snapshotData['imagens']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Orcamento');

  static Stream<OrcamentoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrcamentoRecord.fromSnapshot(s));

  static Future<OrcamentoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrcamentoRecord.fromSnapshot(s));

  static OrcamentoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrcamentoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrcamentoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrcamentoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrcamentoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrcamentoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrcamentoRecordData({
  double? preco,
  String? descricaoDoProjeto,
  DocumentReference? associacao,
  DocumentReference? user,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'preco': preco,
      'descricao_do_projeto': descricaoDoProjeto,
      'associacao': associacao,
      'user': user,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrcamentoRecordDocumentEquality implements Equality<OrcamentoRecord> {
  const OrcamentoRecordDocumentEquality();

  @override
  bool equals(OrcamentoRecord? e1, OrcamentoRecord? e2) {
    const listEquality = ListEquality();
    return e1?.preco == e2?.preco &&
        e1?.descricaoDoProjeto == e2?.descricaoDoProjeto &&
        e1?.associacao == e2?.associacao &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.imagens, e2?.imagens);
  }

  @override
  int hash(OrcamentoRecord? e) => const ListEquality().hash(
      [e?.preco, e?.descricaoDoProjeto, e?.associacao, e?.user, e?.imagens]);

  @override
  bool isValidKey(Object? o) => o is OrcamentoRecord;
}
