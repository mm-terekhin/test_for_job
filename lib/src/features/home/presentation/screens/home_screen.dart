import 'package:flutter/material.dart';
import 'package:test_for_job/src/shared/presentation/presentation.dart';

import '../../home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomResponsive(
      mobileScreen: DeviseCheckInherited(
        isTablet: false,
        child: Builder(
          builder: (context) {
            return const HomeView();
          },
        ),
      ),
      tabletScreen: DeviseCheckInherited(
        isTablet: true,
        child: Builder(builder: (context) {
          return const HomeView();
        }),
      ),
    );
  }
}

class DeviseCheckInherited extends InheritedWidget {
  const DeviseCheckInherited({
    super.key,
    required this.isTablet,
    required super.child,
  });

  final bool isTablet;

  static DeviseCheckInherited? maybeOf(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<DeviseCheckInherited>();

  static DeviseCheckInherited of(BuildContext context) {
    final deviseCheckInher = maybeOf(context);

    if (deviseCheckInher == null) {
      throw FlutterError('');
    }

    return deviseCheckInher;
  }

  @override
  bool updateShouldNotify(covariant DeviseCheckInherited oldWidget) =>
      oldWidget.isTablet != isTablet;
}
