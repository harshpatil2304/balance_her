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
import 'screen1_launchscreen_model.dart';
export 'screen1_launchscreen_model.dart';

class Screen1LaunchscreenWidget extends StatefulWidget {
  const Screen1LaunchscreenWidget({Key? key}) : super(key: key);

  @override
  _Screen1LaunchscreenWidgetState createState() =>
      _Screen1LaunchscreenWidgetState();
}

class _Screen1LaunchscreenWidgetState extends State<Screen1LaunchscreenWidget> {
  late Screen1LaunchscreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Screen1LaunchscreenModel());
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
              alignment: AlignmentDirectional(0.02, 0.74),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'screen2-onboardingscreen',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.bottomToTop,
                        duration: Duration(milliseconds: 5),
                      ),
                    },
                  );
                },
                text: 'GET STARTED',
                options: FFButtonOptions(
                  width: 200.0,
                  height: 40.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0x74AC6582),
                  textStyle: GoogleFonts.getFont(
                    'Poppins',
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                  ),
                  elevation: 1.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(15.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, -1.00),
              child: Padding(
                padding:
                    EdgeInsetsDirectional.fromSTEB(125.0, 70.0, 30.0, 30.0),
                child: LinearPercentIndicator(
                  percent: 0.45,
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
