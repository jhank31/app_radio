// ignore_for_file: deprecated_member_use

import 'package:url_launcher/url_launcher.dart';

class ControllerHome {
  final urlFacebook =
      "https://www.facebook.com/Iglesia-en-la-Localidad-de-la-Ciudad-de-Bogotá-DC-109185923896927";
  final urlInstagram = "https://www.instagram.com/ilcbogotadc/";
  final urlGoogle = "https://www.ilcbogotadc.org/radio-recobro-bogota";
  final urlYoutube = 'https://youtube.com/@iglesiaenlalocalidaddelaci7212';

  Future launchUrl(String url) async {
    try {
      if (await canLaunch(url)) {
        await launch(
          url,
        );
      } else {
        throw "no se pudo lanzar la $url";
      }
    } catch (e) {
      return e;
    }
  }
}
