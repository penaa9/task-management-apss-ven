import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/controller/auth_controller.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final authC = Get.find<AuthController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Container(
        margin: EdgeInsets.all(Get.height * 0.1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white
        ),
        child: Row(
          children: [
            !context.isPhone? 
            Expanded(
                child: Container(
                  padding: EdgeInsets.all(34),
             decoration: BoxDecoration(
               color: Colors.blue,
              borderRadius: BorderRadius.circular(50)
             ),
              
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Selamat Datang", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),),
                  Text("di App Task Management", style: TextStyle(color: Colors.white, fontSize: 16),),
                  Text("Yuk Login or Signup", style: TextStyle(color: Colors.white, fontSize: 16),),
                ],
              ),
            )
            ): const SizedBox(),
            Expanded(
                child: Container(
             decoration: BoxDecoration(
               color: Colors.white,
              borderRadius: BorderRadius.circular(50)

             ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                
                  Image.asset("assets/image/login.png", height: 400,),
                  Container(
                    padding: EdgeInsets.all(12),
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: FloatingActionButton(
                      onPressed: () {
                          authC.signInWithGoogle();
                      },
                      child: Ink(
                        
                        child: Row(
                        children: [
                       Icon(Icons.arrow_circle_right_sharp),
                        Text("Sign Up",style: TextStyle(color: Colors.white, fontSize: 12 ),),
                        ],
                        
                        ),
                      ),
                    ),
                  )
                  ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
