import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfileApp() ,
  ),
  );
}
class ProfileApp extends StatefulWidget {
  @override
  State<ProfileApp> createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {

  createAlertDialog(BuildContext context) {
    return showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text("User added successfully"),
      );
    });
  }
  @override

  bool pressGeoON = false;
  bool press = false;
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
                decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage("https://wallpaper.dog/large/20470680.jpg"),
                        fit: BoxFit.cover)
                ),
                child: Container(
                  width: double.infinity,
                  height: 350.0,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                            "https://i.pinimg.com/564x/fa/41/ac/fa41ace1ab4cde11018a9b224e488806.jpg",
                          ),
                          radius: 80.0,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          "Tommy",
                          style: TextStyle(
                              fontSize: 22.0,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Card(
                          margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5.0),
                          clipBehavior: Clip.antiAlias,
                          color: Colors.white,
                          elevation: 5.0,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 22.0),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Column(

                                    children: [
                                      Text(
                                        "Followers",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "5290",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.pinkAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(

                                    children: [
                                      Text(
                                        "Following",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "1260",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.pinkAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(

                                    children: [
                                      Text(
                                        "Posts",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "290",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.pinkAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Column(

                                    children: [
                                      Text(
                                        "Story",
                                        style: TextStyle(
                                          color: Colors.redAccent,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Text(
                                        "90",
                                        style: TextStyle(
                                          fontSize: 18.0,
                                          color: Colors.pinkAccent,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ),
            Container(
                child: Align(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 100.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Info",
                          style: TextStyle(
                            color: Colors.redAccent,
                            fontStyle: FontStyle.normal,
                            fontSize: 28.0,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Text('My name is Tommy and I am the cutest dog alive.',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w300,
                            color: Colors.black,
                            letterSpacing: 2.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: 200.00,

              child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: pressGeoON ? Colors.blue : Colors.grey,
                  textColor: Colors.white,
                  child: press ? Text("Follow",
                      style: TextStyle(fontSize: 18)
                  ) : Text("Following"),

                  onPressed: () {
                    setState(() {
                      pressGeoON = !pressGeoON;
                      press = !press;
                    });
                  }
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 200.00,

              child: Row(
                children: [
                  RaisedButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)),
                      color: Colors.blue,
                      textColor: Colors.white,
                      child:Text("Add",
                          style: TextStyle(fontSize: 18)
                      ),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      onPressed: (){
                        createAlertDialog(context);
                      }
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  RaisedButton(
                      shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(18.0),
                          side: BorderSide(color: Colors.red)),
                      color: Colors.blue,
                      textColor: Colors.white,
                      child: Text("Message",
                          style: TextStyle(fontSize: 18)
                      ),
                      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => chat()),
                        );
                      }
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


class chat extends StatefulWidget {
  const chat({Key? key}) : super(key: key);

  @override
  _chatState createState() => _chatState();
}

class _chatState extends State<chat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("hello"),
    );
  }
}
