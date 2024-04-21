import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PrivatecodesRecord extends FirestoreRecord {
  PrivatecodesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id1" field.
  String? _id1;
  String get id1 => _id1 ?? '';
  bool hasId1() => _id1 != null;

  // "entry1" field.
  String? _entry1;
  String get entry1 => _entry1 ?? '';
  bool hasEntry1() => _entry1 != null;

  // "users" field.
  DocumentReference? _users;
  DocumentReference? get users => _users;
  bool hasUsers() => _users != null;

  void _initializeFields() {
    _id1 = snapshotData['id1'] as String?;
    _entry1 = snapshotData['entry1'] as String?;
    _users = snapshotData['users'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('privatecodes');

  static Stream<PrivatecodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PrivatecodesRecord.fromSnapshot(s));

  static Future<PrivatecodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PrivatecodesRecord.fromSnapshot(s));

  static PrivatecodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PrivatecodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PrivatecodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PrivatecodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PrivatecodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PrivatecodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPrivatecodesRecordData({
  String? id1,
  String? entry1,
  DocumentReference? users,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id1': id1,
      'entry1': entry1,
      'users': users,
    }.withoutNulls,
  );

  return firestoreData;
}

class PrivatecodesRecordDocumentEquality
    implements Equality<PrivatecodesRecord> {
  const PrivatecodesRecordDocumentEquality();

  @override
  bool equals(PrivatecodesRecord? e1, PrivatecodesRecord? e2) {
    return e1?.id1 == e2?.id1 &&
        e1?.entry1 == e2?.entry1 &&
        e1?.users == e2?.users;
  }

  @override
  int hash(PrivatecodesRecord? e) =>
      const ListEquality().hash([e?.id1, e?.entry1, e?.users]);

  @override
  bool isValidKey(Object? o) => o is PrivatecodesRecord;
}
