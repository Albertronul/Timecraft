import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'flash_cards12_d_widget.dart' show FlashCards12DWidget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FlashCards12DModel extends FlutterFlowModel<FlashCards12DWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
