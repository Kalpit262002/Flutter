import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:glein/utils/utils1.dart';

class ListFireStore extends StatefulWidget {
  const ListFireStore({super.key});

  @override
  State<ListFireStore> createState() => _ListFireStoreState();
}

class _ListFireStoreState extends State<ListFireStore> {
  final editcontroller = TextEditingController();
  CollectionReference ref = FirebaseFirestore.instance.collection('Profile');
  final firestore =
      FirebaseFirestore.instance.collection("Profile").snapshots();
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
          "Edit Your Profile",
          style: TextStyle(color: Colors.black, fontFamily: 'Mont_b'),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          StreamBuilder<QuerySnapshot>(
              stream: firestore,
              builder: ((context, AsyncSnapshot<QuerySnapshot> snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Text("Loading Please Wait..");
                }
                if (snapshot.hasError) {
                  return const Text("An error occured :-(");
                }
                return Expanded(
                  child: ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: ((context, index) {
                        return ListTile(
                          title: Text(
                              snapshot.data!.docs[index]['Name'].toString()),
                          subtitle: Row(
                            children: [
                              const Text('Mobile no. '),
                              Text(snapshot.data!.docs[index]["Mobile no"]
                                  .toString()),
                            ],
                          ),
                          trailing: PopupMenuButton(
                            icon: const Icon(
                              Icons.more_vert,
                              color: Colors.black,
                            ),
                            itemBuilder: (context) => [
                              PopupMenuItem(
                                  value: 1,
                                  onTap: () {
                                    Future.delayed(
                                        const Duration(milliseconds: 100),
                                        () async {
                                      await showMydialog(
                                          snapshot.data!.docs[index]["Name"]
                                              .toString(),
                                          snapshot.data!.docs[index]["id"]
                                              .toString());
                                    });
                                  },
                                  child: const ListTile(
                                    leading: Icon(Icons.edit),
                                    title: Text('Edit'),
                                  )),
                              PopupMenuItem(
                                  onTap: () {
                                    Future.delayed(
                                        const Duration(milliseconds: 100),
                                        () async {
                                      await showMydialog1(snapshot
                                          .data!.docs[index]["id"]
                                          .toString());
                                    });
                                  },
                                  value: 1,
                                  child: const ListTile(
                                    leading: Icon(Icons.delete),
                                    title: Text('Delete'),
                                  )),
                            ],
                          ),
                        );
                      })),
                );
              })),
        ],
      ),
    );
  }

  Future<void> showMydialog(String name, String id) async {
    editcontroller.text = name;
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Edit"),
            // ignore: avoid_unnecessary_containers
            content: Container(
              child: TextField(
                controller: editcontroller,
              ),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Cancel')),
              TextButton(
                  onPressed: () {
                    ref.doc(id).update(
                        {'Name': editcontroller.text.toString()}).then((value) {
                      Utils1().fluttertoast("Succesfully Updated");
                    }).onError((error, stackTrace) {
                      Utils1().fluttertoast(error.toString());
                    });
                    Navigator.pop(context);
                  },
                  child: const Text('Update')),
            ],
          );
        });
  }

  Future<void> showMydialog1(String id) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Are you sure to Remove"),
            // ignore: avoid_unnecessary_containers

            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('No')),
              TextButton(
                  onPressed: () {
                    ref.doc(id).delete();
                    Navigator.pop(context);
                  },
                  child: const Text('Yes')),
            ],
          );
        });
  }
}
