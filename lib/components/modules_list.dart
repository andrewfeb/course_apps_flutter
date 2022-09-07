import 'package:flutter/material.dart';
import 'package:infilearn/constans.dart';
import 'package:infilearn/model/course.dart';

class ModulesList extends StatelessWidget {
  final Course course;
  const ModulesList({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      separatorBuilder: (context, index) =>
          const SizedBox(height: defaultPadding / 2),
      itemCount: course.modules.length,
      itemBuilder: (context, index) => ModuleItem(index: index, course: course),
    );
  }
}

class ModuleItem extends StatelessWidget {
  final int index;
  final Course course;
  const ModuleItem({Key? key, required this.index, required this.course})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(12),
        height: 40,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 229, 228, 228),
          borderRadius: BorderRadius.all(Radius.circular(defaultRadius)),
        ),
        child: Row(children: <Widget>[
          Text(
            course.modules[index],
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(width: defaultPadding / 2),
          Icon(
            (index == 0) ? Icons.lock_open : Icons.lock_outline,
            color: primaryColor,
            size: 12,
          ),
        ]),
      ),
    );
  }
}
