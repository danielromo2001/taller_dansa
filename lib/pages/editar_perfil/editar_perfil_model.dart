import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditarPerfilModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for editarNombre widget.
  TextEditingController? editarNombreController;
  String? Function(BuildContext, String?)? editarNombreControllerValidator;
  // State field(s) for editarEmail widget.
  TextEditingController? editarEmailController;
  String? Function(BuildContext, String?)? editarEmailControllerValidator;
  // State field(s) for editarTelefono widget.
  TextEditingController? editarTelefonoController;
  String? Function(BuildContext, String?)? editarTelefonoControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    editarNombreController?.dispose();
    editarEmailController?.dispose();
    editarTelefonoController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
