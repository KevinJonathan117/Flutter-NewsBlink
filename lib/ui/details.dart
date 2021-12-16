import 'package:flutter/material.dart';

class DetailsUI extends StatefulWidget {
  final int userId;
  final String userName;
  DetailsUI({required this.userId, required this.userName});

  @override
  _DetailsUIState createState() =>
      _DetailsUIState(userId: userId, userName: userName);
}

class _DetailsUIState extends State<DetailsUI> {
  final int userId;
  final String userName;
  _DetailsUIState({required this.userId, required this.userName});


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.navigate_before,
            color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Container(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/bg.jpg"),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    child: Text(
                      userName + "'s Current Progress",
                      style: TextStyle(
                          fontSize: 36,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0),
                    )),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
