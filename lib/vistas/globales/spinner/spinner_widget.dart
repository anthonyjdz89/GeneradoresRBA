import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'spinner_model.dart';
export 'spinner_model.dart';

class SpinnerWidget extends StatefulWidget {
  const SpinnerWidget({super.key});

  @override
  State<SpinnerWidget> createState() => _SpinnerWidgetState();
}

class _SpinnerWidgetState extends State<SpinnerWidget> {
  late SpinnerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SpinnerModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'spinner'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SPINNER_PAGE_spinner_ON_INIT_STATE');
      _model.generadoresCambioDeAceite = await queryGeneradoresRecordOnce(
        queryBuilder: (generadoresRecord) => generadoresRecord.where(
          'aceiteMotor',
          isGreaterThan: 130.0,
        ),
      );
      FFAppState().ItemsAceiteMotor =
          _model.generadoresCambioDeAceite!.length.toDouble();
      safeSetState(() {});
      await actions.checkMaintenance();
      if (currentUserEmail == 'anthonyjdiaz89@gmail.com') {
        context.pushNamed('home-admin');
      } else {
        context.pushNamed('home-operador');
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).accent2,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Image.network(
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/generadores-electricos-rba-s4sg6q/assets/oijq9bnayrb7/Grey_Simple_Business_Email_Signature.png',
                      width: 240.0,
                      height: 236.0,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
