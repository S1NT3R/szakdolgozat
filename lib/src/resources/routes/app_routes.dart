import 'package:auto_route/auto_route.dart';
import 'package:chore_champion/src/resources/routes/app_routes.gr.dart';
import 'package:flutter/material.dart';

export 'app_routes.gr.dart';

Widget transitionBuilder(BuildContext context, Animation<double> animation,
    Animation<double> secondaryAnimation, Widget child) {
  var begin =
      context.tabsRouter.activeIndex < (context.tabsRouter.previousIndex ?? 0)
          ? const Offset(-1, 0)
          : const Offset(1, 0);
  var end = Offset.zero;
  const curve = Curves.linearToEaseOut;

  var tween = Tween(begin: begin, end: end).chain(
    CurveTween(curve: curve),
  );

  return SlideTransition(
    position: animation.drive(tween),
    child: child,
  );
}

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: SplashRoute.page,
          path: '/splash',
          initial: true,
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: LoginRoute.page,
          path: '/login',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: RegisterRoute.page,
          path: '/register',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
        CustomRoute(
          page: MainRoute.page,
          path: '/main',
          transitionsBuilder: TransitionsBuilders.fadeIn,
          children: [
            CustomRoute(
              page: HomeRouterRoute.page,
              durationInMilliseconds: 500,
              transitionsBuilder: transitionBuilder,
              children: [
                CustomRoute(
                  page: HomeRoute.page,
                  path: 'home',
                  initial: true,
                ),
              ],
            ),
            CustomRoute(
              page: CleaningRouterRoute.page,
              durationInMilliseconds: 500,
              transitionsBuilder: transitionBuilder,
              children: [
                CustomRoute(
                  page: CleaningRoute.page,
                  path: 'cleaning',
                  initial: true,
                ),
              ],
            ),
            CustomRoute(
              page: ProfileRouterRoute.page,
              durationInMilliseconds: 500,
              transitionsBuilder: transitionBuilder,
              children: [
                CustomRoute(
                  page: ProfileRoute.page,
                  path: 'profile',
                  initial: true,
                ),
                CustomRoute(
                  page: InfoRoute.page,
                  path: 'info',
                ),
              ],
            ),
            CustomRoute(
              page: TodoRouterRoute.page,
              durationInMilliseconds: 500,
              transitionsBuilder: transitionBuilder,
              children: [
                CustomRoute(
                  page: TodoListRoute.page,
                  path: 'todo-list',
                  initial: true,
                ),
              ],
            ),
            CustomRoute(
              page: LaundryRouterRoute.page,
              durationInMilliseconds: 500,
              transitionsBuilder: transitionBuilder,
              children: [
                CustomRoute(
                  page: LaundryRoute.page,
                  path: 'laundry',
                  initial: true,
                ),
                CustomRoute(
                  page: AddClothesRoute.page,
                  path: 'add-clothes',
                ),
              ],
            ),
          ],
        ),
        CustomRoute(
          page: NoInternetRoute.page,
          path: '/no-internet',
          transitionsBuilder: TransitionsBuilders.fadeIn,
        ),
      ];
}
