import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:management_taks_apps/app/utils/style/appColor.dart';


//widget profile video  8
class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:  Container(
       
      child: !context.isPhone ? Row(
        children: [
          Expanded(
          flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: const CircleAvatar(
                backgroundColor:
                    Color.fromARGB(255, 48, 45, 31),
                radius: 160,
                foregroundImage: NetworkImage(
                    "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
              ),
            ),
          ),
          //jarak gambaar kesamping
          // SizedBox(
          //   width: 20,
          // ),
          Expanded(
          flex: 3,
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Trivena Natalia Gunawan',
                  style: TextStyle(
                      fontSize: 20,
                      color: appColor.primaryText),
                ),
                //email
                Text(
                  'Triv.naGun@gmail.com',
                  style: TextStyle(
                      fontSize: 16,
                      color: appColor.primaryText),
                ),
              ],
            ),
          ),
           
        ],
      ):Center(
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: const CircleAvatar(
                backgroundColor:
                    Color.fromARGB(255, 48, 45, 31),
                radius: 90,
                foregroundImage: NetworkImage(
                    "https://th.bing.com/th/id/R.01eb473c2e847284db9d7ccfb711b6de?rik=Dam3wkV8SszROw&riu=http%3a%2f%2fd263ao8qih4miy.cloudfront.net%2fwp-content%2fuploads%2f2017%2f06%2fSuspiciousPartner29-30-00282.jpg&ehk=9CVjvndW6EBhxZ58qoE%2fiUGyBo6pSWzvMSl93Qz38Vs%3d&risl=&pid=ImgRaw&r=0"),
              ),
            ),
            // jarak gambaar kesamping
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Trivena Natalia Gunawan',
              style: TextStyle(
                  fontSize: 20,
                  color: appColor.primaryText),
            ),
            //email
            const Text(
              'Triv.naGun@gmail.com',
              style: TextStyle(
                  fontSize: 16,
                  color: appColor.primaryText),
            ),
             
          ],
        ),
      ),
      
    ),
    
    );
  }
}