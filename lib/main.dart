import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> username = ['foo', 'bar', 'foo', 'bar', 'foo'];
  List<String> messages = [
    'aaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    'bb',
    'cccccccccccccccccccccccccccccc',
    'dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd',
    'ee'
  ];
  List<String> time = ['131', '6454', '54564', '54546', '88888'];
  List<String> author = ['Jesus', 'Joseph', 'Mary', 'John', 'Cardo'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            color: Colors.blue[200],
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (_, int index) {
                  return Row(
                      mainAxisAlignment: username[index] == "foo"
                          ? MainAxisAlignment.end
                          : MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Container(
                              padding: EdgeInsets.all(8.0),
                              margin: EdgeInsets.all(4.0),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(8.0))),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Flexible(
                                      child: Container(
                                    child: Text(
                                      messages[index],
                                    ),
                                  )),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6.0),
                                    child: Text(
                                      time[index],
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.grey),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 6.0),
                                    child: Text(
                                      author[index],
                                      style: TextStyle(
                                          fontSize: 10.0, color: Colors.grey),
                                    ),
                                  ),
                                ],
                              )),
                        )
                      ]);
                })));
  }
}
