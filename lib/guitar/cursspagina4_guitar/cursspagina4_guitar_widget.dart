import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'cursspagina4_guitar_model.dart';
export 'cursspagina4_guitar_model.dart';

class Cursspagina4GuitarWidget extends StatefulWidget {
  const Cursspagina4GuitarWidget({super.key});

  static String routeName = 'Cursspagina4Guitar';
  static String routePath = '/cursspagina4Guitar';

  @override
  State<Cursspagina4GuitarWidget> createState() =>
      _Cursspagina4GuitarWidgetState();
}

class _Cursspagina4GuitarWidgetState extends State<Cursspagina4GuitarWidget> {
  late Cursspagina4GuitarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cursspagina4GuitarModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            context.pushNamed(MainPageWidget.routeName);
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 32.0,
          ),
        ),
        title: Text(
          'GUITAR',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                font: GoogleFonts.interTight(
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight:
                    FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                fontStyle:
                    FlutterFlowTheme.of(context).headlineMedium.fontStyle,
              ),
        ),
        actions: [
          Align(
            alignment: AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: EdgeInsets.all(6.0),
              child: FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                fillColor: FlutterFlowTheme.of(context).info,
                icon: Icon(
                  Icons.home,
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pushNamed(MainPageWidget.routeName);
                },
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Container(
                            width: 389.0,
                            height: 250.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/how-to-play-guitar-for-beginners-01.jpg',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(24.0),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color:
                                    FlutterFlowTheme.of(context).customColor2,
                                width: 5.0,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 8.0, 0.0, 8.0),
                                child: Text(
                                  'Progress',
                                  style: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        font: GoogleFonts.interTight(
                                          fontWeight:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontWeight,
                                          fontStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .fontStyle,
                                        ),
                                        color: FlutterFlowTheme.of(context)
                                            .customColor2,
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                ),
                              ),
                              Text(
                                'For those who are eager to learn to play a certain instrument, they can learn to play the guitar from these courses, a skill that is not only enjoyable as a hobby but can also bring income for those who produce music.',
                                style: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .labelLarge
                                            .fontStyle,
                                      ),
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelLarge
                                          .fontStyle,
                                    ),
                              ),
                              Divider(
                                height: 32.0,
                                thickness: 1.0,
                                color: FlutterFlowTheme.of(context).alternate,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(VideoG1Widget.routeName);
                      },
                      child: Container(
                        width: 389.0,
                        height: 65.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).customColor2,
                            width: 2.0,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.9, 0.0),
                              child: Icon(
                                Icons.play_circle,
                                color: FlutterFlowTheme.of(context).info,
                                size: 50.0,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                'Video 1 | Guitar basics',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .customColor8,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(QuizG1Widget.routeName);
                      },
                      child: Container(
                        width: 389.0,
                        height: 65.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).customColor2,
                            width: 2.0,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.9, 0.0),
                              child: Icon(
                                Icons.content_paste_search,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 50.0,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                'Quiz 1 | Learn',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .customColor8,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(Guitar1Widget.routeName);
                      },
                      child: Container(
                        width: 389.0,
                        height: 65.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).customColor2,
                            width: 2.0,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(0.9, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.guitar,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 50.0,
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                'Practice| Play the guitar',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .customColor8,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(VideoG2Widget.routeName);
                      },
                      child: Container(
                        width: 389.0,
                        height: 65.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).customColor2,
                            width: 2.0,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                'Video 2 | Guitar part 2',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .customColor8,
                                      fontSize: 22.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.9, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.mitten,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 45.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(Guitar2Widget.routeName);
                      },
                      child: Container(
                        width: 389.0,
                        height: 65.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).customColor2,
                            width: 2.0,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                'Practice | More guitar',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .customColor8,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.9, 0.0),
                              child: FaIcon(
                                FontAwesomeIcons.guitar,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 50.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed(TaskGWidget.routeName);
                      },
                      child: Container(
                        width: 389.0,
                        height: 65.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(20.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).customColor2,
                            width: 2.0,
                          ),
                        ),
                        child: Stack(
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-0.9, 0.0),
                              child: Text(
                                'Practice | Grind',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.interTight(
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: FlutterFlowTheme.of(context)
                                          .customColor8,
                                      letterSpacing: 0.0,
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                              ),
                            ),
                            Align(
                              alignment: AlignmentDirectional(0.9, 0.0),
                              child: Icon(
                                Icons.check_box_outlined,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 50.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ]
                      .divide(SizedBox(height: 7.0))
                      .addToEnd(SizedBox(height: 100.0)),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.0, 0.92),
                child: Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 0.0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed(VideoG1Widget.routeName);
                    },
                    text: 'Start',
                    options: FFButtonOptions(
                      width: double.infinity,
                      height: 60.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                      color: FlutterFlowTheme.of(context).customColor2,
                      textStyle:
                          FlutterFlowTheme.of(context).titleMedium.override(
                                font: GoogleFonts.interTight(
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context).info,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .fontStyle,
                              ),
                      elevation: 4.0,
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1.0,
                      ),
                      borderRadius: BorderRadius.circular(50.0),
                      hoverColor: FlutterFlowTheme.of(context).customColor1,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
