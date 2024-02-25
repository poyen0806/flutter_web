import 'package:flutter/material.dart';
import 'package:flutter_web/view_model/theme_view_model.dart';
import 'package:provider/provider.dart';

class CustomTimeline extends StatelessWidget {
  const CustomTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeViewModel>(
      builder: (context, themeVM, child) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
              child: VerticalDivider(thickness: 1.5),
            ),
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: themeVM.themeData.colorScheme.onSurface,
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "The Affiliate Zhongli Senior High School of National University",
                      style: TextStyle(
                        color: themeVM.themeData.colorScheme.onBackground,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "Computer Science score in the top 1% of the grade",
                      style: TextStyle(
                        color: themeVM.themeData.colorScheme.onBackground
                            .withOpacity(0.6),
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.transparent,
                    border: Border.all(
                      width: 1.5,
                      color: themeVM.themeData.colorScheme.onBackground,
                    ),
                  ),
                  child: Text(
                    "Sep. 2019 ~ Jun. 2022",
                    style: TextStyle(
                      fontSize: 12,
                      color: themeVM.themeData.colorScheme.onBackground,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 75,
              child: VerticalDivider(thickness: 1.5),
            ),
            Row(
              children: [
                Container(
                  width: 16,
                  height: 16,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange[300],
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "National Central University",
                      style: TextStyle(
                        color: themeVM.themeData.colorScheme.onBackground,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      "BS, Computer Science and Information Engineering",
                      style: TextStyle(
                        color: themeVM.themeData.colorScheme.onBackground
                            .withOpacity(0.6),
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.transparent,
                    border: Border.all(
                      width: 1.5,
                      color: themeVM.themeData.colorScheme.onBackground,
                    ),
                  ),
                  child: Text(
                    "Sep. 2022 ~ Current",
                    style: TextStyle(
                      fontSize: 12,
                      color: themeVM.themeData.colorScheme.onBackground,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
              child: VerticalDivider(thickness: 1.5),
            ),
          ],
        ),
      ),
    );
  }
}
