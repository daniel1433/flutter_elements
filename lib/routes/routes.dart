import 'package:flutter/material.dart';

import 'package:curso_fernando/models/route_model.dart';
import '../pages/other_views/page.export.dart';

class RoutesFile {
  static String initialRoute = "home";

  static List<RouteModel> routes = [
    // RouteModel(
    //     path: 'home',
    //     name: "Home",
    //     screen: const HomePage(),
    //     description: 'Widget que enseña como hacer un ListView',
    //     // color: const Color(0xffaa0000),
    //     icon: Icons.home),
    RouteModel(
        path: 'listView1',
        name: "Lista Tipo 1",
        screen: const Listview1(),
        description: 'Widget que enseña como hacer un ListView',
        // // color: const Color(0xffaa0000),
        icon: Icons.list),
    RouteModel(
        path: 'listView2',
        name: "Lista Tipo 2",
        screen: const ListView2(),
        description: 'Widget que enseña como hacer un ListView',
        // // color: const Color(0xffaa0000),
        icon: Icons.list_alt),
    RouteModel(
        path: 'alerts',
        name: "Alertas",
        screen: const AlertPage(),
        description: 'Widget que enseña como hacer un ListView',
        // // color: const Color(0xffaa0000),
        icon: Icons.warning_rounded),
    RouteModel(
        path: 'cards',
        name: "Tarjetas",
        screen: const CardPage(),
        description: 'Widget que enseña como hacer un ListView',
        // // color: const Color(0xffaa0000),
        icon: Icons.card_giftcard),
    RouteModel(
        path: 'Avatars',
        name: "Avatars",
        screen: const AvatarPage(),
        description: 'Widget que visualiza un avatar',
        // // color: const Color(0xffaa0000),
        icon: Icons.supervised_user_circle_outlined),
    RouteModel(
        path: 'Animations',
        name: "Animations",
        screen: const AnimationPage(),
        description: 'Animaciones de diferentes tipos',
        // // color: const Color(0xffaa0000),
        icon: Icons.move_down_sharp),
    RouteModel(
        path: 'Inputs',
        name: "Inputs",
        screen: const InputsPage(),
        description: 'Diferentes tipos de inputs',
        // // color: const Color(0xffaa0000),
        icon: Icons.move_down_sharp),
    RouteModel(
        path: 'Slider',
        name: "Slider Screen",
        screen: const SliderPage(),
        description: 'Pagina que muestra sliders',
        // // color: const Color(0xffaa0000),
        icon: Icons.slideshow),
    RouteModel(
        path: 'Listview Builder',
        name: "Lista construida",
        screen: const ListViewBuilderPage(),
        description: 'Infinite scroll',
        // // color: const Color(0xffaa0000),
        icon: Icons.line_axis_rounded),
  ];

  static Map<String, Widget Function(BuildContext)> getPaths() {
    Map<String, Widget Function(BuildContext)> paths = {};

    paths.addAll({'home': (BuildContext context) => const HomePage()});
    for (final RouteModel item in routes) {
      paths.addAll({item.path: (BuildContext context) => item.screen});
    }

    return paths;
  }

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
        builder: (BuildContext build) => const AlertPage());
  }
}
