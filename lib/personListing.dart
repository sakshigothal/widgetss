import 'package:flutter/material.dart';

class PersonListing extends StatefulWidget {
  const PersonListing({Key? key}) : super(key: key);

  @override
  _PersonListingState createState() => _PersonListingState();
}

class _PersonListingState extends State<PersonListing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text("Data"),
            );
          },
          separatorBuilder: (ctx, index) {
            return Divider();
          },
          itemCount: 10),
    );
  }
}
