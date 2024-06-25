import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int a=2;
  int b=5;

  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  // }
void randomChange(){
  var random=Random();
 setState(() {

    a=random.nextInt(6)+1;
    b=random.nextInt(6)+1;

if(a==b){
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Alert Dialog Title'),
        content: Text('Two dice are same'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Perform some action
              Navigator.pop(context);
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );


}


 });
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Dice"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "I`m Feeling Lucky",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: Colors.white, fontSize: 25),
          ),
          SizedBox(
            height: 70,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.black, blurRadius: 5)],
                    image: DecorationImage(
                        image: AssetImage("assets/$b.jpg"), fit: BoxFit.fill)),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5,
                    )
                  ],
                  image: DecorationImage(
                      image: AssetImage("assets/$a.jpg"), fit: BoxFit.fill),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: TextButton(
              onPressed: () {
                randomChange();
                print(a);
                print(b);
              },
              child: Container(
                width: double.maxFinite,
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      blurRadius: 5,
                    )
                  ],
                ),
                child: Center(
                    child: Text(
                  "start",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
