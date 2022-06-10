import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'main.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
          backgroundColor: Colors.transparent, // 1
          elevation: 0, // 2
        ),
        body: Container(
          color: Color.fromARGB(255, 100, 162, 236),
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Column(
                  children: const <Widget>[
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/dj.jpeg'),
                    ),
                    Divider(
                      height: 10,
                    ),
                    Text(
                      'Reza Arfianta',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 0, 95, 191),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'About',
                      style: TextStyle(fontSize: 15),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum labore nulla error deserunt non sapiente, facere ab exercitationem velit pariatur.',
                      style: TextStyle(
                        fontSize: 10,
                  
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      'History',
                      style: TextStyle(fontSize: 15,),
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum labore nulla error deserunt non sapiente, facere ab exercitationem velit pariatur.',
                      style: TextStyle(
                        fontSize: 10,
                        
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Text(
                        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolorum labore nulla error deserunt non sapiente, facere ab exercitationem velit pariatur.',
                        style: TextStyle(
                          fontSize: 10,
                          
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.vertical(
                            bottom: Radius.zero, top: Radius.circular(10)),
                        color: Color.fromARGB(255, 0, 95, 191),
                      ),
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                      child: const Text(
                        'Skills',
                        style:
                            TextStyle(fontSize: 13),
                      ),
                    ),
                    Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'HTML',
                                style: TextStyle(
                                    fontSize: 13, ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'CSS',
                                style: TextStyle(
                                    fontSize: 13, ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'PHP',
                                style: TextStyle(
                                    fontSize: 13, ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 5),
                              child: Text(
                                'JS',
                                style: TextStyle(
                                    fontSize: 13, ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}