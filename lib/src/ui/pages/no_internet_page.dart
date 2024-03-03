import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:chore_champion/src/resources/theme/application_style.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:translatron/translatron.dart';

@RoutePage()
class NoInternetPage extends StatefulWidget {
  const NoInternetPage({super.key});

  @override
  State<NoInternetPage> createState() => _NoInternetPageState();
}

class _NoInternetPageState extends State<NoInternetPage> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ApplicationStyle.primaryColor,
      key: scaffoldKey,
      body: WillPopScope(
        onWillPop: () async {
          var connectivityResult = await (Connectivity().checkConnectivity());
          if (connectivityResult == ConnectivityResult.none &&
              Platform.isAndroid) {
            SystemNavigator.pop();
            return Future.value(false);
          }
          if (Platform.isIOS) {
            return Future.value(false);
          }
          return Future.value(true);
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.width * 0.3,
                left: 26,
                right: 26,
                child: Container(
                  color: ApplicationStyle.primaryColor,
                  child: Text(
                    Translatron.of(context)!
                        .translate("no_internet_connection")
                        .toUpperCase(),
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: ApplicationStyle.white,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.width * 0.7,
                left: 26,
                right: 26,
                child: Text(
                  Translatron.of(context)!
                      .translate("no_internet_connection_info")
                      .toUpperCase(),
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: ApplicationStyle.white,
                      ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
