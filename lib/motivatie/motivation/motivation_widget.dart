import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'motivation_model.dart';
export 'motivation_model.dart';

class MotivationWidget extends StatefulWidget {
  const MotivationWidget({super.key});

  static String routeName = 'Motivation';
  static String routePath = '/motivation';

  @override
  State<MotivationWidget> createState() => _MotivationWidgetState();
}

class _MotivationWidgetState extends State<MotivationWidget>
    with TickerProviderStateMixin {
  late MotivationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MotivationModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 50.0,
              fillColor: FlutterFlowTheme.of(context).primaryBackground,
              icon: Icon(
                Icons.arrow_back,
                color: FlutterFlowTheme.of(context).info,
                size: 30.0,
              ),
              onPressed: () async {
                context.safePop();
              },
            ),
          ),
          title: Text(
            'Motivation',
            style: FlutterFlowTheme.of(context).displaySmall.override(
                  font: GoogleFonts.interTight(
                    fontWeight:
                        FlutterFlowTheme.of(context).displaySmall.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).displaySmall.fontStyle,
                  ),
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).displaySmall.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).displaySmall.fontStyle,
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
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment(0.0, 0),
                                child: TabBar(
                                  labelColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  unselectedLabelColor:
                                      FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  labelStyle: FlutterFlowTheme.of(context)
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
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .titleMedium
                                            .fontStyle,
                                      ),
                                  unselectedLabelStyle:
                                      FlutterFlowTheme.of(context)
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
                                            letterSpacing: 0.0,
                                            fontWeight:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontWeight,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleMedium
                                                    .fontStyle,
                                          ),
                                  indicatorColor:
                                      FlutterFlowTheme.of(context).customColor2,
                                  tabs: [
                                    Tab(
                                      text: 'Motivation',
                                    ),
                                    Tab(
                                      text: 'Inspiration',
                                    ),
                                    Tab(
                                      text: 'Wisdom',
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                  onTap: (i) async {
                                    [
                                      () async {},
                                      () async {},
                                      () async {}
                                    ][i]();
                                  },
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.tabBarController,
                                  physics: const NeverScrollableScrollPhysics(),
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Container(
                                          width: 1440.0,
                                          height: 480.0,
                                          child: CarouselSlider(
                                            items: [
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.08_PM_(3).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.08_PM_(6).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.08_PM_(8).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.08_PM_(9).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.08_PM_(4).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.08_PM.jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.08_PM_(7).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.06_PM_(3).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.06_PM_(4).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.08_PM_(5).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.08_PM_(1).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.07_PM.jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.07_PM_(10).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.07_PM_(9).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.08_PM_(2).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.07_PM_(7).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.07_PM_(8).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.07_PM_(5).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.07_PM_(4).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.07_PM_(6).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.07_PM_(3).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.07_PM_(1).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.06_PM_(5).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                              ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.asset(
                                                  'assets/images/WhatsApp_Image_2025-06-09_at_2.04.06_PM_(6).jpeg',
                                                  width: 200.0,
                                                  height: 200.0,
                                                  fit: BoxFit.fill,
                                                ),
                                              ),
                                            ],
                                            carouselController:
                                                _model.carouselController1 ??=
                                                    CarouselSliderController(),
                                            options: CarouselOptions(
                                              initialPage: 1,
                                              viewportFraction: 0.85,
                                              disableCenter: true,
                                              enlargeCenterPage: true,
                                              enlargeFactor: 0.25,
                                              enableInfiniteScroll: true,
                                              scrollDirection: Axis.horizontal,
                                              autoPlay: false,
                                              onPageChanged: (index, _) =>
                                                  _model.carouselCurrentIndex1 =
                                                      index,
                                            ),
                                          ),
                                        ),
                                      ].addToStart(SizedBox(height: 10.0)),
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 1440.0,
                                            height: 480.0,
                                            child: CarouselSlider(
                                              items: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.03_PM_(1).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.04_PM.jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.04_PM_(1).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.04_PM_(2).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.04_PM_(3).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.05_PM.jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.02_PM.jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.02_PM_(2).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.03_PM_(4).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.03_PM_(3).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.05_PM_(1).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.03_PM_(2).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.02_PM_(1).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.01_PM.jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.01_PM_(3).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.01_PM_(2).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.01_PM_(1).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                              carouselController: _model
                                                      .carouselController2 ??=
                                                  CarouselSliderController(),
                                              options: CarouselOptions(
                                                initialPage: 1,
                                                viewportFraction: 0.85,
                                                disableCenter: true,
                                                enlargeCenterPage: true,
                                                enlargeFactor: 0.25,
                                                enableInfiniteScroll: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                autoPlay: false,
                                                onPageChanged: (index, _) =>
                                                    _model.carouselCurrentIndex2 =
                                                        index,
                                              ),
                                            ),
                                          ),
                                        ].addToStart(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                    SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Container(
                                            width: 1440.0,
                                            height: 480.0,
                                            child: CarouselSlider(
                                              items: [
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.16_PM_(2).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.16_PM_(3).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.16_PM_(1).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.16_PM.jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.15_PM.jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.59.03_PM.jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.15_PM_(7).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.15_PM_(6).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.15_PM_(5).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.15_PM_(4).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.15_PM_(3).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.15_PM_(1).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.14_PM.jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.15_PM_(2).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.14_PM_(4).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.14_PM_(2).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.13_PM.jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                ClipRRect(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
                                                  child: Image.asset(
                                                    'assets/images/WhatsApp_Image_2025-06-10_at_3.09.13_PM_(1).jpeg',
                                                    width: 200.0,
                                                    height: 200.0,
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                              ],
                                              carouselController: _model
                                                      .carouselController3 ??=
                                                  CarouselSliderController(),
                                              options: CarouselOptions(
                                                initialPage: 1,
                                                viewportFraction: 0.85,
                                                disableCenter: true,
                                                enlargeCenterPage: true,
                                                enlargeFactor: 0.25,
                                                enableInfiniteScroll: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                autoPlay: false,
                                                onPageChanged: (index, _) =>
                                                    _model.carouselCurrentIndex3 =
                                                        index,
                                              ),
                                            ),
                                          ),
                                        ].addToStart(SizedBox(height: 10.0)),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
