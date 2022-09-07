import 'package:flutter/material.dart';
import 'package:infilearn/constans.dart';
import 'package:infilearn/model/course.dart';
import 'package:infilearn/screens/detail.dart';

class CoursesList extends StatelessWidget {
  final int countShow;
  final int categoryId;
  const CoursesList({Key? key, required this.countShow, this.categoryId = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics:
          const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemCount: countShow,
      separatorBuilder: (context, index) =>
          const SizedBox(height: defaultPadding),
      itemBuilder: (context, index) {
        return CourseItem(index: index, categoryId: categoryId);
      },
    );
  }
}

class CourseItem extends StatelessWidget {
  final int index;
  final int categoryId;
  const CourseItem({Key? key, required this.index, required this.categoryId})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Course course = (categoryId == 0)
        ? courseList[index]
        : courseList
            .where((item) => item.categoryId == categoryId)
            .toList()[index];
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(course: course)));
      },
      child: Container(
        height: 100,
        width: MediaQuery.of(context).size.width -
            (MediaQuery.of(context).size.width * 0.03),
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
        child: Row(
          children: <Widget>[
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(defaultRadius),
                  bottomLeft: Radius.circular(defaultRadius)),
              child: Image.asset(
                course.cover,
                height: 100,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(defaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      course.title,
                      overflow: TextOverflow.ellipsis,
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
            ),
          ],
        ),
      ),
    );
  }
}
