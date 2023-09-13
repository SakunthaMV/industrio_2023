import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:industrio_2023/pages/people/people_page.dart';

// Images
const String logo = 'images/logo.png';

// Menu
const List<String> menuItems = [
  '/',
  'Schedule',
  PeoplesPage.route,
  'Projects',
  'Posters',
  'Proceedings',
  'Contact Us',
];

// SlideShow Duration
const int showDuration = 5000;
const int noOfImages = 5;

// App Bar
const double appBarHeight = 100.0;

// Department Details
const List<dynamic> dmieDetails = [
  [
    'Department of Manufacturing & Industrial '
        'Engineering, Faculty of Engineering, University of Peradeniya, '
        'Peradeniya, 20400, Sri Lanka.',
    Icons.location_on,
    'https://goo.gl/maps/EV7u3qx5GpNS9qyLA'
  ],
  ['+9481 2393 650', Icons.phone, 'tel:+94812393650'],
  [
    'headmie@eng.pdn.ac.lk',
    Icons.mail,
    "mailto:headmie@eng.pdn.ac.lk?subject=About the Symposium 2023 (INDUSTRIO)"
  ],
];

//Externel Links
const List<dynamic> linkDetails = [
  ['images/external_links/dmie.png', 'https://dmie.eng.pdn.ac.lk/'],
  ['images/external_links/foe.png', 'https://eng.pdn.ac.lk/'],
  ['images/external_links/uop.png', 'https://www.pdn.ac.lk/'],
  ['images/external_links/facebook.png', 'https://www.facebook.com/MEA.uop'],
  [
    'images/external_links/linkedin.png',
    'https://www.linkedin.com/company/manufacturing-engineering-association-mea/'
  ],
];

// Toast Massage
void toast(String msg) {
  Fluttertoast.showToast(
    msg: msg,
    textColor: Colors.black,
    timeInSecForIosWeb: 3,
    webPosition: "center",
    webBgColor: "linear-gradient(to right, #bbbfbf, #bbbfbf)",
  );
}
