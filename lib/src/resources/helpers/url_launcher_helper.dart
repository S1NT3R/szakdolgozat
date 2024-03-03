import 'package:chore_champion/src/resources/helpers/message_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherHelper {
  static void launchWebpageUrl(String url) async {
    if (!await launchUrl(
      Uri.parse(url),
      mode: LaunchMode.externalApplication,
    )) {
      MessageHelper.showToast("Nem sikerült megnyitni az oldalt");
    }
  }

  static void makePhoneCall(String phoneNumber) async {
    if (!await launchUrl(
      Uri(
        scheme: 'tel',
        path: phoneNumber,
      ),
    )) {
      MessageHelper.showToast("Nem sikerült megnyitni a telefont hívást");
    }
  }

  static void openNavigation(String address) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$address';
    if (!await launchUrl(
      Uri.parse(googleUrl),
    )) {
      MessageHelper.showToast("Nem sikerült megnyitni a navigációt");
    }
  }
}
