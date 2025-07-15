import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'credite_model.dart';
export 'credite_model.dart';

class CrediteWidget extends StatefulWidget {
  const CrediteWidget({super.key});

  static String routeName = 'Credite';
  static String routePath = '/credite';

  @override
  State<CrediteWidget> createState() => _CrediteWidgetState();
}

class _CrediteWidgetState extends State<CrediteWidget> {
  late CrediteModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CrediteModel());
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
            context.pushNamed(
              SetariWidget.routeName,
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.leftToRight,
                ),
              },
            );
          },
          child: Icon(
            Icons.chevron_left_rounded,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 32.0,
          ),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Credits',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    font: GoogleFonts.interTight(
                      fontWeight: FlutterFlowTheme.of(context)
                          .headlineMedium
                          .fontWeight,
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
          ],
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Divider(
                            height: 32.0,
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 8.0, 0.0, 0.0),
                            child: SelectionArea(
                                child: Text(
                              'We thank all the people who provided the video material and other outside content.\nList:\n\nVideo links:\nhttps://www.youtube.com/watch?v=TN9i9Ni0Xr4\nhttps://www.youtube.com/watch?v=7S0NjKYlJ7I\nhttps://www.youtube.com/watch?v=3JOEZb46-dM\nhttps://www.youtube.com/watch?v=vyiQw-qiv80\nhttps://www.youtube.com/watch?v=Wla7FB3Vrm0\nhttps://www.youtube.com/watch?v=q6Fh07zQ2K\nhttps://www.youtube.com/watch?v=I-k-iTUMQAY&t=11s\nhttps://www.youtube.com/watch?v=ZzaPdXTrSb8\nhttps://www.youtube.com/watch?v=kqtD5dpn9C8\nhttps://www.youtube.com/watch?v=P6W8kwmwcno\nhttps://www.youtube.com/watch?v=p3EwVIpzFjI&t=151s\nhttps://www.youtube.com/watch?v=ptXB3rUisgk&t=47s\nhttps://www.youtube.com/watch?v=R1d_vprBkTE&t=661s\nhttps://www.youtube.com/watch?v=HZOEXUOyiLA\nhttps://www.youtube.com/watch?v=GwCojS5gv70\nhttps://www.youtube.com/watch?v=C_XmUKSB4aI\nhttps://www.youtube.com/watch?v=aCWPUZMpPHg\nhttps://www.youtube.com/watch?v=Ft9oBxsgao0\nhttps://www.youtube.com/watch?v=5_c6K_DYpRU\nhttps://www.youtube.com/watch?v=-P0OVbWvw7I\nhttps://www.youtube.com/watch?v=OCSbzArwB10\nhttps://www.youtube.com/watch?v=6IegDENuxU4\nhttps://www.youtube.com/watch?v=5lrhxxtevZo\nhttps://www.youtube.com/watch?v=xUqTgNJgWUs\n\nPictures:\nhttps://hellscanyon.tours/2023/01/30/10-pieces-of-fishing-equipment-and-their-uses/\nhttps://wavewear.cc/blogs/blog/an-introduction-to-the-art-of-archery-a-sport-of-skill-and-precision\nhttps://www.woodbridgetownnews.com/news/advantages-of-small-gardening\nhttps://campsaround.com/camping-guide-for-beginners/\nhttps://enterprise.ro/blog/top-10-destinatii-de-camping-unde-poti-ajunge-cu-masina/\nhttps://www.sweetwater.com/insync/parts-of-a-guitar/\nhttps://www.codiga.io/blog/top-programming-languages/\nhttps://www.pexels.com/photo/an-on-treadmill-1954524/\nhttps://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Chess_pieces_close_up.jpg/960px-Chess_pieces_close_up.jpg\nhttps://wasatchpeak.com/take-care-of-your-hands-artist/\nhttps://medium.com/@Ashfaq.Robin/top-10-programming-languages-of-the-future-updated-in-2020-5cb1e4722bc\nhttps://img.freepik.com/premium-vector/default-avatar-profile-icon-social-media-user-image-gray-avatar-icon-blank-profile-silhouette-vector-illustration_561158-3467.jpg?w=360\nhttps://www.covlivinggreatlakes.org/event/the-inspired-chef/\nhttps://www.govtech.com/question-of-the-day/why-are-musicians-dropping-out-of-sxsw\nhttps://www.homesandgardens.com/gardens/how-often-should-you-water-a-vegetable-garden\nhttps://invacare.eu.com/blog/what-is-wheelchair-archery/\nhttps://www.ubuy.com.ro/en/product/J8Z6UA4I8-tungsten-drop-shot-cylinder-weights-fishing-sinkers-sinks-quickly-1-74-times-heavier-than-lead-weights-smaller-size-cylinder-shape-quick-connect?ref=hm-google-redirect\nhttps://www.npr.org/sections/alltechconsidered/2016/10/24/499162905/20-years-later-humans-still-no-match-for-computers-on-the-chessboarhttps://open.spotify.com/track/3OiD9MrzqXCev3WkNsCoIp\nhttps://open.spotify.com/track/3OiD9MrzqXCev3WkNsCoIp\nhttps://t-hause.jimdofree.com/home/\nhttps://www.burnssheehan.co.uk/blog/write-more-valuable-tests-with-react-testing-library/bp1800/\nhttps://www.pinterest.com/pin/793689134347843038/\n\ninstagram profiles:\nhttps://www.instagram.com/traditional_motivation?igsh=OGRucXdhbXY4M2xp\nhttps://www.instagram.com/stoics.perspective?igsh=eDEwNm5tNWR6NXBt\nhttps://www.instagram.com/mystical_lads?igsh=MTdhNXRyNXJueXUydA==',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    font: GoogleFonts.inter(
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .fontStyle,
                                    ),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .fontStyle,
                                  ),
                            )),
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
    );
  }
}
