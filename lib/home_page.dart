import 'package:flutter/material.dart';
import 'package:to_do_app/style.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _controller = new TextEditingController();
  List toDoList = [];
  String item = '';

  onChangeItem(content){
    setState(() {
      item = content;
    });
  }

  addListItem(){
    setState(() {
      toDoList.add({'item':item});
      item = '';
      _controller.clear();
    });
  }

  deleteItem(index){
    setState(() {
      toDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do'),
        centerTitle: true,
        elevation: 5,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 40, 10, 5),
        child: Column(
          children: [
            Expanded(
                flex: 10,
                child: Row(
                  children: [
                    Expanded(
                        flex: 70,
                        child: TextFormField(
                          controller: _controller,
                          onChanged: (content){
                            onChangeItem(content);
                          },
                          decoration: appInputStyle('Write any thing'),
                        )),
                    SizedBox(width: 10,),
                    Expanded(
                        flex: 30,
                        child: ElevatedButton(
                          onPressed: () {
                            addListItem();
                          },
                          child: Text('add'),
                          style: appButtonStyle(),
                        ))
                  ],
                )),
            SizedBox(height: 20,),
            Expanded(
                flex: 90,
                child: ListView.builder(
                  itemCount: toDoList.length,
                  itemBuilder: (context, index) {
                    return sizedBox50(Row(
                      children: [
                        Expanded(
                          flex:90,
                            child: Padding(
                          padding: EdgeInsets.only(left: 10),
                              child: Text(toDoList[index]['item']),
                        )),
                        Expanded(
                          flex: 10,
                            child: IconButton(
                          onPressed: (){
                            deleteItem(index);
                          },
                          icon: Icon(Icons.delete,color: Colors.red,),
                        ))
                      ],
                    ));
                  },
                ))
          ],
        ),
      ),
    );
  }
}
