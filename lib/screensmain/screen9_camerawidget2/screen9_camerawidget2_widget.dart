import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:share_plus/share_plus.dart';
import 'screen9_camerawidget2_model.dart';
export 'screen9_camerawidget2_model.dart';

class Screen9Camerawidget2Widget extends StatefulWidget {
  const Screen9Camerawidget2Widget({
    Key? key,
    this.fatParameter,
  }) : super(key: key);

  final bool? fatParameter;

  @override
  _Screen9Camerawidget2WidgetState createState() =>
      _Screen9Camerawidget2WidgetState();
}

class _Screen9Camerawidget2WidgetState
    extends State<Screen9Camerawidget2Widget> {
  late Screen9Camerawidget2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Screen9Camerawidget2Model());
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
              alignment: AlignmentDirectional(0.00, -0.65),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/balance-her-smfckc/assets/vg4i50xr0lep/Black_and_White_Simple_Technology_Mobile_Prototype-21.png',
                  width: 300.0,
                  height: 63.0,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Stack(
              children: [
                Stack(
                  children: [
                    Container(
                      width: 467.0,
                      height: 125.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFB84C65),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(-0.76, -0.71),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
                child: Container(
                  width: 393.0,
                  height: 36.0,
                  decoration: BoxDecoration(
                    color: Color(0xFFF38DAA),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, -0.86),
              child: Text(
                'Being Healthier',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).accent4,
                      fontSize: 28.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.91, -0.85),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.settings,
                  color: FlutterFlowTheme.of(context).info,
                  size: 25.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.95, -0.87),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 50.0,
                icon: FaIcon(
                  FontAwesomeIcons.solidBell,
                  color: FlutterFlowTheme.of(context).info,
                  size: 20.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.68, 0.75),
              child: Text(
                'Share',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: Color(0xFF8A2F47),
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.74),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).primaryText,
                borderRadius: 25.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                fillColor: FlutterFlowTheme.of(context).primaryText,
                icon: Icon(
                  Icons.circle_outlined,
                  color: FlutterFlowTheme.of(context).info,
                  size: 45.0,
                ),
                onPressed: () async {
                  // actionprimarycamera
                  final selectedMedia = await selectMedia(
                    multiImage: false,
                  );
                  if (selectedMedia != null &&
                      selectedMedia.every(
                          (m) => validateFileFormat(m.storagePath, context))) {
                    setState(() => _model.isDataUploading1 = true);
                    var selectedUploadedFiles = <FFUploadedFile>[];

                    try {
                      selectedUploadedFiles = selectedMedia
                          .map((m) => FFUploadedFile(
                                name: m.storagePath.split('/').last,
                                bytes: m.bytes,
                                height: m.dimensions?.height,
                                width: m.dimensions?.width,
                                blurHash: m.blurHash,
                              ))
                          .toList();
                    } finally {
                      _model.isDataUploading1 = false;
                    }
                    if (selectedUploadedFiles.length == selectedMedia.length) {
                      setState(() {
                        _model.uploadedLocalFile1 = selectedUploadedFiles.first;
                      });
                    } else {
                      setState(() {});
                      return;
                    }
                  }
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.68, 0.71),
              child: Builder(
                builder: (context) => FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 50.0,
                  icon: FaIcon(
                    FontAwesomeIcons.solidPaperPlane,
                    color: Color(0xFF8A2F47),
                    size: 30.0,
                  ),
                  onPressed: () async {
                    await Share.share(
                      '',
                      sharePositionOrigin: getWidgetBoundingBox(context),
                    );
                  },
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, -0.92),
              child: Text(
                'My Path To',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      color: FlutterFlowTheme.of(context).accent4,
                      fontSize: 20.0,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, -0.42),
              child: Container(
                width: 176.0,
                height: 200.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 60.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.network(
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/balance-her-smfckc/assets/zto9ufl561dn/16.jpeg',
                      width: 0.0,
                      height: 142.0,
                      fit: BoxFit.cover,
                      alignment: Alignment(0.00, 1.00),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.92, 0.17),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 75.0,
                icon: FaIcon(
                  FontAwesomeIcons.images,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 35.0,
                ),
                onPressed: () async {
                  final selectedMedia = await selectMedia(
                    mediaSource: MediaSource.photoGallery,
                    multiImage: false,
                  );
                  if (selectedMedia != null &&
                      selectedMedia.every(
                          (m) => validateFileFormat(m.storagePath, context))) {
                    setState(() => _model.isDataUploading2 = true);
                    var selectedUploadedFiles = <FFUploadedFile>[];

                    try {
                      selectedUploadedFiles = selectedMedia
                          .map((m) => FFUploadedFile(
                                name: m.storagePath.split('/').last,
                                bytes: m.bytes,
                                height: m.dimensions?.height,
                                width: m.dimensions?.width,
                                blurHash: m.blurHash,
                              ))
                          .toList();
                    } finally {
                      _model.isDataUploading2 = false;
                    }
                    if (selectedUploadedFiles.length == selectedMedia.length) {
                      setState(() {
                        _model.uploadedLocalFile2 = selectedUploadedFiles.first;
                      });
                    } else {
                      setState(() {});
                      return;
                    }
                  }
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.84, 0.25),
              child: Text(
                'Import ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 14.0,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.43, 0.18),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 2.0, 0.0),
                child: FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 70.0,
                  icon: Icon(
                    Icons.text_fields,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 40.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.40, 0.25),
              child: Text(
                'Add Text',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.98, 1.00),
              child: Container(
                width: 411.0,
                height: 85.0,
                decoration: BoxDecoration(
                  color: Color(0xFF9B4057),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(10.0),
                    topRight: Radius.circular(10.0),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.83, 0.96),
              child: FlutterFlowIconButton(
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 70.0,
                icon: Icon(
                  Icons.home,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pushNamed('screen12-tasksfortoday');
                },
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.75, 0.97),
              child: Text(
                'Home',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.31, 0.97),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 70.0,
                  icon: FaIcon(
                    FontAwesomeIcons.trophy,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 30.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('screen17-redeemnowscreen');
                  },
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.29, 0.97),
              child: Text(
                'Rewards',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.30, 0.97),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 70.0,
                  icon: FaIcon(
                    FontAwesomeIcons.clipboard,
                    color: FlutterFlowTheme.of(context).primaryText,
                    size: 35.0,
                  ),
                  onPressed: () async {
                    context.pushNamed('screen13-taskoverview');
                  },
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.86, 0.97),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                child: FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 20.0,
                  borderWidth: 1.0,
                  buttonSize: 70.0,
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
            ),
            Align(
              alignment: AlignmentDirectional(0.29, 0.97),
              child: Text(
                'Report ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.81, 0.97),
              child: Text(
                'Profile',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.03, -0.07),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/balance-her-smfckc/assets/z05ef3xehp53/Black_and_White_Simple_Technology_Mobile_Prototype-22.png',
                  width: 300.0,
                  height: 149.0,
                  fit: BoxFit.cover,
                  alignment: Alignment(0.00, 0.50),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.00, 0.02),
              child: FFButtonWidget(
                onPressed: () {
                  print('Button pressed ...');
                },
                text: 'Share Your Day',
                options: FFButtonOptions(
                  height: 45.0,
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: Color(0xFFC49899),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 12.0,
                        fontWeight: FontWeight.w600,
                      ),
                  elevation: 15.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.81, -0.51),
              child: Container(
                width: 60.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: Color(0xFF64B7AF),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Text(
                    '0 g',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.81, -0.36),
              child: Container(
                width: 60.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: Color(0xFF64B7AF),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Text(
                    '0 g',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.81, -0.20),
              child: Container(
                width: 60.0,
                height: 30.0,
                decoration: BoxDecoration(
                  color: Color(0xFF64B7AF),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Text(
                    '0 g',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.76, -0.43),
              child: Text(
                'Carbs',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.79, -0.28),
              child: Text(
                'Proteins',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.74, -0.13),
              child: Text(
                'Fats',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Poppins',
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
