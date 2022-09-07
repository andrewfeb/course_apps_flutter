import 'package:flutter/material.dart';
import 'package:infilearn/constans.dart';
import 'package:infilearn/components/course_list.dart';
import 'package:infilearn/screens/courses.dart';

class Courses extends StatelessWidget {
  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Courses',
                style: Theme.of(context).textTheme.headline5,
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CoursesScreen()));
                },
                child: Text(
                  'View All',
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1!
                      .copyWith(color: primaryColor),
                ),
              ),
            ],
          ),
          const SizedBox(height: defaultPadding),
          const CoursesList(countShow: 3),
        ],
      ),
    );
  }
}
