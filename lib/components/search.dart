import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(
          Icons.search,
          size: 24,
          color: Color.fromARGB(255, 190, 190, 190),
        ),
        hintText: 'Search course',
        filled: true,
        fillColor: Colors.white,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide:
              BorderSide(color: Color.fromARGB(255, 231, 231, 231), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
          borderSide:
              BorderSide(color: Color.fromARGB(255, 231, 231, 231), width: 1),
        ),
      ),
      readOnly: true,
    );
  }
}
