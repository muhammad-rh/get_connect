import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_connect/controllers.dart';

class HomePage extends GetView<Controllers> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipe'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          controller.obx(
            (data) => Expanded(
              child: ListView.separated(
                itemBuilder: (context, index) {
                  return Text('${data[index].title!} cat');
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(height: 8);
                },
                itemCount: data!.length,
              ),
            ),
          ),
          // Expanded(
          //   child: GetX<Controllers>(
          //     didChangeDependencies: (state) {},
          //     initState: (_) {
          //       WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
          //         _.controller!.getAllRecipe();
          //       });
          //     },
          //     builder: (_) {
          //       return _.isEmpty.value == true
          //           ? ListView.separated(
          //               itemBuilder: (context, index) {
          //                 return Text('${_.recipe![index].title!} recipe');
          //               },
          //               separatorBuilder: (context, index) {
          //                 return const SizedBox(height: 8);
          //               },
          //               itemCount: _.recipe!.length,
          //             )
          //           : const Text('kosong');
          //     },
          //   ),
          // ),
        ],
      ),
      // body: Obx(
      //   () => controller.isEmpty.value == false
      //       ? ListView.separated(
      //           itemBuilder: (context, index) {
      //             return Text(controller.recipe![index].title!);
      //           },
      //           separatorBuilder: (context, index) {
      //             return const SizedBox(height: 8);
      //           },
      //           itemCount: controller.recipe!.length,
      //         )
      //       : const Text('kosong'),
      // ),
    );
  }
}
