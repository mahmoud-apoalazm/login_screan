import 'package:flutter/material.dart';

class UserModel {
  final id;
  final name;
  final phone;

  UserModel(this.id, this.name, this.phone);
}

class Userscrean extends StatelessWidget {
  List<UserModel> user = [
    UserModel(1, "mohamed hamed", 01255555554),
    UserModel(2, "ahmed said", 01545856555),
    UserModel(3, "abrahem mohamed", 210255555),
    UserModel(1, "mohamed hamed", 01255555554),
    UserModel(2, "ahmed said", 01545856555),
    UserModel(3, "abrahem mohamed", 210255555),
    UserModel(1, "mohamed hamed", 01255555554),
    UserModel(2, "ahmed said", 01545856555),
    UserModel(3, "abrahem mohamed", 210255555),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 20.0,
          title: Text("User"),
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => builduserItems(user[index]),
            separatorBuilder: (context, index) => Padding(
                  padding:
                      const EdgeInsetsDirectional.only(start: 20.0, end: 20.0),
                  child: Container(
                    height: 1.0,
                    width: double.infinity,
                    color: Colors.grey[300],
                  ),
                ),
            itemCount: user.length));
  }

  Widget builduserItems(UserModel mm) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Text(
                "${mm.id}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("${mm.name}",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                Text(
                  "${mm.phone}",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      );
}
