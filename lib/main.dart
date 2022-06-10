import 'package:flutter/material.dart';
import 'page2.dart';

void main()=> runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: home(), //halaman awal ketika program pertama dijalankan
)); //materialapp

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 100, 162, 236),

        child: Stack(
          alignment: Alignment.center ,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0),),
                color: Color.fromARGB(255, 0, 95, 191),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        CircleAvatar(
                          radius: 100.0,
                          backgroundImage: AssetImage('images/dj.jpeg'),
                        ),
                        Text("Reza Arfianta",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.w700),
                        ),

                        Text("Vocational High School Student at SMK Wikrama Bogor",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: Color.fromARGB(248, 245, 247, 248)),
                        ),

                        TextButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Page2()),
                          );
                        },child: Text('See More')
                        )
                      ],
                    ),
                  ),
              ), 
            ),
          ],
        ),
      ),
    );
  }
}