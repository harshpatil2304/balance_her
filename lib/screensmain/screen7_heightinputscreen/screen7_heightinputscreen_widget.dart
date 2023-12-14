import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'screen7_heightinputscreen_model.dart';
export 'screen7_heightinputscreen_model.dart';

class Screen7HeightinputscreenWidget extends StatefulWidget {
  const Screen7HeightinputscreenWidget({Key? key}) : super(key: key);

  @override
  _Screen7HeightinputscreenWidgetState createState() =>
      _Screen7HeightinputscreenWidgetState();
}

class _Screen7HeightinputscreenWidgetState
    extends State<Screen7HeightinputscreenWidget> {
  late Screen7HeightinputscreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Screen7HeightinputscreenModel());
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
              alignment: AlignmentDirectional(0.00, -0.10),
              child: Padding(
                padding:
                    EdgeInsetsDirectional.fromSTEB(0.0, 160.0, 150.0, 115.0),
                child: Container(
                  height: 852.0,
                  child: CarouselSlider(
                    items: [
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: SelectionArea(
                            child: Text(
                          '0\'',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        )),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '1\'',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.2,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '2\'',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 50.0,
                                fontWeight: FontWeight.w500,
                                lineHeight: 1.21,
                              ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '3\'',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '4\'',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '5\'',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '6\'',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '7\'',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '8\'',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                    ],
                    carouselController: _model.carouselController1 ??=
                        CarouselController(),
                    options: CarouselOptions(
                      initialPage: 1,
                      viewportFraction: 0.17,
                      disableCenter: false,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.38,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.vertical,
                      autoPlay: false,
                      onPageChanged: (index, _) =>
                          _model.carouselCurrentIndex1 = index,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, -1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 55.0, 0.0, 0.0),
                child: Text(
                  'What is Your Height?',
                  style: FlutterFlowTheme.of(context).headlineLarge.override(
                        fontFamily: 'Poppins',
                        fontSize: 30.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, -0.76),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                child: Text(
                  'Height in cm.  Don’t worry you can always change it later.',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.80, 0.91),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('screen6-weightinputscreen');
                },
                text: 'Back',
                options: FFButtonOptions(
                  width: 157.0,
                  height: 59.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFD99EBA),
                  textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
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
              alignment: AlignmentDirectional(0.76, 0.91),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('screen8-activitylevel');
                },
                text: 'Continue',
                options: FFButtonOptions(
                  width: 164.0,
                  height: 59.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xD5AD507A),
                  textStyle: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).info,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w500,
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
              alignment: AlignmentDirectional(0.48, -0.59),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Inches',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFFAD507A),
                        fontSize: 18.0,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.44, -0.59),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(2.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Feet',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        color: Color(0xD5AD507A),
                        fontSize: 20.0,
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Padding(
                padding:
                    EdgeInsetsDirectional.fromSTEB(165.0, 160.0, 0.0, 115.0),
                child: Container(
                  height: 852.0,
                  child: CarouselSlider(
                    items: [
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: SelectionArea(
                            child: Text(
                          '0\"',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        )),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '1\"',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.2,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '2\"',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 50.0,
                                fontWeight: FontWeight.w500,
                                lineHeight: 1.21,
                              ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '3\"',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '4\"',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '5\"',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '6\"',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '7\"',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '8\"',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '9\"',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '10\"',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.00, 0.00),
                        child: Text(
                          '11\"',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    fontSize: 50.0,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.21,
                                  ),
                        ),
                      ),
                    ],
                    carouselController: _model.carouselController2 ??=
                        CarouselController(),
                    options: CarouselOptions(
                      initialPage: 1,
                      viewportFraction: 0.17,
                      disableCenter: false,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.38,
                      enableInfiniteScroll: true,
                      scrollDirection: Axis.vertical,
                      autoPlay: false,
                      onPageChanged: (index, _) =>
                          _model.carouselCurrentIndex2 = index,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1.46, 0.06),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 28.0, 0.0),
                child: Icon(
                  Icons.arrow_left,
                  color: Color(0xD5AD507A),
                  size: 150.0,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.28, 0.06),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 28.0, 0.0),
                child: Icon(
                  Icons.arrow_right_outlined,
                  color: Color(0xD5AD507A),
                  size: 150.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
