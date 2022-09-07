import 'package:flutter/material.dart';
import 'package:infilearn/components/course_list.dart';
import 'package:infilearn/constans.dart';
import 'package:infilearn/model/category.dart';
import 'package:infilearn/model/course.dart';

class CoursesScreen extends StatelessWidget {
  final int categoryId;
  const CoursesScreen({Key? key, this.categoryId = 0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final int count;
    String categoryName = '';

    if (categoryId == 0) {
      count = courseList.length;
    } else {
      count = courseList.where((item) => item.categoryId == categoryId).length;
      categoryName = categoryList
          .where((item) => item.id == categoryId)
          .toList()[0]
          .categoryName;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text(
          'Courses $categoryName',
          style: Theme.of(context).textTheme.headline5,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(defaultPadding),
          child: CoursesList(countShow: count, categoryId: categoryId),
        ),
      ),
    );
  }
}
