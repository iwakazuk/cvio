import 'package:go_router/go_router.dart';
import 'screens/home_screen.dart';
import 'screens/user_info_screen.dart';
import 'screens/personal_info/personal_info_screen.dart';
import 'screens/education_and_work_screen.dart';
import 'screens/resume_creation_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomeScreen(),
    ),
    GoRoute(
      path: '/user-info',
      builder: (context, state) => UserInfoScreen(),
    ),
    GoRoute(
      path: '/personal-info',
      builder: (context, state) => PersonalInfoScreen(),
    ),
    GoRoute(
      path: '/education-and-work',
      builder: (context, state) => EducationAndWorkScreen(),
    ),
    GoRoute(
      path: '/resume-creation-screen',
      builder: (context, state) => ResumeCreationScreen(),
    ),
  ],
);
