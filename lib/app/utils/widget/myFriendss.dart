import 'package:flutter/material.dart';
import 'package:get/get.dart';




import '../../routes/app_pages.dart';
import '../style/appColor.dart';

class MyFriends extends StatelessWidget {
  const MyFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                const Text(
                  'My Friends',
                  style: TextStyle(
                    color: appColor.primaryText,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () => Get.toNamed(Routes.FRIEND),
                  child: const Text(
                    'More',
                    style: TextStyle(
                      color: appColor.primaryText,
                      fontSize: 20,
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_right_sharp,
                  color: appColor.primaryText,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 400,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: context.isPhone ? 2 : 3,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: const Image(
                          image: NetworkImage(
                              'https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0'),
                     
                        ),
                      ),
                      const Text(
                        'Fitri',
                        style: TextStyle(color: appColor.primaryText),
                      )
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
