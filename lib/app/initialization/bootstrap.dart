import 'dart:async';

import 'package:flutter/widgets.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  await runZonedGuarded(
    () async {
      runApp(
        await builder(),
      );
    },
    (error, stackTrace) => debugPrint(error.toString()),
  );
}
