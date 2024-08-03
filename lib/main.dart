import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final List workers = [
    {
      "name": "doudou",
      "age": 30,
      "poste": "IT dev",
      "color": Colors.black,
      'enabled': true,
      'icon': Icon(Icons.male, color: Colors.white)
    },
    {
      "name": "kokou",
      "age": 31,
      "poste": "IT sys",
      "color": const Color.fromARGB(255, 216, 20, 20),
      'enabled': true,
      'icon': Icon(
        Icons.male,
        color: Colors.white,
      )
    },
    {
      "name": "toutou",
      "age": 31,
      "poste": "IT sys",
      "color": Color.fromARGB(255, 53, 24, 168),
      'enabled': false,
      'icon': Icon(Icons.male, color: Colors.white)
    },
    {
      "name": "moumou",
      "age": 24,
      "poste": "IT DEV",
      "color": Color.fromARGB(255, 138, 11, 114),
      'enabled': true,
      'icon': Icon(Icons.female, color: Colors.white)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Learning",
          style: TextStyle(color: Colors.white, fontSize: 50),
        ),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      color: Color.fromARGB(255, 243, 0, 45),
                      width: 200,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Color.fromARGB(255, 151, 94, 105),
                      width: 200,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      color: Color.fromARGB(255, 196, 186, 45),
                      width: 200,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Color.fromARGB(255, 69, 121, 6),
                      width: 200,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      color: Color.fromARGB(255, 0, 0, 0),
                      width: 200,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 59, 111, 255),
            ),
          ),
          Expanded(
            child: Container(
              color: Color.fromARGB(255, 224, 88, 3),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 0, 0, 0),
            ),
          )
        ],
      ),

      /*
          Container(
              child: ListView.builder(
                  itemCount: workers.length,
                  itemBuilder: (context, i) {
                    return Card(
                      shadowColor: const Color.fromARGB(255, 0, 0, 0),
                      elevation: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(0.0),
                      ),
                      color: workers[i]['color'],
                      child: ListTile(
                        enabled: workers[i]['enabled'],
                        onLongPress: () {
                          print('this is a description');
                        },
                        onTap: () {
                          print('taaped');
                        },
                        leading: workers[i]['icon'],
                        title: Text(workers[i]['name'],
                            style: TextStyle(color: Colors.white)),
                        subtitle: Text(
                            'Age: ' +
                                workers[i]['age'].toString() +
                                ' Poste: ' +
                                workers[i]['poste'],
                            style: TextStyle(color: Colors.white)),
                        trailing: Text('IT department',
                            style: TextStyle(color: Colors.white)),
                      ),
                    );
                  })*/

      /*GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisExtent: 500,
                    mainAxisSpacing: 20,
                    childAspectRatio: 200),
                //reverse: true,
                //padding: EdgeInsets.all(20),

                //scrollDirection: Axis.horizontal,
                itemCount: workers.length,
                itemBuilder: (context, i) {
                  final worker = workers[i];
                  final color = worker['color'] as Color;
                  return Container(
                    height: 200,
                    width: 200,
                    color: color,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(workers[i]['name'],
                            style: TextStyle(color: Colors.white)),
                        Text(workers[i]['age'].toString(),
                            style: TextStyle(color: Colors.white)),
                        Text(workers[i]['poste'],
                            style: TextStyle(
                                color: Color.fromARGB(255, 233, 233, 233))),
                      ],
                    ),
                  );
                }),*/
      /*ListView.separated(
                //reverse: true,
                //padding: EdgeInsets.all(20),
                separatorBuilder: (context, i) {
                  return Divider(
                    color: Colors.black,
                    thickness: 3,
                  );
                },
                //scrollDirection: Axis.horizontal,
                itemCount: workers.length,
                itemBuilder: (context, i) {
                  final worker = workers[i];
                  final color = worker['color'] as Color;
                  return Container(
                    height: 200,
                    width: 200,
                    color: color,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(workers[i]['name'],
                            style: TextStyle(color: Colors.white)),
                        Text(workers[i]['age'].toString(),
                            style: TextStyle(color: Colors.white)),
                        Text(workers[i]['poste'],
                            style: TextStyle(
                                color: Color.fromARGB(255, 233, 233, 233))),
                      ],
                    ),
                  );
                }),*/

      //Listview.builder
      /*
            ListView.builder(
                //scrollDirection: Axis.horizontal,
                itemCount: workers.length,
                itemBuilder: (context, i) {
                  final worker = workers[i];
                  final color = worker['color'] as Color;
                  return Container(
                    height: 200,
                    width: 200,
                    color: color,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(workers[i]['name'],
                            style: TextStyle(color: Colors.white)),
                        Text(workers[i]['age'].toString(),
                            style: TextStyle(color: Colors.white)),
                        Text(workers[i]['poste'],
                            style: TextStyle(
                                color: Color.fromARGB(255, 233, 233, 233))),
                      ],
                    ),
                  );
                }),*/

      //simple listview
      /*
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.yellow,
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Color.fromARGB(255, 217, 91, 13),
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Color.fromARGB(255, 22, 251, 255),
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  height: 200,
                  width: 200,
                ),
                Container(
                  color: Color.fromARGB(255, 255, 29, 153),
                  height: 200,
                  width: 200,
                ),
              ],
            ),*/
    )

        //example two
        /*
          Container(
              color: const Color.fromARGB(255, 197, 197, 197),
              width: 2000,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.blue,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Color.fromARGB(255, 197, 162, 4),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.blue,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Color.fromARGB(255, 197, 162, 4),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Colors.blue,
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Color.fromARGB(255, 197, 162, 4),
                            ),
                            Container(
                              width: 100,
                              height: 100,
                              color: Color.fromARGB(255, 255, 81, 0),
                            ),
                          ]),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Color.fromARGB(255, 197, 162, 4),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Color.fromARGB(255, 255, 81, 0),
                        ),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Color.fromARGB(255, 197, 162, 4),
                      ),
                      Container(
                        width: 100,
                        height: 100,
                        color: Color.fromARGB(255, 255, 81, 0),
                      ),
                    ]),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Color.fromARGB(255, 197, 162, 4),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Color.fromARGB(255, 255, 81, 0),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Color.fromARGB(255, 197, 162, 4),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          color: Color.fromARGB(255, 255, 81, 0),
                        ),
                      ],
                    ),
                  ],
                ),
              ))*/

        //exmpale one
        /*Column(
            children: [
              Container(
                /*child: Image.network(
                  "https://i.pinimg.com/736x/2d/5c/4d/2d5c4d9d2e9cb07708b059956880f9b0.jpg",
                  fit: BoxFit.cover,
                ),*/
                child: Image.asset(
                  'images/zoro.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(400),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromARGB(255, 70, 38, 255),
                          offset: Offset(0, 20),
                          blurRadius: 70,
                          spreadRadius: 10)
                    ]),
                alignment: Alignment.center,
                height: 300,
                child: Text(
                  "This a simple text",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          )*/

        );
  }
}
