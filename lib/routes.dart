import 'package:cvio/screens/history_screen.dart';
import 'package:cvio/screens/preview_screen.dart';
import 'package:cvio/screens/resumes_screen.dart';
import 'package:go_router/go_router.dart';
import 'screens/home_screen.dart';
import 'screens/personal_info_screen.dart';
import 'screens/resume_creation_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/personal-info',
      builder: (context, state) => PersonalInfoScreen(),
    ),
    GoRoute(
      path: '/history',
      builder: (context, state) => HistoryScreen(),
    ),
    GoRoute(
      path: '/resume-creation',
      builder: (context, state) => ResumeCreationScreen(),
    ),
    GoRoute(
      path: '/preview',
      builder: (context, state) {
        final key = state.extra as String;
        return PreviewScreen(resumeKey: key);
      },
    ),
    GoRoute(
      path: '/resumes',
      builder: (context, state) => ResumesScreen(),
    )
  ],
);
