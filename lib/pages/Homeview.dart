// ignore_for_file: file_names

import 'package:contactsapp/pages/contact_details.dart';
import 'package:contactsapp/pages/contacts.dart';
import 'package:contactsapp/pages/deleteContact.dart';
import 'package:flutter/material.dart';
//import 'package:fl';

class Contacts extends StatefulWidget {
  Contacts({Key? key}) : super(key: key);

  @override
  State<Contacts> createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  final Contactapp = [
    Contact(name: "Gadafi Jilmadaana", number: "0247534220", email: "gj@123", id: ''),
    Contact(name: "Mumuni Sulemana", number: "+233207544308", email: "s12825", id: ''),
    Contact(
        name: "Danie Saani", number: "0378441025", email: "jilma@e", id: ''),
    Contact(
        name: "Mohammed", number: "0200025331", email: "elias7/532", id: ''),
    Contact(name: "karim", number: "0247755432", email: "elimsmsn", id: ''),
    Contact(
        name: "Barikisu", number: "+2335879968", email: "gilma@eliAS", id: ''),
  ];
  int _selecetedIndex = 0;

  void _isSeleceted(int index) {
    setState(() {
      _selecetedIndex = index;
    });
  }

  List ViewList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text("Contacts",
            style: Theme.of(context).appBarTheme.titleTextStyle),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(.0),
          //  preferredSize: null,
          child: Padding(
            padding: const EdgeInsets.only(left: 15),
            child: TextField(
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: "Search",
                //icon: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "User",
          ),
        ],
        selectedItemColor:
            Theme.of(context).bottomNavigationBarTheme.selectedIconTheme?.color,
        unselectedItemColor: Theme.of(context)
            .bottomNavigationBarTheme
            .unselectedIconTheme
            ?.color,
        // unselectedFontSize: Theme.of(context).bottomNavigationBarTheme,
        backgroundColor:
            Theme.of(context).bottomNavigationBarTheme.backgroundColor,
        currentIndex: _selecetedIndex,
        onTap: _isSeleceted,
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        itemCount:
        15;
        return Dismissible(
          // key: ValueKey(context),
          key: UniqueKey(),
          background: Container(
            color: Colors.red,
            child: Icon(Icons.delete),
          ),
          direction: DismissDirection.endToStart,
          confirmDismiss: (direction) async {
            var result = await showDialog(
                context: (context), builder: (context) => DeleteContact());
            return result;
          },
          onDismissed: (direction) {
            setState(() {});
          },
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contact_details()),
              );
            },
            child: ListTile(
              title: Text("Bryson Feli",
                  style: Theme.of(context).textTheme.bodyText1),
              subtitle: Text(
                "+2335879644",
                style: Theme.of(context).textTheme.bodyText2,
              ),
              trailing: IconButton(
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) => Column(
                        children: [
                          TextButton(onPressed: () {}, child: Text("Edit")),
                        ],
                      ),
                    );
                  },
                  icon: Icon(Icons.more_horiz)),
            ),
          ),
        );
      }),
    );
  }
}
