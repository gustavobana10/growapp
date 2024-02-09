import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "fazenda" field.
  LatLng? _fazenda;
  LatLng? get fazenda => _fazenda;
  bool hasFazenda() => _fazenda != null;

  // "vendedor" field.
  bool? _vendedor;
  bool get vendedor => _vendedor ?? false;
  bool hasVendedor() => _vendedor != null;

  // "nomeFazenda" field.
  String? _nomeFazenda;
  String get nomeFazenda => _nomeFazenda ?? '';
  bool hasNomeFazenda() => _nomeFazenda != null;

  // "quantidadesSafras" field.
  int? _quantidadesSafras;
  int get quantidadesSafras => _quantidadesSafras ?? 0;
  bool hasQuantidadesSafras() => _quantidadesSafras != null;

  // "listaSafra" field.
  List<SafraStruct>? _listaSafra;
  List<SafraStruct> get listaSafra => _listaSafra ?? const [];
  bool hasListaSafra() => _listaSafra != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _fazenda = snapshotData['fazenda'] as LatLng?;
    _vendedor = snapshotData['vendedor'] as bool?;
    _nomeFazenda = snapshotData['nomeFazenda'] as String?;
    _quantidadesSafras = castToType<int>(snapshotData['quantidadesSafras']);
    _listaSafra = getStructList(
      snapshotData['listaSafra'],
      SafraStruct.fromMap,
    );
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  LatLng? fazenda,
  bool? vendedor,
  String? nomeFazenda,
  int? quantidadesSafras,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'fazenda': fazenda,
      'vendedor': vendedor,
      'nomeFazenda': nomeFazenda,
      'quantidadesSafras': quantidadesSafras,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    const listEquality = ListEquality();
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.fazenda == e2?.fazenda &&
        e1?.vendedor == e2?.vendedor &&
        e1?.nomeFazenda == e2?.nomeFazenda &&
        e1?.quantidadesSafras == e2?.quantidadesSafras &&
        listEquality.equals(e1?.listaSafra, e2?.listaSafra);
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.fazenda,
        e?.vendedor,
        e?.nomeFazenda,
        e?.quantidadesSafras,
        e?.listaSafra
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
