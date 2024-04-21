import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CodesRecord extends FirestoreRecord {
  CodesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "cname" field.
  String? _cname;
  String get cname => _cname ?? '';
  bool hasCname() => _cname != null;

  // "entry" field.
  String? _entry;
  String get entry => _entry ?? '';
  bool hasEntry() => _entry != null;

  void _initializeFields() {
    _cname = snapshotData['cname'] as String?;
    _entry = snapshotData['entry'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('codes');

  static Stream<CodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CodesRecord.fromSnapshot(s));

  static Future<CodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CodesRecord.fromSnapshot(s));

  static CodesRecord fromSnapshot(DocumentSnapshot snapshot) => CodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCodesRecordData({
  String? cname,
  String? entry,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cname': cname,
      'entry': entry,
    }.withoutNulls,
  );

  return firestoreData;
}

class CodesRecordDocumentEquality implements Equality<CodesRecord> {
  const CodesRecordDocumentEquality();

  @override
  bool equals(CodesRecord? e1, CodesRecord? e2) {
    return e1?.cname == e2?.cname && e1?.entry == e2?.entry;
  }

  @override
  int hash(CodesRecord? e) => const ListEquality().hash([e?.cname, e?.entry]);

  @override
  bool isValidKey(Object? o) => o is CodesRecord;
}
