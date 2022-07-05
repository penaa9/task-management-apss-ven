import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../utils/widget/headers.dart';
import '../../../utils/widget/sidebar.dart';
import '../controllers/friend_controller.dart';
import 'package:management_taks_apps/app/utils/style/appColor.dart';

class FriendView extends GetView<FriendController> {
  final GlobalKey<ScaffoldState> _drawwerKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawwerKey,
      drawer: const SideBar(),
      backgroundColor: appColor.primaryBg,
      body: Row(
        children: [
          !context.isPhone
              ? const Expanded(
                  flex: 2,
                  //lebih dari 600 px, responsive
                  child: const SideBar(),
                )
              : SizedBox(),
          Expanded(
            flex: 15,
            child: Column(
              children: [
                !context.isPhone
                    ? const Header()
                    : Container(
                        padding: EdgeInsets.all(20),
                        child: Row(children: [
                          IconButton(
                            onPressed: () {

                            _drawwerKey.currentState!.openDrawer();
                            
                            },
                            icon: Icon(
                              Icons.menu,
                              color: appColor.primaryText,
                            ),
                          ),

                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Task Management',
                                style: TextStyle(
                                    fontSize: 20, color: appColor.primaryText),
                              ),
                              Text('Menjadi mudah dengan Task Management',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: appColor.primaryText))
                            ],
                          ),
                          const SizedBox(width: 45,),
                          const Icon(Icons.notifications,
                              color: appColor.primaryText),
                          const SizedBox(width: 15,),


                              ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: CircleAvatar(backgroundColor: Colors.amberAccent, radius: 25, foregroundImage: NetworkImage("https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),),
                              )
                        ]),
                      ),


                  //content isi page /screen
                Expanded(
                    child: Container(
                  padding: const EdgeInsets.all(50),
                  margin: !context.isPhone
                      ? const EdgeInsets.all(10)
                      : const EdgeInsets.all(0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: !context.isPhone
                          ? BorderRadius.circular(50)
                          : BorderRadius.circular(20)),
                ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
