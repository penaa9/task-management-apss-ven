import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:management_taks_apps/app/utils/style/appColor.dart';

import '../../../utils/widget/headers.dart';
import '../../../utils/widget/sidebar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
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
              : const SizedBox(),
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
                          const SizedBox(
                            width: 45,
                          ),
                          const Icon(Icons.notifications,
                              color: appColor.primaryText),
                          const SizedBox(
                            width: 15,
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: CircleAvatar(
                              backgroundColor: Color.fromARGB(255, 48, 45, 31),
                              radius: 25,
                              foregroundImage: NetworkImage(
                                  "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                            ),
                          ),
                        ]),
                      ),

                //content isi page /screen
                Expanded(
                  child: Container(
                    padding: !context.isPhone
                        ? const EdgeInsets.all(50)
                        : const EdgeInsets.all(20),
                    margin: !context.isPhone
                        ? const EdgeInsets.all(10)
                        : const EdgeInsets.all(0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: !context.isPhone
                            ? BorderRadius.circular(50)
                            : BorderRadius.circular(30)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: const Text("My Task"),
                        ),
                        SizedBox(
                          height: 20,
                        ),

                        //my Task
                        SizedBox(
                          height: 200,
                          child: ListView(
                            clipBehavior: Clip.antiAlias,
                            scrollDirection: Axis.horizontal,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: appColor.secondaryBg),
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amberAccent,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amberAccent,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amberAccent,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 80,
                                          height: 25,
                                          color: appColor.primaryBg,
                                          child: Center(child: Text("100 %")),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 80,
                                      height: 25,
                                      color: appColor.primaryBg,
                                      child: const Center(
                                          child: Text("10 / 10 Task")),
                                    ),
                                    const Text(
                                      "Pemrograman Mobile",
                                      style: TextStyle(
                                          color: appColor.primaryText,
                                          fontSize: 15),
                                    ),
                                    const Text(
                                      "Deadline 2 hari lagi",
                                      style: TextStyle(
                                          color: appColor.primaryText,
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                              ),

                              //scroll direction 2

                              Container(
                                padding: EdgeInsets.all(20),
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: appColor.secondaryBg),
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amberAccent,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amberAccent,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amberAccent,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 80,
                                          height: 25,
                                          color: appColor.primaryBg,
                                          child: Center(child: Text("100 %")),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 80,
                                      height: 25,
                                      color: appColor.primaryBg,
                                      child: const Center(
                                          child: Text("10 / 10 Task")),
                                    ),
                                    const Text(
                                      "Pemrograman Mobile",
                                      style: TextStyle(
                                          color: appColor.primaryText,
                                          fontSize: 15),
                                    ),
                                    const Text(
                                      "Deadline 2 hari lagi",
                                      style: TextStyle(
                                          color: appColor.primaryText,
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                              ),

                              //scroll direction 3

                              Container(
                                padding: EdgeInsets.all(20),
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: appColor.secondaryBg),
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amberAccent,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amberAccent,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amberAccent,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 80,
                                          height: 25,
                                          color: appColor.primaryBg,
                                          child: Center(child: Text("100 %")),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 80,
                                      height: 25,
                                      color: appColor.primaryBg,
                                      child: const Center(
                                          child: Text("10 / 10 Task")),
                                    ),
                                    const Text(
                                      "Pemrograman Mobile",
                                      style: TextStyle(
                                          color: appColor.primaryText,
                                          fontSize: 15),
                                    ),
                                    const Text(
                                      "Deadline 2 hari lagi",
                                      style: TextStyle(
                                          color: appColor.primaryText,
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                              ),

                              //scroll direction 4

                              Container(
                                padding: EdgeInsets.all(10),
                                width: 400,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: appColor.secondaryBg),
                                margin: EdgeInsets.all(10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amberAccent,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amberAccent,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                                          ),
                                        ),
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(25),
                                          child: CircleAvatar(
                                            backgroundColor: Colors.amberAccent,
                                            radius: 20,
                                            foregroundImage: NetworkImage(
                                                "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
                                          ),
                                        ),
                                        Spacer(),
                                        Container(
                                          width: 80,
                                          height: 25,
                                          color: appColor.primaryBg,
                                          child: Center(child: Text("100 %")),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Container(
                                      width: 80,
                                      height: 25,
                                      color: appColor.primaryBg,
                                      child: const Center(
                                          child: Text("10 / 10 Task")),
                                    ),
                                    const Text(
                                      "Pemrograman Mobile",
                                      style: TextStyle(
                                          color: appColor.primaryText,
                                          fontSize: 15),
                                    ),
                                    const Text(
                                      "Deadline 2 hari lagi",
                                      style: TextStyle(
                                          color: appColor.primaryText,
                                          fontSize: 15),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                        // Upcoming
                        Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: const Text("Upcoming Task"),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),

                                  //isi
                                

                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: const Text("My Friends"),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 10.0),
                                        child: const Text("More"),
                                      ),
                                      Icon(
                                        Icons.arrow_forward,
                                        color: appColor.primaryText,
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
