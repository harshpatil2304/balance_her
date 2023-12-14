import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'screen8_activitylevel_model.dart';
export 'screen8_activitylevel_model.dart';

class Screen8ActivitylevelWidget extends StatefulWidget {
  const Screen8ActivitylevelWidget({Key? key}) : super(key: key);

  @override
  _Screen8ActivitylevelWidgetState createState() =>
      _Screen8ActivitylevelWidgetState();
}

class _Screen8ActivitylevelWidgetState extends State<Screen8ActivitylevelWidget>
    with TickerProviderStateMixin {
  late Screen8ActivitylevelModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'buttonOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 170.ms,
          duration: 830.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Screen8ActivitylevelModel());

    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Stack(
                  children: [
                    Opacity(
                      opacity: 0.8,
                      child: Align(
                        alignment: AlignmentDirectional(0.00, 0.35),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 30.0, 125.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('screen12-tasksfortoday');
                            },
                            text: 'Intermediate',
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width * 1.5,
                              height: MediaQuery.sizeOf(context).height * 0.1,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFD9D9D9),
                              textStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.normal,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ).animateOnActionTrigger(
                            animationsMap['buttonOnActionTriggerAnimation']!,
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(-0.81, -0.74),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            20.0, 12.0, 20.0, 0.0),
                        child: Text(
                          'Choose your regular activity level. This will help us to personalise a plan for you. ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                  ),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.8,
                      child: Align(
                        alignment: AlignmentDirectional(0.00, -0.18),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 40.0, 30.0, 115.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('screen12-tasksfortoday');
                            },
                            text: 'Beginner',
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width * 1.5,
                              height: MediaQuery.sizeOf(context).height * 0.1,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFD9D9D9),
                              textStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.normal,
                                  ),
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.82, 0.95),
                      child: FFButtonWidget(
                        onPressed: () async {
                          await launchURL(
                              'https://calendar.google.com/calendar/u/0/r?pli=1');
                        },
                        text: 'Continue',
                        options: FFButtonOptions(
                          width: 157.0,
                          height: 65.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xD5AD507A),
                          textStyle:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).info,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w500,
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
                      alignment: AlignmentDirectional(-0.79, 0.95),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Button pressed ...');
                        },
                        text: 'Back',
                        options: FFButtonOptions(
                          width: 157.0,
                          height: 65.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFD99EBA),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleLarge
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
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
                    Opacity(
                      opacity: 0.8,
                      child: Align(
                        alignment: AlignmentDirectional(0.00, 0.48),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              30.0, 0.0, 30.0, 10.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('screen12-tasksfortoday');
                            },
                            text: 'Advanced',
                            options: FFButtonOptions(
                              width: MediaQuery.sizeOf(context).width * 1.5,
                              height: MediaQuery.sizeOf(context).height * 0.1,
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              iconPadding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: Color(0xFFD9D9D9),
                              textStyle: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.normal,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 0.0,
                              ),
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.00, -1.00),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
                  child: Text(
                    'Physical Activity Level',
                    style: FlutterFlowTheme.of(context).headlineLarge.override(
                          fontFamily: 'Poppins',
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
