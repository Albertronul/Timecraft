import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'motivation_widget.dart' show MotivationWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class MotivationModel extends FlutterFlowModel<MotivationWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController1;
  int carouselCurrentIndex1 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController2;
  int carouselCurrentIndex2 = 1;

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController3;
  int carouselCurrentIndex3 = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
