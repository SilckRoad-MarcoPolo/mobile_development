import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

import '../../user_profile/user_profile_view.dart';

class Students extends StatelessWidget {
  Students({super.key, required this.name, required this.photo});
  String name;
  String photo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => UserProfilePage()));
      },
      child: Container(
          width: ScreenUtils.screenHeight(context) * (90 / 462), // Set width
          height: ScreenUtils.screenHeight(context) * (190 / 932),
          decoration: BoxDecoration(
            border: Border.all(color: Color(0xffDDDDDD), width: 2),
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Padding(
              padding: EdgeInsets.all(
                (13 / 932) * ScreenUtils.screenHeight(context),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Center(
                        child: Container(
                            height: 70, width: 70, child: Image.asset(photo))),
                    Text(
                      name,
                      style: TextStyle(
                          fontSize:
                              ScreenUtils.screenHeight(context) * (20 / 932),
                          fontWeight: FontWeight.w500),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Intermediate",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: ScreenUtils.screenHeight(context) *
                                  (14 / 932),
                              fontWeight: FontWeight.w500),
                        ),
                        Icon(Icons.chat),
                      ],
                    )
                  ]))),
    );
  }
}
