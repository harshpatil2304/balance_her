import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'screen2_cravingtoday_model.dart';
export 'screen2_cravingtoday_model.dart';

class Screen2CravingtodayWidget extends StatefulWidget {
  const Screen2CravingtodayWidget({Key? key}) : super(key: key);

  @override
  _Screen2CravingtodayWidgetState createState() =>
      _Screen2CravingtodayWidgetState();
}

class _Screen2CravingtodayWidgetState extends State<Screen2CravingtodayWidget> {
  late Screen2CravingtodayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Screen2CravingtodayModel());
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
        backgroundColor: FlutterFlowTheme.of(context).info,
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, -1.00),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 470.0),
                      child: Transform(
                        transform: Matrix4.skew(-1.8, 2.7),
                        child: Align(
                          alignment: AlignmentDirectional(-1.00, -1.00),
                          child: Icon(
                            Icons.circle_rounded,
                            color: Color(0xE1AD507A),
                            size: 650.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.99),
                    child: Container(
                      width: 396.0,
                      height: 80.0,
                      decoration: BoxDecoration(
                        color: Color(0xE1AD507A),
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.00, -0.10),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                      child: FlutterFlowDropDown<String>(
                        controller: _model.dropDownValueController1 ??=
                            FormFieldController<String>(null),
                        options: [
                          '          Beginner',
                          '          Intermediate',
                          '          Advanced'
                        ],
                        onChanged: (val) =>
                            setState(() => _model.dropDownValue1 = val),
                        width: 300.0,
                        height: 60.0,
                        textStyle:
                            FlutterFlowTheme.of(context).displayLarge.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xE1AD507A),
                                  fontSize: 22.0,
                                  fontWeight: FontWeight.w500,
                                ),
                        hintText: '          Level',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor: FlutterFlowTheme.of(context).alternate,
                        elevation: 2.0,
                        borderColor: FlutterFlowTheme.of(context).alternate,
                        borderWidth: 2.0,
                        borderRadius: 10.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            16.0, 4.0, 16.0, 4.0),
                        hidesUnderline: true,
                        isSearchable: false,
                        isMultiSelect: false,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(-0.62, -0.09),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 12.0),
                      child: Icon(
                        Icons.filter_list_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 35.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0.00, -1.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 470.0),
                    child: Transform(
                      transform: Matrix4.skew(-1.8, 2.7),
                      child: Stack(
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0.00, 0.00),
                            child: Icon(
                              Icons.circle_rounded,
                              color: Color(0xE1AD507A),
                              size: 650.0,
                            ),
                          ),
                          Stack(
                            children: [],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.99),
                  child: Container(
                    width: 396.0,
                    height: 80.0,
                    decoration: BoxDecoration(
                      color: Color(0xE1AD507A),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.13),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController2 ??=
                          FormFieldController<String>(null),
                      options: [
                        '          Breakfast',
                        '          Lunch',
                        '          Dinner'
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue2 = val),
                      width: 300.0,
                      height: 60.0,
                      textStyle:
                          FlutterFlowTheme.of(context).displayLarge.override(
                                fontFamily: 'Poppins',
                                color: Color(0xE1AD507A),
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500,
                              ),
                      hintText: '          Meal Course',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 2.0,
                      borderRadius: 10.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.63, 0.12),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                    child: Icon(
                      Icons.food_bank,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 40.0,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.00, 0.34),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController3 ??=
                          FormFieldController<String>(null),
                      options: [
                        '          Vegetarian',
                        '          Non-Vegetarian'
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue3 = val),
                      width: 300.0,
                      height: 60.0,
                      textStyle:
                          FlutterFlowTheme.of(context).displayLarge.override(
                                fontFamily: 'Poppins',
                                color: Color(0xE1AD507A),
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500,
                              ),
                      hintText: '          Veg / Non-Veg',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 2.0,
                      borderRadius: 10.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.62, 0.32),
                  child: FaIcon(
                    FontAwesomeIcons.leaf,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 30.0,
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.05, 0.57),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 15.0),
                    child: FlutterFlowDropDown<String>(
                      controller: _model.dropDownValueController4 ??=
                          FormFieldController<String>(null),
                      options: [
                        '          American',
                        '          Chinese',
                        '          French',
                        '          Thai',
                        '          Italian',
                        '          Indian',
                        '          Sichuan',
                        '          Lebanese',
                        '          Spanish',
                        '          Western'
                      ],
                      onChanged: (val) =>
                          setState(() => _model.dropDownValue4 = val),
                      width: 300.0,
                      height: 60.0,
                      textStyle:
                          FlutterFlowTheme.of(context).displayLarge.override(
                                fontFamily: 'Poppins',
                                color: Color(0xE1AD507A),
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500,
                              ),
                      hintText: '           Cuisine',
                      icon: Icon(
                        Icons.keyboard_arrow_down_rounded,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      fillColor: FlutterFlowTheme.of(context).alternate,
                      elevation: 2.0,
                      borderColor: FlutterFlowTheme.of(context).alternate,
                      borderWidth: 2.0,
                      borderRadius: 10.0,
                      margin:
                          EdgeInsetsDirectional.fromSTEB(16.0, 4.0, 16.0, 4.0),
                      hidesUnderline: true,
                      isSearchable: false,
                      isMultiSelect: false,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.61, 0.51),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: FaIcon(
                      FontAwesomeIcons.globe,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 30.0,
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.51, -0.84),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(50.0, 50.0, 50.0, 120.0),
                    child: Text(
                      'What\'s Your Foodie Fam Craving Today ?',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Poppins',
                            color: Color(0xEAE8E8E8),
                            fontSize: 30.0,
                            lineHeight: 1.5,
                          ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.93, -0.93),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 50.0,
                    fillColor: Color(0xE1AD507A),
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      color: Color(0xEAE8E8E8),
                      size: 30.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0.92, -0.92),
                  child: FlutterFlowIconButton(
                    borderColor: Color(0xE1AD507A),
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 50.0,
                    fillColor: Color(0xE1AD507A),
                    icon: FaIcon(
                      FontAwesomeIcons.bell,
                      color: Color(0xEAE8E8E8),
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.01, 0.73),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('beginner-lunch-veg-western');
                      },
                      text: 'SUBMIT',
                      options: FFButtonOptions(
                        width: 180.0,
                        height: 45.0,
                        padding: EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: Color(0xE1E078A9),
                        textStyle: FlutterFlowTheme.of(context)
                            .titleSmall
                            .override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.w500,
                            ),
                        elevation: 3.0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
