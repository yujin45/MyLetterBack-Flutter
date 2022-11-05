import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:unid2022/app/modules/letter_write/views/letter_write_view.dart';

import '../../../routes/app_pages.dart';
import '../controllers/letter_take_controller.dart';

class LetterTakeView extends GetView<LetterTakeController> {
  const LetterTakeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(controller.letters  == null ? 0 : controller.letters!.letter!.length);
    return Scaffold(
      appBar: AppBar(
        title: const Text('유리병'),
        centerTitle: true,
      ),
      body: Column(
        children:<Widget>[
          Container(
            height: 400,
            child: GetBuilder<LetterTakeController>(
              builder: (_) {
                return new ListView.builder(
                  itemCount: controller.letters  == null ? 0 : controller.letters!.letter!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return new Card(
                      child: new Text(controller.letters!.letter![index].text!),
                    );
                  },
                );
              },
            ),
          ),

        Text(
            "아",
          style: TextStyle(fontSize: 20, backgroundColor: Colors.lightGreen),
        ),
          TextField(
            style: TextStyle(fontSize: 20, backgroundColor: Colors.lightBlue),
            controller: controller.content,
            decoration: InputDecoration(
                isDense: true
            ),
          ),
        ]
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 답장 추가하는 것을 추가해서 넘겨줘야 함
          
        },
        backgroundColor: Colors.blueGrey,
        child: const Icon(Icons.create),
      ),
    );
  }
}
