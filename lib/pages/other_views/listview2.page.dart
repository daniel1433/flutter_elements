import 'package:flutter/material.dart';

class ListView2 extends StatelessWidget {
  const ListView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppbar(),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return ListTile(
              title: const Text(
                "Listview 2",
                style: TextStyle(color: Color(0xff3377bb)),
              ),
              leading: const Icon(
                Icons.telegram,
                color: Color(0xff3377bb),
              ),
              onTap: () {
                debugPrint("Aquí vamos");
              },
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Color(0xff3377bb),
              thickness: 1,
            );
          },
          itemCount: 5),
    );
  }

  AppBar getAppbar() {
    return AppBar(
      title: const Text("ListView 2"),
      centerTitle: true,
    );
  }
}
