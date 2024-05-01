import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingAnimation extends StatelessWidget {
  const LoadingAnimation({
    super.key,
    required this.loading,
  });

  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: loading,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          decoration: const BoxDecoration(),
          height: double.infinity,
          width: double.infinity,
          child: const Center(
            child: SpinKitFadingCircle(
              color: Colors.black,
            ),
          ),
        ),
      ),
    )
        .animate()
        .fade(duration: const Duration(microseconds: 800))
        .scale(delay: 500.ms);
  }
}
