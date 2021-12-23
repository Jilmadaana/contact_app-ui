import 'dart:html';

import 'package:contactsapp/pages/deleteContact.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class Contact_details extends StatefulWidget {
  const Contact_details({Key? key}) : super(key: key);

  @override
  State<Contact_details> createState() => _Contact_detailsState();
}

class _Contact_detailsState extends State<Contact_details> {
  get crossAxisAlignment => null;
  bool isliked = false;

  @override
  Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         shadowColor: Colors.black,
//         actions: const [
//           CircleAvatar(
//             radius: 150,
//             backgroundImage:
//                 NetworkImage("https://unsplash.com/photos/3d5XFUcqElI"),
//           )
//         ],
//         elevation: 15,
//         backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
//         shape: const RoundedRectangleBorder(
//             side: BorderSide(
//                 //color: Colors.black45,
//                 width: 3),
//             borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(3000),
//               bottomRight: Radius.circular(3000),
//             )),
//         bottom: const PreferredSize(
//           preferredSize: Size.fromHeight(200),
//           child: SizedBox(),
//         ),
//       ),
//     );
//   }
// }
    return Scaffold(
        backgroundColor: Color(0xFFFF1F1F1),
        body: SafeArea(
            child: ListView(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.arrow_back_ios_new),
                color: Colors.black,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Edit",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      print("Are you sure you want to delete");
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DeleteContact()));
                    },
                    icon: Icon(Icons.delete, size: 20),
                    color: Colors.black,
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            //color: Colors.amber,
            width: MediaQuery.of(context).size.width / 2,
            height: MediaQuery.of(context).size.height / 5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image:
                      NetworkImage("https://unsplash.com/photos/ILip77SbmOE")),
              shape: BoxShape.circle,
              color: Colors.amberAccent,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 9,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width / 8,
                  // ),
                  const Text(
                    "   Bryson Lom",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              isliked = true;
                            });
                          },
                          icon: isliked
                              ? const Icon(
                                  Icons.star_sharp,
                                  color: Colors.red,
                                )
                              : Icon(
                                  Icons.star_border_outlined,
                                )),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.phone,
                              color: Colors.grey,
                              size: 28,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    "Mobile",
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text("+233245099597",
                                      style: TextStyle(fontSize: 20)),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.message,
                                  color: Colors.grey,
                                  size: 28,
                                ),
                              ),
                            ],
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),

                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              UniconsLine.whatsapp,
                              color: Colors.greenAccent,
                              size: 28,
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text("     Voice call",
                                style: TextStyle(fontSize: 15))),
                        TextButton(
                            onPressed: () {},
                            child: Text("+233245099597",
                                style: TextStyle(fontSize: 20))),
                        Spacer(),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              UniconsLine.whatsapp,
                              color: Colors.greenAccent,
                              size: 28,
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text("     Video call",
                                style: TextStyle(fontSize: 15))),
                        TextButton(
                            onPressed: () {},
                            child: Text("+233245099597",
                                style: TextStyle(fontSize: 20))),
                        Spacer(),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              UniconsLine.whatsapp,
                              color: Colors.greenAccent,
                              size: 28,
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text("     Message",
                                style: TextStyle(fontSize: 15))),
                        TextButton(
                            onPressed: () {},
                            child: Text("+233245099597",
                                style: TextStyle(fontSize: 20))),
                        Spacer(),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "Email",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text("+elias419silencer@gmail.com",
                                  style: TextStyle(
                                      fontSize: 12, color: Colors.blue)),
                            ],
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.phone,
                                  color: Colors.grey,
                                  size: 28,
                                ),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.message,
                                  color: Colors.grey,
                                  size: 28,
                                ),
                              ),
                            ],
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                    // Row(
                    //   children: [
                    //     Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: [
                    //         Text("E-mail",
                    //             style: TextStyle(color: Colors.grey)),
                    //         TextButton(
                    //             onPressed: () {},
                    //             child: Text("elias@gmail.com")),
                    //       ],
                    //     ),
                    //     IconButton(
                    //         onPressed: () {},
                    //         icon: Icon(
                    //           Icons.email_sharp,
                    //           color: Colors.grey,
                    //           size: 38,
                    //         )),
                    //   ],
                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // )
                  ],
                ),
              ),
            ),
          ),
        ])));
  }
}
