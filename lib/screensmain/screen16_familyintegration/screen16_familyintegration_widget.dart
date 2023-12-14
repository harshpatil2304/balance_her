import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'screen16_familyintegration_model.dart';
export 'screen16_familyintegration_model.dart';

class Screen16FamilyintegrationWidget extends StatefulWidget {
  const Screen16FamilyintegrationWidget({Key? key}) : super(key: key);

  @override
  _Screen16FamilyintegrationWidgetState createState() =>
      _Screen16FamilyintegrationWidgetState();
}

class _Screen16FamilyintegrationWidgetState
    extends State<Screen16FamilyintegrationWidget> {
  late Screen16FamilyintegrationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Screen16FamilyintegrationModel());
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
              alignment: AlignmentDirectional(-0.05, 0.50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/balance-her-smfckc/assets/9l06ubyl0hvj/Black_and_White_Simple_Technology_Mobile_Prototype-9.png',
                  width: 300.0,
                  height: 229.0,
                  fit: BoxFit.cover,
                  alignment: Alignment(0.00, 0.00),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.05, 0.74),
              child: Container(
                width: 305.0,
                height: 100.0,
                decoration: BoxDecoration(
                  color: Color(0xFFB84C65),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
                        child: Text(
                          'You have now Connected\n\n         Family Members ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context).accent4,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 50.0, 0.0),
                        child: Text(
                          '[Number of Family Mme Connected]',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 10.0,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.73, 0.71),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 80.0,
                icon: Icon(
                  Icons.add_circle,
                  color: FlutterFlowTheme.of(context).info,
                  size: 60.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.01, -0.79),
              child: Text(
                'Family Integration',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: Color(0xE79B3865),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.97, -0.93),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.chevron_left,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 40.0,
                ),
                onPressed: () async {
                  context.pushNamed('screen12-tasksfortoday');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.98, -0.93),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: FaIcon(
                  FontAwesomeIcons.solidBell,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.07, -0.28),
              child: Container(
                width: 165.0,
                height: 165.0,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/balance-her-smfckc/assets/4nl5efrnjtvc/360_F_552156839_hQTIBjd35zljkgSz65pDaUUSyKK53DtZ.jpg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, -0.37),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                // child: Lottie.network(
                //   'https://lottie.host/531aed06-8edd-474a-9535-613bfd47d871/BroMhYd4Xy.json',
                //   width: 321.0,
                //   height: 407.0,
                //   fit: BoxFit.cover,
                //   animate: true,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
