import 'package:fluttertoast/fluttertoast.dart';

import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'screen3_userloginscreen_model.dart';
export 'screen3_userloginscreen_model.dart';

class Screen3UserloginscreenWidget extends StatefulWidget {
  const Screen3UserloginscreenWidget({Key? key}) : super(key: key);

  @override
  _Screen3UserloginscreenWidgetState createState() =>
      _Screen3UserloginscreenWidgetState();
}

class _Screen3UserloginscreenWidgetState
    extends State<Screen3UserloginscreenWidget> {
  late Screen3UserloginscreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Screen3UserloginscreenModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();


  }




  @override
  void dispose() {
    _model.dispose();

    super.dispose();
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
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: Stack(
          children: [
            Container(

              height: 228.0,
              decoration: BoxDecoration(
                color: Color(0xFFB84C65),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, -1.00),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          125.0, 50.0, 30.0, 0.0),
                      child: LinearPercentIndicator(
                        percent: 0.6,
                        width: 135.0,
                        lineHeight: 25.0,
                        animation: true,
                        animateFromLastPercent: true,
                        progressColor: Color(0xF8B56E90),
                        backgroundColor: Color(0xFFC2CACF),
                        barRadius: Radius.circular(15.0),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.70, 0.38),
                    child: Text(
                      'Sign In',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',

                            color: FlutterFlowTheme.of(context).accent4,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.69, 0.63),
                    child: Text(
                      'Sign In to get Started',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).alternate,
                            fontSize: 15.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.96, -0.85),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 70.0,
                icon: Icon(
                  Icons.chevron_left_outlined,
                  color: FlutterFlowTheme.of(context).info,
                  size: 50.0,
                ),
                onPressed: () async {
                  context.pushNamed('screen2-onboardingscreen');
                },
              ),
            ),
            const SizedBox(height: 70,),
            Align(

              alignment: AlignmentDirectional(00, -0.16),
              child: Container(
                width: 470.0,
                height: 300.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15.0),
                    bottomRight: Radius.circular(15.0),
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Column(

                  children: <Widget>[


                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),

                        child: TextFormField(
                          controller: _model.textController1,
                          focusNode: _model.textFieldFocusNode1,
                          decoration: const InputDecoration(

                            border: OutlineInputBorder(),
                            labelText: 'Enter your username',
                          ),
                        ),


                    ),

                    Container(

                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
                      child: TextFormField(
                        controller: _model.textController2,
                        focusNode: _model.textFieldFocusNode2,
                        autofocus: true,
                        obscureText: !_model.passwordVisibility,
                        decoration: InputDecoration(

                          suffixIcon: InkWell(
                            onTap: () => setState(
                                  () => _model.passwordVisibility =
                              !_model.passwordVisibility,
                            ),
                            focusNode: FocusNode(skipTraversal: true),
                            child: Icon(
                              _model.passwordVisibility
                                  ? Icons.visibility_outlined
                                  : Icons.visibility_off_outlined,
                              size: 30.0,
                            ),
                          ),


                          border: OutlineInputBorder(),
                          labelText: 'Enter your password',



                        ),
                      ),
                    ),

                    Container(

                        height: 45,

                        child: Container(
                          margin: const EdgeInsets.only(left: 300.0, right: 5.0),
                          child: FFButtonWidget(

                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Forgot Password ?',
                          options: FFButtonOptions(
                            color:
                            FlutterFlowTheme.of(context).secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 13.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        )


                    ),

                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      height: 60.0,

                      child: FFButtonWidget(
                        onPressed: () async {
                          if(_model.textController1.text.toString().isEmpty){




                            showAlert(context,"Please enter user name");

                          }
                          else  if(_model.textController2.text.toString().isEmpty){
                            showAlert(context,"Please enter password");

                          }

                          else  if(_model.textController1.text.toString() == "Admin" && _model.textController2.text.toString() == "123456"){
                            context.pushNamed('screen4-otpconfirmation');
                          }


                          else {
                            showAlert(context,"Please enter valid user name and password");
                            // Fluttertoast.showToast(
                            //     msg: "Please enter valid user name and password",
                            //     toastLength: Toast.LENGTH_SHORT,
                            //     gravity: ToastGravity.CENTER_LEFT,
                            //     timeInSecForIosWeb: 3,
                            //     textColor: Colors.white,
                            //     fontSize: 16.0
                            // );
                            // context.pushNamed('screen4-otpconfirmation');
                          }
                        },
                        text: 'Sign IN',
                        options: FFButtonOptions(
                          width: 246.0,
                          height: 47.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Colors.black,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.of(context).info,
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



                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.62),
              child: Container(
                width: 340.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Text(
                        '          Continue with Google',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Poppins',
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.61, 0.00),
                      child: FaIcon(
                        FontAwesomeIcons.google,
                        color: Colors.black,
                        size: 35.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.92),
              child: Container(
                width: 345.0,
                height: 70.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  borderRadius: BorderRadius.circular(40.0),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          '            Continue with Facebook',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.63, -0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Icon(
                          Icons.facebook_rounded,
                          color: Colors.black,
                          size: 45.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



}

