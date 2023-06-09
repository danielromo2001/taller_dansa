import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaClientesRecord extends FirestoreRecord {
  ListaClientesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "placa" field.
  String? _placa;
  String get placa => _placa ?? '';
  bool hasPlaca() => _placa != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "mecanico" field.
  DocumentReference? _mecanico;
  DocumentReference? get mecanico => _mecanico;
  bool hasMecanico() => _mecanico != null;

  // "servicios" field.
  List<String>? _servicios;
  List<String> get servicios => _servicios ?? const [];
  bool hasServicios() => _servicios != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _placa = snapshotData['placa'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _mecanico = snapshotData['mecanico'] as DocumentReference?;
    _servicios = getDataList(snapshotData['servicios']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('listaClientes');

  static Stream<ListaClientesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ListaClientesRecord.fromSnapshot(s));

  static Future<ListaClientesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ListaClientesRecord.fromSnapshot(s));

  static ListaClientesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ListaClientesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ListaClientesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ListaClientesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ListaClientesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ListaClientesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createListaClientesRecordData({
  String? nombre,
  String? placa,
  String? telefono,
  DocumentReference? mecanico,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'placa': placa,
      'telefono': telefono,
      'mecanico': mecanico,
    }.withoutNulls,
  );

  return firestoreData;
}
