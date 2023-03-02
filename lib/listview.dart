
import 'package:flutter/material.dart';

class mappItems extends StatefulWidget {
  const mappItems({Key? key}) : super(key: key);

  @override
  _mappItemsState createState() => _mappItemsState();
}

class _mappItemsState extends State<mappItems> {
  final GlobalKey<AnimatedListState> key = GlobalKey();
  List<String> listname =[];
  int count = 0;
  void creatlist() {
    setState(() {
      listname.insert(0,"Item ${listname.length + 1}");
      key.currentState!.insertItem(0,duration: const Duration(seconds:1));
    });

  }
     void  delete(indx){
   key.currentState!.removeItem(indx, (context, animation) {
     return SizeTransition(
         sizeFactor: animation,
       child: const Card(
         //margin: EdgeInsets.only(top: 2, bottom: 2),
         elevation:10 ,
         color:Colors.red ,
         child:ListTile(
           //contentPadding: EdgeInsets.all(10),
           title: Text("Removing",style: TextStyle(fontSize: 25)),
         ) ,
       ),
     );
     }, duration: const Duration(seconds: 1));
    setState(() {
      listname.removeAt(indx);
    });
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mapping "),
        backgroundColor: Colors.blue,
        elevation: 5.0,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black12,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 60.0,
              color: Colors.black12,
              child: Row(
                children: [
                  Text("${listname.length}"),
                  Expanded(
                    child: MaterialButton(
                      onPressed: (){
                        creatlist();
                      },
                      child: const Column(
                        children: [
                          SizedBox(
                            height: 2.0,
                          ),
                          Icon(Icons.add,size: 30.0),
                          SizedBox(
                            height: 3.0,
                          ),
                          Text("click To Add List"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ), //button to add
            Expanded(
              child: AnimatedList(
                key: key,
                  initialItemCount: 0,
                  padding: EdgeInsets.all(10),
                  itemBuilder: (context, index, animation){
                    return
                         SizeTransition(
                           key: UniqueKey(),
                          sizeFactor: animation,
                           child: Card(
                             color: Colors.blue,
                             margin: const EdgeInsets.only(top: 5, bottom: 5),
                             child: ListTile(
                              title: Text(listname[index]),
                               trailing: GestureDetector(
                                 child: Icon(Icons.delete,color: Colors.red,),
                                 onTap: (){
                                 //  print(index);
                                   setState(() {
                                     delete(index);
                                   });
                                  // delete(index);
                                 },
                               ),
                        ),
                           ),
                         );
                  },

              ),
            )
          ],
        ),
      ),
    );
  }
}
