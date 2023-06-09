import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MecanicosRecord extends FirestoreRecord {
  MecanicosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  void _initializeFields() {
    _foto = snapshotData['foto'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _telefono = snapshotData['telefono'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mecanicos');

  static Stream<MecanicosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MecanicosRecord.fromSnapshot(s));

  static Future<MecanicosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MecanicosRecord.fromSnapshot(s));

  static MecanicosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MecanicosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MecanicosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MecanicosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MecanicosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MecanicosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMecanicosRecordData({
  String? foto,
  String? nombre,
  String? telefono,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'foto': foto,
      'nombre': nombre,
      'telefono': telefono,
    }.withoutNulls,
  );

  return firestoreData;
}
