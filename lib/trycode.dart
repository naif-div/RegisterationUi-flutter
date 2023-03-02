import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  final List<String> names = <String>['Aby', 'Aish', 'Ayan', 'Ben', 'Bob', 'Charlie', 'Cook', 'Carline'];
  final List<int> msgCount = <int>[2, 0, 10, 6, 52, 4, 0, 2];

  TextEditingController nameController = TextEditingController();

  void addItemToList(){
    setState(() {

      names.insert(0,nameController.text);
      msgCount.insert(0, 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Tutorial - googleflutter.com'),
        ),
        body: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Contact Name',
                  ),
                ),
              ),
              MaterialButton(
                child: const Text('Add'),
                onPressed: () {
                  addItemToList();
                },
              ),
              Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: names.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 50,
                          margin: const EdgeInsets.all(2),
                          color: msgCount[index]>=10? Colors.blue[400]:
                          msgCount[index]>3? Colors.blue[100]: Colors.grey,
                          child: Center(
                              child: Text('${names[index]} (${msgCount[index]})',
                                style: const TextStyle(fontSize: 18),
                              )
                          ),
                        );
                      }
                  )
              )
            ]
        )
    );
  }
}

// void code(){
//   adding(
//     padding: const EdgeInsets.all(8.0),
//     child: Container(
//       height: 60,
//       color: Colors.amber,
//       child: Row(
//         children: [
//           Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 10.0),
//                 child: Text("${listname[index]} $index ",
//                     style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold)),
//               )),
//           IconButton(
//               onPressed: (){
//                 setState(() {
//                   listname.removeAt(index);
//                 });
//               },
//               icon: Icon(Icons.delete,color: Colors.red,size: 30.0,))
//         ],
//       ) ,
//     ),
//   );
// }