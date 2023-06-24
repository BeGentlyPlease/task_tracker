import 'package:go_router/go_router.dart';

import '../widgets/blank_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => BlankScreen.getScreen(
        context,
        BlankScreenArgs(
          path: state.fullPath,
        ),
      ),
    )
  ],
);
