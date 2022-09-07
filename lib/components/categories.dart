import 'package:flutter/material.dart';
import 'package:infilearn/model/category.dart';
import 'package:infilearn/constans.dart';
import 'package:infilearn/screens/courses.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: categoryList
            .asMap()
            .entries
            .map((item) => CategoryItem(index: item.key))
            .toList(),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final int index;
  const CategoryItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Category category = categoryList[index];
    return Column(
      children: <Widget>[
        ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        CoursesScreen(categoryId: category.id)));
          },
          style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(12),
              shape: const CircleBorder(),
              primary: bgColor),
          child: Icon(
            category.icon,
            color: Theme.of(context).primaryColor,
            size: 24,
          ),
        ),
        const SizedBox(height: defaultPadding / 2),
        Text(category.categoryName),
      ],
    );
  }
}
