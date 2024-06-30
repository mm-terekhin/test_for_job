import 'package:flutter/material.dart';
import 'package:test_for_job/app/app_router.dart';

class TestForJob extends StatelessWidget {
  const TestForJob({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter().router,
    );
  }
}
