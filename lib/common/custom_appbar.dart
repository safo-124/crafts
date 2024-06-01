import 'package:crafts/common/app_style.dart';
import 'package:crafts/common/reuseable_text.dart';
import 'package:crafts/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 6.h),
      height: 110.h,
      width: width,
      color: kOffWhite,
      child: Container(
          margin: EdgeInsets.only(top: 20.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundColor: kSecondary,
                    backgroundImage: const NetworkImage(
                        "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.pngall.com%2Fprofile-png%2F&psig=AOvVaw37_n6JPS-IYD9BNcgX5neP&ust=1717349451698000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCPj_7bL3uoYDFQAAAAAdAAAAABAR"),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 6.h, left: 8.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ReuseableText(
                            text: "Deliver",
                            style: appStyle(13, kSecondary, FontWeight.w600)),
                        SizedBox(
                          width: width * 0.65,
                          child: Text(
                            "1234 Chenku Falls st Aburi Akuapem",
                            overflow: TextOverflow.ellipsis,
                            style: appStyle(11, kGrayLight, FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    "🌧️",
                    style: TextStyle(fontSize: 35),
                  )
                ],
              )
            ],
          )),
    );
  }
}
