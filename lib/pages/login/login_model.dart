import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for correo widget.
  TextEditingController? correoController;
  String? Function(BuildContext, String?)? correoControllerValidator;
  // State field(s) for contrasenia widget.
  TextEditingController? contraseniaController;
  late bool contraseniaVisibility;
  String? Function(BuildContext, String?)? contraseniaControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    contraseniaVisibility = false;
  }

  void dispose() {
    unfocusNode.dispose();
    correoController?.dispose();
    contraseniaController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

}
