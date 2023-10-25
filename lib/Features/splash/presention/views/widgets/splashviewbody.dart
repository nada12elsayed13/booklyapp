import 'package:booklyapp/Features/splash/presention/views/widgets/slideAnimation.dart';
import 'package:booklyapp/core/utils/assets.dart';
import 'package:booklyapp/core/utils/router_app.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sildeAnimation;
  @override
  void initState() {
    super.initState();
    InitSlideAnimation();
    delayNavigate();
  }


  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(Asset2.logo),
        const SizedBox(
          height: 4,
        ),
        SlideAnimation(sildeAnimation: sildeAnimation),
      ],
    );
  }

  void InitSlideAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    sildeAnimation = Tween<Offset>(begin: const Offset(0, 2), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }
  void delayNavigate() {
    Future.delayed(const Duration(seconds: 2), () {
      // Get.to(() =>const HomeView(),
      //     transition: Transition.fade, duration: kTranstionDuration);
      GoRouter.of(context).push(RouteApp.khomeView);
    },
    );
  }
}
