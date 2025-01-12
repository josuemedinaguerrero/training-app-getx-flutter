import 'package:flutter/material.dart';
import 'colors.dart' as colors;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colors.AppColor.homePageBackground,
      body: Container(
        padding: EdgeInsets.only(top: 30, left: 30, right: 30),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Text("Training", style: TextStyle(fontSize: 30, color: colors.AppColor.homePageTitle, fontWeight: FontWeight.w700)),
                ),
                Icon(Icons.arrow_back_ios, size: 20, color: colors.AppColor.homePageIcons),
                SizedBox(width: 10),
                Icon(Icons.calendar_today_outlined, size: 20, color: colors.AppColor.homePageIcons),
                SizedBox(width: 15),
                Icon(Icons.arrow_forward_ios, size: 20, color: colors.AppColor.homePageIcons)
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Text('Your program', style: TextStyle(fontSize: 20, color: colors.AppColor.homePageSubtitle, fontWeight: FontWeight.w700)),
                ),
                Text('Details', style: TextStyle(fontSize: 16, color: colors.AppColor.homePageDetail)),
                SizedBox(width: 10),
                Icon(Icons.arrow_forward, size: 16, color: colors.AppColor.homePageIcons),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                color: Colors.red,
                gradient: LinearGradient(colors: [
                  colors.AppColor.gradientFirst,
                  colors.AppColor.gradientSecond,
                ]),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topRight: Radius.circular(80),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Next workout", style: TextStyle(fontSize: 16, color: colors.AppColor.homePageContainerTextSmall)),
                    SizedBox(height: 5),
                    Text("Legs Toning", style: TextStyle(fontSize: 25, color: colors.AppColor.homePageContainerTextSmall)),
                    Text("and Glutes Workout", style: TextStyle(fontSize: 25, color: colors.AppColor.homePageContainerTextSmall)),
                    SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Icon(Icons.timer, size: 20, color: colors.AppColor.homePageContainerTextSmall),
                              SizedBox(width: 5),
                              Text('60 min', style: TextStyle(color: colors.AppColor.homePageContainerTextSmall)),
                            ],
                          ),
                        ),
                        Icon(Icons.play_circle_fill, size: 60, color: colors.AppColor.homePageContainerTextSmall),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
