import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(

        title: Center(
          child: Text(
            "Automobiles",
            style: TextStyle(fontSize: 27, color: Colors.black),
          ),
        ),

        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(height: 10),
          MyListTile(img: 'honda1', name: 'Honda'),
          MyListTile(img: 'bmw', name: 'BMW'),
          MyListTile(img: 'mercedes', name: 'Mercedes'),
          MyListTile(img: 'suzuki', name: 'Suzuki'),
          MyListTile(img: 'ferrari', name: 'Ferrari'),
          MyListTile(img: 'lexus', name: 'Lexus'),
          MyListTile(img: 'aston', name: 'Aston Martin'),
          MyListTile(img: 'renault', name: 'Renault'),
        ],
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key? key,
    required this.name,
    required this.img,
  }) : super(key: key);

  final String name, img;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5.0),
      child: InkWell(
        splashColor: Colors.white,
        onTap: () {
          Fluttertoast.showToast(msg:"This is "+name);
        },
        child: Container(
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(18),
              bottomRight: Radius.circular(50),
              topRight: Radius.circular(18),
            ),
            color: Colors.pinkAccent,
            // color: Color(0xff80ACF5),
            // borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.black),
          ),
          child: ListTile(
            title: Center(
              child: Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  fontFamily: "Ubuntu",
                ),
              ),
            ),
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(300),
                border: Border.all(width: 2, color: Colors.white),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(200),
                child: Image(
                  image: AssetImage("assets/images/$img.jpg"),
                  width: 52,
                  height: 65,
                  fit: BoxFit.cover,
                ),
              ),
            ),

          ),
        ),
      ),
    );
  }
}
