import 'package:auto_route/auto_route.dart';
import 'package:chore_champion/src/resources/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Offset animationOffset = const Offset(0, 0.5);
  double animationOpacity = 0;
  late SvgPicture image;

  @override
  void initState() {
    super.initState();

    const loader = SvgAssetLoader('assets/images/demo_logo.svg');
    svg.cache.putIfAbsent(loader.cacheKey(null), () => loader.loadBytes(null));
    image = const SvgPicture(loader);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _imageSlideUp(200);
    _runGoToHome();
  }

  Future<void> _imageSlideUp(int milliseconds) async {
    await Future<void>.delayed(
      Duration(milliseconds: milliseconds),
    ).then(
      (_) => setState(
        () {
          animationOffset = const Offset(0, 0);
          animationOpacity = 1;
        },
      ),
    );
  }

  Future<void> _runGoToHome() async {
    await Future<void>.delayed(
      const Duration(milliseconds: 1700),
    ).then(
      (_) => _goToHome(context),
    );
  }

  void _goToHome(BuildContext context) {
    context.router.replace(const HomeRoute());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedSlide(
          offset: animationOffset,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.easeOut,
          child: AnimatedOpacity(
            opacity: animationOpacity,
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeIn,
            child: image,
          ),
        ),
      ),
    );
  }
}
