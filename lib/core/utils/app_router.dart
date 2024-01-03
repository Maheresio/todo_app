import 'package:go_router/go_router.dart';

import '../../features/home/view/home_view.dart';
import '../../features/splash/view/splash_view.dart';
import '../helpers/custom_transition_page.dart';

abstract class AppRouter {
  static const kOnBoardingView = '/onBoardingView';
  static const kHomeView = '/homeView';
  static const kLoginView = '/loginView';
  static const kSignUpView = '/signUpView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) {
          return const SplashView();
        },
      ),
      // GoRoute(
      //   path: kOnBoardingView,
      //   builder: (context, state) {
      //     return const OnBoardingView();
      //   },
      //   pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
      //     state: state,
      //     child: const OnBoardingView(),
      //   ),
      // ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) {
          return const HomeView();
        },
        pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
          state: state,
          child: const HomeView(),
        ),
      ),
      // GoRoute(
      //   path: kLoginView,
      //   builder: (context, state) {
      //     return const LoginView();
      //   },
      //   pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
      //     state: state,
      //     child: const LoginView(),
      //   ),
      // ),
      // GoRoute(
      //   path: kSignUpView,
      //   builder: (context, state) {
      //     return const SignUpView();
      //   },
      //   pageBuilder: (context, state) => buildPageWithDefaultTransition<void>(
      //     state: state,
      //     child: const SignUpView(),
      //   ),
      // ),
    ],
  );
}
