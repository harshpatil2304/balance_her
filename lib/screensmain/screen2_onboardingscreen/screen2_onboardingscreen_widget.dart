import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';
import 'screen2_onboardingscreen_model.dart';
export 'screen2_onboardingscreen_model.dart';

class Screen2OnboardingscreenWidget extends StatefulWidget {
  const Screen2OnboardingscreenWidget({Key? key}) : super(key: key);

  @override
  _Screen2OnboardingscreenWidgetState createState() =>
      _Screen2OnboardingscreenWidgetState();
}

class _Screen2OnboardingscreenWidgetState
    extends State<Screen2OnboardingscreenWidget> {
  late Screen2OnboardingscreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Screen2OnboardingscreenModel());
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
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                await Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: FlutterFlowExpandedImageView(
                      image: Image.network(
                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/balance-her-smfckc/assets/hh0qe89kjegd/Copy_of_Black_and_White_Simple_Technology_Mobile_Prototype.png',
                        fit: BoxFit.contain,
                        alignment: Alignment(0.00, -1.00),
                      ),
                      allowRotation: false,
                      tag: 'imageTag',
                      useHeroAnimation: true,
                    ),
                  ),
                );
              },
              child: Hero(
                tag: 'imageTag',
                transitionOnUserGestures: true,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/balance-her-smfckc/assets/hh0qe89kjegd/Copy_of_Black_and_White_Simple_Technology_Mobile_Prototype.png',
                    width: 408.9,
                    height: 1033.0,
                    fit: BoxFit.none,
                    alignment: Alignment(0.00, -1.00),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 1.00),
              child: Container(
                width: 463.0,
                height: 320.0,
                decoration: BoxDecoration(
                  color: Color(0xF8AC6582),
                  borderRadius: BorderRadius.circular(5.0),
                  shape: BoxShape.rectangle,
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(-0.80, -0.80),
                      child: Text(
                        'Welcome',
                        textAlign: TextAlign.start,
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 30.0,
                                  fontWeight: FontWeight.w600,
                                ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, -0.25),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 0.0, 15.0, 0.0),
                        child: Text(
                          'Welcome to BalanceHer , where we turn life\'s chaos into your daily dance - helping you conquer work, family and wellness with style and grace . Lets find your balance and make everyday a celebration!',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).info,
                                    letterSpacing: 0.5,
                                    lineHeight: 1.5,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.71, 0.61),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('screen3-userloginscreen');
                        },
                        text: 'Sign In',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 48.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xE0210707),
                          textStyle:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 20.0,
                                  ),
                          elevation: 5.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.76, 0.61),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('screen3-userloginscreen');
                        },
                        text: 'Sign Up',
                        options: FFButtonOptions(
                          width: 150.0,
                          height: 48.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).info,
                          textStyle: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 20.0,
                              ),
                          elevation: 5.0,
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
              alignment: AlignmentDirectional(0.00, -1.00),
              child: Padding(
                padding:
                    EdgeInsetsDirectional.fromSTEB(125.0, 70.0, 30.0, 30.0),
                child: LinearPercentIndicator(
                  percent: 0.6,
                  width: 135.0,
                  lineHeight: 25.0,
                  animation: true,
                  animateFromLastPercent: true,
                  progressColor: Color(0xF8AC6582),
                  backgroundColor: Color(0xFFC2CACF),
                  barRadius: Radius.circular(15.0),
                  padding: EdgeInsets.zero,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
