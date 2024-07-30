import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:glein/utils/utils1.dart';

class ListProfile extends StatefulWidget {
  const ListProfile({super.key});

  @override
  State<ListProfile> createState() => _ListProfileState();
}

class _ListProfileState extends State<ListProfile> {
  final profileref = FirebaseDatabase.instance.ref('Profile');
  final searchfilter = TextEditingController();
  final editcontroller = TextEditingController();

  late DataSnapshot outerSnapshotData;
  var name;

  @override
  void initState() {
    super.initState();
    profileref.child('Name').once().then((DatabaseEvent snapshot) {
      outerSnapshotData = snapshot.snapshot;
      name = snapshot.snapshot.child('Name').value.toString();
      print(outerSnapshotData);
    });
  }

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
          Padding(
            padding: const EdgeInsets.only(right: 5, left: 5, bottom: 15),
            child: SizedBox(
              height: 45,
              child: TextFormField(
                controller: searchfilter,
                onChanged: (String value) {
                  setState(() {});
                  print(name);
                },
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 15),
                    hintText: "Search your profile",
                    border: OutlineInputBorder()),
              ),
            ),
          ),
          Expanded(
              child: searchfilter.text.isNotEmpty
                  ? name.toLowerCase().contains(
                          searchfilter.text.toLowerCase().toLowerCase())
                      ? FirebaseAnimatedList(
                          query: profileref,
                          defaultChild: const Center(
                              child: Text('Loading Please Wait...')),
                          itemBuilder: (context, snapshot, animation, index) {
                            outerSnapshotData = snapshot;
                            name = outerSnapshotData
                                .child('Name')
                                .value
                                .toString();
                            // return ListTile(
                            //   title: Text(name),
                            //   subtitle: Row(
                            //     children: [
                            //       const Text('Mobile no. '),
                            //       Text(snapshot.child('Mobile No').value.toString()),
                            //     ],
                            //   ),
                            //   trailing: PopupMenuButton(
                            //     icon: const Icon(
                            //       Icons.more_vert,
                            //       color: Colors.black,
                            //     ),
                            //     itemBuilder: (context) => [
                            //       PopupMenuItem(
                            //           value: 1,
                            //           onTap: () {
                            //             Future.delayed(const Duration(milliseconds: 100),
                            //                 () async {
                            //               await showMydialog(name,
                            //                   snapshot.child('Id').value.toString());
                            //             });
                            //           },
                            //           child: const ListTile(
                            //             leading: Icon(Icons.edit),
                            //             title: Text('Edit'),
                            //           )),
                            //       PopupMenuItem(
                            //           onTap: () {
                            //             Future.delayed(const Duration(milliseconds: 100),
                            //                 () async {
                            //               await showMydialog1(
                            //                   snapshot.child('Id').value.toString());
                            //             });
                            //           },
                            //           value: 1,
                            //           child: const ListTile(
                            //             leading: Icon(Icons.delete),
                            //             title: Text('Delete'),
                            //           )),
                            //     ],
                            //   ),
                            // );

                            if (searchfilter.text.isEmpty) {
                              return ListTile(
                                title: Text(name),
                                subtitle: Row(
                                  children: [
                                    const Text('Mobile no. '),
                                    Text(snapshot
                                        .child('Mobile No')
                                        .value
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
                                                name,
                                                snapshot
                                                    .child('Id')
                                                    .value
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
                                                .child('Id')
                                                .value
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
                            } else if (name.toLowerCase().contains(
                                searchfilter.text.toLowerCase().toString())) {
                              return ListTile(
                                  title: Text(outerSnapshotData
                                      .child('Name')
                                      .value
                                      .toString()),
                                  subtitle: Row(
                                    children: [
                                      const Text('Mobile no. '),
                                      Text(outerSnapshotData
                                          .child('Mobile No')
                                          .value
                                          .toString()),
                                    ],
                                  ),
                                  trailing: PopupMenuButton(
                                    icon: const Icon(
                                      Icons.more_vert,
                                      color: Colors.black,
                                    ),
                                    itemBuilder: (context) => [
                                      const PopupMenuItem(
                                          value: 1,
                                          child: ListTile(
                                            leading: Icon(Icons.edit),
                                            title: Text('Edit'),
                                          )),
                                      const PopupMenuItem(
                                          value: 1,
                                          child: ListTile(
                                            leading: Icon(Icons.delete),
                                            title: Text('Delete'),
                                          )),
                                    ],
                                  ));
                            } else {
                              return Container();
                              // const Center(child: Text("No profile with that name"));
                            }
                          })
                      : const Center(child: Text("No profile with that name"))
                  : FirebaseAnimatedList(
                      query: profileref,
                      defaultChild:
                          const Center(child: Text('Loading Please Wait...')),
                      itemBuilder: (context, snapshot, animation, index) {
                        outerSnapshotData = snapshot;
                        name = outerSnapshotData.child('Name').value.toString();
                        // return ListTile(
                        //   title: Text(name),
                        //   subtitle: Row(
                        //     children: [
                        //       const Text('Mobile no. '),
                        //       Text(snapshot.child('Mobile No').value.toString()),
                        //     ],
                        //   ),
                        //   trailing: PopupMenuButton(
                        //     icon: const Icon(
                        //       Icons.more_vert,
                        //       color: Colors.black,
                        //     ),
                        //     itemBuilder: (context) => [
                        //       PopupMenuItem(
                        //           value: 1,
                        //           onTap: () {
                        //             Future.delayed(const Duration(milliseconds: 100),
                        //                 () async {
                        //               await showMydialog(name,
                        //                   snapshot.child('Id').value.toString());
                        //             });
                        //           },
                        //           child: const ListTile(
                        //             leading: Icon(Icons.edit),
                        //             title: Text('Edit'),
                        //           )),
                        //       PopupMenuItem(
                        //           onTap: () {
                        //             Future.delayed(const Duration(milliseconds: 100),
                        //                 () async {
                        //               await showMydialog1(
                        //                   snapshot.child('Id').value.toString());
                        //             });
                        //           },
                        //           value: 1,
                        //           child: const ListTile(
                        //             leading: Icon(Icons.delete),
                        //             title: Text('Delete'),
                        //           )),
                        //     ],
                        //   ),
                        // );

                        if (searchfilter.text.isEmpty) {
                          return ListTile(
                            title: Text(name),
                            subtitle: Row(
                              children: [
                                const Text('Mobile no. '),
                                Text(snapshot
                                    .child('Mobile No')
                                    .value
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
                                            name,
                                            snapshot
                                                .child('Id')
                                                .value
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
                                            .child('Id')
                                            .value
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
                        } else if (name.toLowerCase().contains(
                            searchfilter.text.toLowerCase().toString())) {
                          return ListTile(
                              title: Text(outerSnapshotData
                                  .child('Name')
                                  .value
                                  .toString()),
                              subtitle: Row(
                                children: [
                                  const Text('Mobile no. '),
                                  Text(outerSnapshotData
                                      .child('Mobile No')
                                      .value
                                      .toString()),
                                ],
                              ),
                              trailing: PopupMenuButton(
                                icon: const Icon(
                                  Icons.more_vert,
                                  color: Colors.black,
                                ),
                                itemBuilder: (context) => [
                                  const PopupMenuItem(
                                      value: 1,
                                      child: ListTile(
                                        leading: Icon(Icons.edit),
                                        title: Text('Edit'),
                                      )),
                                  const PopupMenuItem(
                                      value: 1,
                                      child: ListTile(
                                        leading: Icon(Icons.delete),
                                        title: Text('Delete'),
                                      )),
                                ],
                              ));
                        } else {
                          return Container();
                          // const Center(child: Text("No profile with that name"));
                        }
                      }))
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future<void> showMydialog(String name, String Id) async {
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
                    Navigator.pop(context);
                    profileref.child(Id).update(
                        {'Name': editcontroller.text.toString()}).then((value) {
                      Utils1().fluttertoast("Succesfuly Updated");
                    }).onError((error, stackTrace) {
                      Utils1().fluttertoast(error.toString());
                    });
                  },
                  child: const Text('Update')),
            ],
          );
        });
  }

// ignore: non_constant_identifier_names
  Future<void> showMydialog1(String Id) async {
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
                    Navigator.pop(context);
                    profileref.child(Id).remove().then((value) {
                      Utils1().fluttertoast("Deleted");
                    }).onError((error, stackTrace) {
                      Utils1().fluttertoast(error.toString());
                    });
                  },
                  child: const Text('Yes')),
            ],
          );
        });
  }
}
