import 'package:curso_fernando/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:curso_fernando/routes/routes.dart';
import 'package:curso_fernando/models/route_model.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [];

    for (final RouteModel item in RoutesFile.routes) {
      list.add(ListTile(
        title: Text(
          item.name,
          // style: TextStyle(color: item.color),
        ),
        subtitle: Text(item.description),
        leading: Icon(
          item.icon,
          color: AppTheme.primary,
        ),
        onTap: () {
          debugPrint("Aquí vamos");
          String currentPath = ModalRoute.of(context)?.settings.name ?? "";
          if (currentPath != item.path && currentPath != "") {
            Navigator.pushNamed(context, item.path);
          }
        },
      ));
    }

    return Scaffold(
      appBar: getAppbar(),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return list[index];
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Color(0xff3377bb),
              thickness: 1,
            );
          },
          itemCount: list.length),
    );
  }

  AppBar getAppbar() {
    return AppBar(
      title: const Text("Componentes en Flutter"),
      centerTitle: true,
    );
  }
}
