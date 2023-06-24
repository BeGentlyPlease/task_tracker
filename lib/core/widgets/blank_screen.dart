import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../routing/screen_args.dart';

class BlankScreenArgs extends ScreenArgs {
  const BlankScreenArgs({String? path}) : super(path: path);
}

class BlankScreen extends StatelessWidget {
  const BlankScreen({super.key, this.path});

  final String? path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).blankScreen)),
      body: Center(
        child: Text(
          S.of(context).currentPath(path ?? ''),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
    );
  }

  static BlankScreen getScreen(BuildContext context, BlankScreenArgs args) {
    return BlankScreen(path: args.path);
  }
}
