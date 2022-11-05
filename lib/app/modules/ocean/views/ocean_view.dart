import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../letter_take/views/letter_take_view.dart';
import '../controllers/ocean_controller.dart';

class OceanView extends GetView<OceanController> {
  const OceanView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 유리병 있을 경우에만 true로 바꿔서 이미지 버튼 보여주게 하면 됨
    bool is_visible = true;

    return Scaffold(
      appBar: AppBar(
        title: const Text('OceanView'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {Get.toNamed(Routes.LETTER);},
          ),
        ],
      ),
      body:
      Container(
        constraints: BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/ocean.jpg"),
              fit: BoxFit.cover),
        ),
        // add an elevation
        child: Visibility(
          visible: is_visible,
          child:Container(
          width: 30,
          height: 40,
          child: MaterialButton(
            // Size the button
            onPressed: () {
              // 유리병을 눌렀을 때의 기능을 넣어주세요
              ScaffoldMessenger.of(context).clearSnackBars();
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Hello There!'),
                  duration: Duration(milliseconds: 1500),
                ),
              );
              //////////////////////
              // 편지를 보여줄거임
              Get.toNamed(Routes.LETTER_TAKE);
              /*
             Navigator.push(
               context,
               MaterialPageRoute(builder: (context)=> const LetterTakeView()),
             );

               */
            },
            child: Image.asset(
              "assets/images/bo.png",
            ),
          ),
        ),

        )


            )
    /*
      Center(
        child: Text(
          'OceanView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    */
    );
  }
}
