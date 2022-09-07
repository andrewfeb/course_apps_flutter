import 'package:flutter/material.dart';
import 'package:infilearn/constans.dart';
import 'package:infilearn/model/course.dart';
import 'course_card.dart';

class PopularCourses extends StatelessWidget {
  const PopularCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(bottom: defaultPadding),
            child: Text(
              'Popular Courses',
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          SizedBox(
            height: 210,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(
                  parent: AlwaysScrollableScrollPhysics()),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  4,
                  (index) => Padding(
                    padding: const EdgeInsets.only(
                        right: defaultPadding, bottom: defaultPadding / 2),
                    child: CourseCard(course: courseList[index]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
