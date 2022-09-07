import 'package:flutter/material.dart';
import 'package:infilearn/constans.dart';
import 'package:infilearn/model/course.dart';
import 'package:infilearn/screens/detail.dart';

class CourseCard extends StatelessWidget {
  final Course course;
  const CourseCard({
    Key? key,
    required this.course,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(course: course)));
      },
      child: Container(
        width: 159,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(defaultRadius)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.25),
              blurRadius: 4.0,
              //spreadRadius: 4.0,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(defaultRadius),
                  topRight: Radius.circular(defaultRadius)),
              child: Image.asset(course.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding / 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    course.title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  Text(
                    'Rp ${course.price}',
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: primaryColor),
                  ),
                  const SizedBox(height: 8.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        '${course.modules.length} lessons - ${course.totalDuration} hours',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: grayColor),
                      ),
                      Row(
                        children: <Widget>[
                          const Icon(
                            Icons.star_rate,
                            size: 12.0,
                            color: Colors.yellow,
                          ),
                          Text(
                            '${course.rate}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: grayColor),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
