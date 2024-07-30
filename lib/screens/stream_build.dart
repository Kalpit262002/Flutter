import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class ListProfile1 extends StatefulWidget {
  const ListProfile1({super.key});

  @override
  State<ListProfile1> createState() => _ListProfile1State();
}

class _ListProfile1State extends State<ListProfile1> {
  final profileref = FirebaseDatabase.instance.ref('Profile');
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: w * 0.139,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new),
          iconSize: w * 0.0529,
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        // centerTitle: true,
        titleSpacing: 0,
        title: const Text(
          "List2 (Removing Soon)",
          style: TextStyle(color: Colors.black, fontFamily: 'Mont_b'),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
              child: StreamBuilder(
                  stream: profileref.onValue,
                  builder: ((context, AsyncSnapshot<DatabaseEvent> snapshot) {
                    if (!snapshot.hasData) {
                      return const Center(
                          child: Text("Loading Please Wait..."));
                    } else {
                      Map<dynamic, dynamic> map =
                          snapshot.data!.snapshot.value as dynamic;
                      List<dynamic> list = [];
                      list.clear();
                      list = map.values.toList();
                      return ListView.builder(
                          // reverse: true,
                          itemCount: snapshot.data!.snapshot.children.length,
                          itemBuilder: ((context, index) {
                            return ListTile(
                              title: Text(list[index]["Name"]),
                              subtitle: Row(
                                children: [
                                  const Text('Mobile no. '),
                                  Text(list[index]["Mobile No"]),
                                ],
                              ),
                            );
                          }));
                    }
                  }))),
                 
        ],
      ),
    );
  }
}
