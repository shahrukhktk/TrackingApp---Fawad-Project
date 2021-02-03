import 'package:flutter/material.dart';

class userlist extends StatelessWidget {

  final String title, subtitle;

  const userlist({Key key, this.title, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final firstList = ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('images/userimage.png'),
        ),
        title: Text('$title',
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black
          ),
        ),
        subtitle: Text('$subtitle', style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, color: Colors.grey
        ),),
        trailing:
        GestureDetector(
            onTap: (){
              // Navigator.push(context,
              //   MaterialPageRoute(builder: (context) => InboxConversation()),);
            },child: Image(image: AssetImage('images/ic_users.png'))),

      );

    return firstList;
    }
}