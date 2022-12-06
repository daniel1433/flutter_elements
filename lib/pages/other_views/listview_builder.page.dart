import 'package:curso_fernando/widgets/widgets.dart';
import 'package:flutter/material.dart';

import 'dart:math';
import 'package:curso_fernando/theme/app_theme.dart';

class ListViewBuilderPage extends StatefulWidget {
  const ListViewBuilderPage({super.key});

  @override
  State<StatefulWidget> createState() => _ListViewBuilderPageState();
}

class _ListViewBuilderPageState extends State<ListViewBuilderPage> {
  List<int> imageIds = [];
  ScrollController controller = ScrollController();
  bool isLoading = false;
  // bool isLoadingPR = false;
  Random rnd = Random();

  @override
  void initState() {
    super.initState();
    generateImages(10);
    // if (!controller.hasListeners) {
    controller.addListener(() {
      if ((controller.position.pixels + 500) >=
          controller.position.maxScrollExtent) {
        // getMoreNumbers();
        fectchData();
      }
      // Forma ficticia
      // if (controller.position.pixels == 0) {
      //   fectchData(pullToRefresh: true);
      // }
    });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: ConstantElements.getAppbar("ListView Builder Page"),
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          alignment: Alignment.center,
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              backgroundColor: Colors.white38,
              onRefresh: () => fectchData(pullToRefresh: true),
              child: ListView.builder(
                  controller: controller,
                  itemCount: imageIds.length,
                  itemBuilder: (_, index) {
                    return FadeInImage(
                      width: double.infinity,
                      height: 300,
                      placeholder: const AssetImage('assets/images/loader.gif'),
                      image: NetworkImage(
                          "https://picsum.photos/500/300?image=${imageIds[index]}"),
                      fit: BoxFit.cover,
                    );
                  }),
            ),
            // Positioned(
            //     top: 0,
            //     child: isLoadingPR ? const LoadingIcon() : const SizedBox()),
            Positioned(
                bottom: 0,
                child: isLoading ? const LoadingIcon() : const SizedBox())
          ],
        ),
      ),
    );
  }

  void getMoreNumbers() {
    debugPrint(
        "More images................................................................");
    int lastNumber = imageIds[imageIds.length - 1];
    // for (int i = 0; i > 10; i++) {
    //   imageIds.add(lastNumber + i);
    // }
    imageIds.addAll([1, 2, 3, 4, 5].map((e) => rnd.nextInt(500)));
    setState(() {});
  }

  Future fectchData({bool pullToRefresh = false}) async {
    if (isLoading && pullToRefresh) return;
    // if (isLoading || isLoadingPR) return;

    if (!pullToRefresh) {
      //   isLoadingPR = true;
      // } else {
      isLoading = true;
    }

    setState(() {});
    await Future.delayed(const Duration(seconds: 3));

    if (!pullToRefresh) {
      generateImages(10);
      // isLoadingPR = false;
      // } else {
      getMoreNumbers();
      isLoading = false;
    }
    setState(() {});

    if (!(controller.position.pixels + 900 <=
        controller.position.maxScrollExtent)) {
      controller.animateTo(controller.position.pixels + 900,
          duration: const Duration(milliseconds: 1000),
          curve: Curves.fastOutSlowIn);
    }
  }

  generateImages(int count, {bool addMore = false}) {
    if (addMore) {
      imageIds.addAll(Iterable.generate(count).map((e) => validDuplicate()));
      return;
    }
    imageIds = Iterable.generate(count).map((e) => validDuplicate()).toList();
  }

  int validDuplicate() {
    int number = rnd.nextInt(500);
    while (imageIds.where((element) => element == number).isNotEmpty) {
      number = rnd.nextInt(500);
    }

    return number;
  }
}
