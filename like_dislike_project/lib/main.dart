import 'package:flutter/material.dart';

void main() {
  return runApp(

    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal[200],
        appBar: AppBar(
          title: Text('Like and Dislike'),
          backgroundColor: Colors.teal[400],
        ),
        body: ButtonsPage(),
      ),
    ),
  );
}

class ButtonsPage extends StatefulWidget {
  @override
  ButtonPageState
   createState() => ButtonPageState
  ();
}

class ButtonPageState
 extends State<ButtonsPage> {
  Color likeColor = Colors.grey;
  Color dislikeColor = Colors.grey;

  void changeToLike() {
    setState(() {
      if (likeColor==Colors.grey) {
        likeColor = Colors.blue;
      } else {
        likeColor = Colors.grey;
      }
      dislikeColor = Colors.grey;
    });
  }

  void changeToDislike() {
    setState(() {
      likeColor = Colors.grey;
      if (dislikeColor==Colors.grey) {
        dislikeColor = Colors.blue;
      } else {
        dislikeColor = Colors.grey;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: changeToLike,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                child: Icon(
                  Icons.thumb_up,
                  size: 80,
                  color: likeColor,
                ),
              ),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: likeColor, width: 10, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
          //Get students to create the second die as a challenge
          Expanded(
            child: FlatButton(
              onPressed: changeToDislike,
              child: Padding(
                padding: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 20.0),
                child: Icon(
                  Icons.thumb_down,
                  size: 80,
                  color: dislikeColor,
                ),
              ),
              shape: RoundedRectangleBorder(
                  side: BorderSide(
                      color: dislikeColor, width: 10, style: BorderStyle.solid),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ),
        ],
      ),
    );
  }
}
