import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../widgets/welcome.dart';

class WelcomeScren extends StatelessWidget {
  const WelcomeScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _CustomBody(),
    );
  }
}

class _CustomBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;

    return Column(
      children: [
        _AnimationWidget(size: size),
        WelcomeWidget(size: size)
        // Platform.isAndroid ? WelcomeWidget(size: size) : WelcomeAndrod(),
      ],
    );
  }
}

class _AnimationWidget extends StatelessWidget {
  const _AnimationWidget({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size * 0.6,
      width: double.infinity,
      // color: Colors.amber,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Lottie.asset(
              'assets/animations/beer.json',
            ),
          ),
          const Text(
            "deeps",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
          ),
          const Text(
            "B E E R C A F E",
            style: TextStyle(fontWeight: FontWeight.w300, fontSize: 25),
          ),
        ],
      ),
    );
  }
}
