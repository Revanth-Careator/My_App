import 'package:flutter/material.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      child: Column(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50.0),
          ),
          ListTile(
            leading: Text(
              "Name :",
              style: TextStyle(
                color: Colors.brown,
                fontSize: 25,
                fontWeight: FontWeight.w800,
              ),
            ),
            title: Text("Revanth Kumar",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800)),
          ),
          ListTile(
            leading: Text("Email :",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 25,
                    fontWeight: FontWeight.w800)),
            title: Text("revanthsake@gmail.com",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800)),
          ),
          ListTile(
            leading: Text("Phone_No :",
                style: TextStyle(
                    color: Colors.brown,
                    fontSize: 25,
                    fontWeight: FontWeight.w800)),
            title: Text("7032183252",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w800)),
          ),
        ],
      ),
    );
  }
}
