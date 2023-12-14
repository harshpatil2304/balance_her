import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'screen17_redeemnowscreen_model.dart';
export 'screen17_redeemnowscreen_model.dart';

class Screen17RedeemnowscreenWidget extends StatefulWidget {
  const Screen17RedeemnowscreenWidget({Key? key}) : super(key: key);

  @override
  _Screen17RedeemnowscreenWidgetState createState() =>
      _Screen17RedeemnowscreenWidgetState();
}

class _Screen17RedeemnowscreenWidgetState
    extends State<Screen17RedeemnowscreenWidget> {
  late Screen17RedeemnowscreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Screen17RedeemnowscreenModel());
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
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/balance-her-smfckc/assets/665eek7umx74/Black_and_White_Simple_Technology_Mobile_Prototype-10.png',
                  width: 400.0,
                  height: 850.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.76, -0.77),
              child: Text(
                'Hello Divyani',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 15.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.63, -0.69),
              child: Text(
                'Welcome Back !',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 25.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.79, -0.47),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                child: FaIcon(
                  FontAwesomeIcons.coins,
                  color: Color(0xFFF5C116),
                  size: 24.0,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.49, -0.47),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                child: Text(
                  'Points : ',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.09, -0.46),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                child: Text(
                  random_data.randomInteger(0, 5000000).toString(),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.73, 0.73),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 35.0),
                child: BarcodeWidget(
                  data: 'Barcode',
                  barcode: Barcode.qrCode(),
                  width: 90.0,
                  height: 90.0,
                  color: FlutterFlowTheme.of(context).primaryText,
                  backgroundColor: Colors.transparent,
                  errorBuilder: (_context, _error) => SizedBox(
                    width: 90.0,
                    height: 90.0,
                  ),
                  drawText: false,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.76, 0.70),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 35.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('screen18-couponscreen');
                  },
                  text: 'Redeem Now   >',
                  options: FFButtonOptions(
                    width: 220.0,
                    height: 70.0,
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primaryText,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                    elevation: 3.0,
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.83, 0.80),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 30.0),
                child: Text(
                  'Use This QR code when you  check out\n to get points ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Poppins',
                        fontSize: 12.0,
                        lineHeight: 1.2,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, -0.05),
              // child: Lottie.network(
              //   'https://lottie.host/7bd6abce-3fd0-41cd-ab8c-438776f2bd1e/9784c5aoUj.json',
              //   width: 500.0,
              //   height: 350.0,
              //   fit: BoxFit.cover,
              //   animate: true,
              // ),
            ),
            Align(
              alignment: AlignmentDirectional(0.96, -0.81),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.person,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 40.0,
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
