import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'screen4_otpconfirmation_model.dart';
export 'screen4_otpconfirmation_model.dart';

class Screen4OtpconfirmationWidget extends StatefulWidget {
  const Screen4OtpconfirmationWidget({Key? key}) : super(key: key);

  @override
  _Screen4OtpconfirmationWidgetState createState() =>
      _Screen4OtpconfirmationWidgetState();
}

class _Screen4OtpconfirmationWidgetState
    extends State<Screen4OtpconfirmationWidget> {
  late Screen4OtpconfirmationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Screen4OtpconfirmationModel());
  }
  @override
  void showAlert(BuildContext context,String msg) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: Text(msg),
          actions: <Widget>[

            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],


        ));
  }
  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/balance-her-smfckc/assets/nek10iv6qftw/5D5A85BC-55CD-4137-9FC6-35A69967D37C.png',
                  width: 390.0,
                  height: 845.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.25, -0.84),
              child: Text(
                'Confirmation',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      color: Color(0x8EAD507A),
                      fontSize: 32.0,
                      fontWeight: FontWeight.w900,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.24),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                child: PinCodeTextField(
                  autoDisposeControllers: false,
                  appContext: context,
                  length: 4,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  enableActiveFill: false,
                  autoFocus: true,
                  enablePinAutofill: true,
                  errorTextSpace: 16.0,
                  showCursor: true,
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  obscureText: false,
                  hintCharacter: '-',
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    fieldHeight: 70.0,
                    fieldWidth: 70.0,
                    borderWidth: 3.5,
                    borderRadius: BorderRadius.circular(12.0),
                    shape: PinCodeFieldShape.box,
                    activeColor: FlutterFlowTheme.of(context).primaryText,
                    inactiveColor: Color(0x8EAD507A),
                    selectedColor: FlutterFlowTheme.of(context).primary,
                    activeFillColor: FlutterFlowTheme.of(context).primaryText,
                    inactiveFillColor: Color(0x8EAD507A),
                    selectedFillColor: FlutterFlowTheme.of(context).primary,
                  ),
                  controller: _model.pinCodeController,
                  onChanged: (_) {},
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator:
                      _model.pinCodeControllerValidator.asValidator(context),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.12, 0.58),
              child: FFButtonWidget(
                onPressed: () async {
               if(_model.pinCodeController.text.toString() == "1234"){
                 context.pushNamed('screen5-ageinputscreen');
               }else{
                 showAlert(context,"Please enter valid code");
               }
                 //
                },
                text: 'Verify',
                options: FFButtonOptions(
                  width: 356.0,
                  height: 65.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xF6AD507A),
                  textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 30.0,
                        fontWeight: FontWeight.normal,
                      ),
                  elevation: 3.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.25, 0.41),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 42.0, 0.0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Try Another Way',
                  options: FFButtonOptions(
                    width: 165.0,
                    height: 40.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).info,
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Color(0xD5AD507A),
                          fontSize: 18.0,
                          fontWeight: FontWeight.w800,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 0.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.45, 0.40),
              child: Text(
                'Didn\'t Get the Code ?',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 16.0,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.95, -0.88),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 65.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Color(0xB4AD507A),
                  size: 50.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
