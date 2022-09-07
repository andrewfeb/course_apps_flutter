import 'package:flutter/material.dart';
import 'package:infilearn/components/favorite_button.dart';
import 'package:infilearn/components/modules_list.dart';
import 'package:infilearn/constans.dart';
import 'package:infilearn/model/course.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DetailScreen extends StatelessWidget {
  final Course course;
  const DetailScreen({Key? key, required this.course}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // show cover
          Stack(
            children: <Widget>[
              Image.asset(course.cover),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: grayColor,
                        child: IconButton(
                          icon:
                              const Icon(Icons.arrow_back, color: Colors.white),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ),
                      const FavoriteButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //show detail course
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding * 1.5),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    course.title,
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  // show total duration and lessons
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.access_time,
                        size: 12,
                        color: darkGrayColor,
                      ),
                      const SizedBox(width: defaultPadding / 2),
                      Text(
                        '${course.totalDuration} hours',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: darkGrayColor),
                      ),
                      const SizedBox(width: defaultPadding),
                      const Icon(
                        Icons.menu_book,
                        size: 12,
                        color: darkGrayColor,
                      ),
                      const SizedBox(width: defaultPadding / 2),
                      Text(
                        '${course.modules.length} lessons',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: darkGrayColor),
                      ),
                    ],
                  ),
                  const SizedBox(height: defaultPadding / 2),
                  // show rate
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          RatingBar.builder(
                            initialRating: course.rate,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 12,
                            itemPadding: const EdgeInsets.only(right: 2),
                            itemBuilder: (context, index) =>
                                const Icon(Icons.star, color: Colors.yellow),
                            onRatingUpdate: (rating) {
                              // ignore: avoid_print
                              print(rating);
                            },
                          ),
                          const SizedBox(width: defaultPadding / 2),
                          Text(
                            '${course.rate}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(color: darkGrayColor),
                          ),
                        ],
                      ),
                      Text(
                        'Rp ${course.price}',
                        style: Theme.of(context)
                            .textTheme
                            .headline6!
                            .copyWith(color: primaryColor),
                      )
                    ],
                  ),
                  //show Description
                  const SizedBox(height: defaultPadding * 1.5),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // description
                      Text(
                        'Descriptions',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: defaultPadding / 2),
                      Text(
                        course.description,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: darkGrayColor),
                      ),
                      const SizedBox(height: defaultPadding * 1.5),
                      // lessons
                      Text(
                        'Lessons',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      ModulesList(course: course),
                      const SizedBox(height: defaultPadding * 2),
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(primaryColor),
                          ),
                          child: Text(
                            'Enroll Now',
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ]),
          ),
        ],
      )),
    );
    // Text(course.title);
  }
}
