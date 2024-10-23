import 'package:daily_tasks/23-10-24/controller/datacontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller=Get.put(Datacontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("api getx"),),
      body: Container(alignment: Alignment.center,
      child:Obx((){
        return controller.loadind.isTrue? Center(child: CircularProgressIndicator(
          strokeWidth: 1.5,
          color: Colors.amber,
        ),):ListView.builder(
          itemCount: controller.DataList.length??0,
          itemBuilder: (c,i){
            final data=controller.DataList[i];
             return ListTile(
              leading: CircleAvatar(backgroundImage: NetworkImage(data.image.toString()),),
              subtitle: Text(data.rating!.rating.toString() ?? ""),
              title: Text(data.title.toString()??""));
          });
      })
      ),
    );
  }
}