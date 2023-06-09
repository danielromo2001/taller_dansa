import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrarUserModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for fullName widget.
  TextEditingController? fullNameController;
  String? Function(BuildContext, String?)? fullNameControllerValidator;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  // State field(s) for phone widget.
  TextEditingController? phoneController;
  String? Function(BuildContext, String?)? phoneControllerValidator;
  // State field(s) for contrasenia widget.
  TextEditingController? contraseniaController;
  late bool contraseniaVisibility;
  String? Function(BuildContext, String?)? contraseniaControllerValidator;
  // State field(s) for confirmarContra widget.
  TextEditingController? confirmarContraController;
  late bool confirmarContraVisibility;
  String? Function(BuildContext, String?)? confirmarContraControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contraseniaVisibility = false;
    confirmarContraVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    fullNameController?.dispose();
    emailController?.dispose();
    phoneController?.dispose();
    contraseniaController?.dispose();
    confirmarContraController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
