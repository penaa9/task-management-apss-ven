import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../style/appCOlor.dart';

class MyTask extends StatelessWidget {
  const MyTask({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height * 0.40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Task',
            style: TextStyle(
              color: appColor.primaryText,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: appColor.secondaryBg,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20,
                              foregroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20,
                              foregroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20,
                              foregroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 25,
                            width: 80,
                            color: appColor.primaryBg,
                            child: const Center(
                                child: Text(
                              '200%',
                              style: TextStyle(
                                color: appColor.primaryText,
                              ),
                            )),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 25,
                        width: 80,
                        color: appColor.primaryBg,
                        child: const Center(
                            child: Text(
                          '20/10 Task',
                          style: TextStyle(
                            color: appColor.primaryText,
                          ),
                        )),
                      ),
                      const Text(
                        'Pemrograman Mobile (Flutter)',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 20),
                      ),
                      const Text(
                        'Tersisa 3 Hari lagi',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Container(
                  clipBehavior: Clip.antiAlias,
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: appColor.secondaryBg,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20,
                              foregroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20,
                              foregroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20,
                              foregroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 25,
                            width: 80,
                            color: appColor.primaryBg,
                            child: const Center(
                                child: Text(
                              '200%',
                              style: TextStyle(
                                color: appColor.primaryText,
                              ),
                            )),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 25,
                        width: 80,
                        color: appColor.primaryBg,
                        child: const Center(
                            child: Text(
                          '20/10 Task',
                          style: TextStyle(
                            color: appColor.primaryText,
                          ),
                        )),
                      ),
                      const Text(
                        'Pemrograman Mobile (Flutter)',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 20),
                      ),
                      const Text(
                        'Tersisa 3 Hari lagi',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: appColor.secondaryBg,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20,
                              foregroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20,
                              foregroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20,
                              foregroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 25,
                            width: 80,
                            color: appColor.primaryBg,
                            child: const Center(
                                child: Text(
                              '200%',
                              style: TextStyle(
                                color: appColor.primaryText,
                              ),
                            )),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 25,
                        width: 80,
                        color: appColor.primaryBg,
                        child: const Center(
                            child: Text(
                          '20/10 Task',
                          style: TextStyle(
                            color: appColor.primaryText,
                          ),
                        )),
                      ),
                      const Text(
                        'Pemrograman Mobile (Flutter)',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 20),
                      ),
                      const Text(
                        'Tersisa 3 Hari lagi',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(10),
                  padding: const EdgeInsets.all(15),
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: appColor.secondaryBg,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20,
                              foregroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20,
                              foregroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: const CircleAvatar(
                              backgroundColor: Colors.amber,
                              radius: 20,
                              foregroundImage: NetworkImage(
                                  'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            height: 25,
                            width: 80,
                            color: appColor.primaryBg,
                            child: const Center(
                                child: Text(
                              '200%',
                              style: TextStyle(
                                color: appColor.primaryText,
                              ),
                            )),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Container(
                        height: 25,
                        width: 80,
                        color: appColor.primaryBg,
                        child: const Center(
                            child: Text(
                          '20/10 Task',
                          style: TextStyle(
                            color: appColor.primaryText,
                          ),
                        )),
                      ),
                      const Text(
                        'Pemrograman Mobile (Flutter)',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 20),
                      ),
                      const Text(
                        'Tersisa 3 Hari lagi',
                        style: TextStyle(
                            color: appColor.primaryText, fontSize: 15),
                      ),
                    ],
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
