import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PubliccodesRecord extends FirestoreRecord {
  PubliccodesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "entry" field.
  String? _entry;
  String get entry => _entry ?? '';
  bool hasEntry() => _entry != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _entry = snapshotData['entry'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('publiccodes');

  static Stream<PubliccodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PubliccodesRecord.fromSnapshot(s));

  static Future<PubliccodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PubliccodesRecord.fromSnapshot(s));

  static PubliccodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PubliccodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PubliccodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PubliccodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PubliccodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PubliccodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPubliccodesRecordData({
  String? id,
  String? entry,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'entry': entry,
    }.withoutNulls,
  );

  return firestoreData;
}

class PubliccodesRecordDocumentEquality implements Equality<PubliccodesRecord> {
  const PubliccodesRecordDocumentEquality();

  @override
  bool equals(PubliccodesRecord? e1, PubliccodesRecord? e2) {
    return e1?.id == e2?.id && e1?.entry == e2?.entry;
  }

  @override
  int hash(PubliccodesRecord? e) =>
      const ListEquality().hash([e?.id, e?.entry]);

  @override
  bool isValidKey(Object? o) => o is PubliccodesRecord;
}
