import 'package:auto_route/auto_route.dart';
import 'package:chore_champion/src/resources/helpers/connectivity_helper.dart';
import 'package:chore_champion/src/resources/routes/app_routes.dart';
import 'package:chore_champion/src/resources/theme/application_style.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:forest_logger/forest_logger.dart';
import 'package:translatron/translatron.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Map _source = {ConnectivityResult.none: false};
  final ConnectivityHelper _networkConnectivity = ConnectivityHelper.instance;

  @override
  void initState() {
    super.initState();
    _networkConnectivity.initialise();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _networkConnectivity.myStream.listen(
        (source) {
          _source = source;
          switch (_source.keys.toList()[0]) {
            case ConnectivityResult.mobile:
              Forest.info("Internet connection: Mobile online");
              if (AutoRouter.of(context).current.name.toString() ==
                  'NoInternetRoute') {
                AutoRouter.of(context).pop();
              }
              break;
            case ConnectivityResult.wifi:
              Forest.info("Internet connection: Wifi online");
              if (AutoRouter.of(context).current.name.toString() ==
                  'NoInternetRoute') {
                AutoRouter.of(context).pop();
              }
              break;
            case ConnectivityResult.none:
            default:
              Forest.info("Internet connection: Offline");
              AutoRouter.of(context).push(
                const NoInternetRoute(),
              );
          }
        },
      );
    });
  }

  Widget buildNavigationBar(BuildContext context, TabsRouter tabsRouter) {
    double iconSize = 22;
    return Theme(
      data: Theme.of(context).copyWith(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      child: BottomNavigationBar(
        backgroundColor: ApplicationStyle.white,
        currentIndex: tabsRouter.activeIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          Forest.debug("AutoRouter stack: ${AutoRouter.of(context).stack}");
          if (index == 0) {
            Navigator.of(context).popUntil((route) => route.isFirst);
          }
          Forest.debug("index: $index");
          tabsRouter.setActiveIndex(index);
        },
        selectedItemColor: ApplicationStyle.black,
        unselectedItemColor: ApplicationStyle.primaryColor,
        selectedLabelStyle: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: ApplicationStyle.primaryColor,
        ),
        unselectedLabelStyle: const TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.w500,
        ),
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: SvgPicture.asset(
                "assets/images/navbar/radio.svg",
                width: iconSize,
                height: iconSize,
                color: tabsRouter.activeIndex == 0
                    ? ApplicationStyle.black
                    : ApplicationStyle.primaryColor,
              ),
            ),
            label: Translatron.of(context)!.translate("bottom_bar_radio"),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: SvgPicture.asset(
                "assets/images/navbar/podcast.svg",
                width: iconSize,
                height: iconSize,
                color: tabsRouter.activeIndex == 1
                    ? ApplicationStyle.black
                    : ApplicationStyle.primaryColor,
              ),
            ),
            label: Translatron.of(context)!.translate("bottom_bar_podcast"),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: SvgPicture.asset(
                "assets/images/navbar/playlist.svg",
                width: iconSize,
                height: iconSize,
                color: tabsRouter.activeIndex == 2
                    ? ApplicationStyle.black
                    : ApplicationStyle.primaryColor,
              ),
            ),
            label: Translatron.of(context)!.translate("bottom_bar_favorites"),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: SvgPicture.asset(
                "assets/images/navbar/notification.svg",
                width: iconSize,
                height: iconSize,
                color: tabsRouter.activeIndex == 3
                    ? ApplicationStyle.black
                    : ApplicationStyle.primaryColor,
              ),
            ),
            label:
                Translatron.of(context)!.translate("bottom_bar_notification"),
          ),
          BottomNavigationBarItem(
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 5.0),
              child: SvgPicture.asset(
                "assets/images/navbar/profile.svg",
                width: iconSize,
                height: iconSize,
                color: tabsRouter.activeIndex == 4
                    ? ApplicationStyle.black
                    : ApplicationStyle.primaryColor,
              ),
            ),
            label: Translatron.of(context)!.translate("bottom_bar_profile"),
          ),
        ],
      ),
    );
  }

  Widget transitionBuilder(
    BuildContext context,
    Widget child,
    Animation<double> animation,
  ) {
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

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      backgroundColor: ApplicationStyle.primaryColor,
      scaffoldKey: scaffoldKey,
      appBarBuilder: null,
      transitionBuilder: transitionBuilder,
      animationCurve: Curves.ease,
      animationDuration: const Duration(milliseconds: 500),
      homeIndex: 0,
      routes: const [
        HomeRoute(),
        TodoListRoute(),
        LaundryRouterRoute(),
        CleaningRoute(),
        ProfileRoute(),
      ],
      bottomNavigationBuilder: buildNavigationBar,
    );
  }
}
