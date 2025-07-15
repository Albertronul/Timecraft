import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'flash_cards_e2_widget.dart' show FlashCardsE2Widget;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FlashCardsE2Model extends FlutterFlowModel<FlashCardsE2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Carousel widget.
  CarouselSliderController? carouselController;
  int carouselCurrentIndex = 1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
