import 'package:flutter/material.dart';

class LeftMenu extends StatelessWidget {
  const LeftMenu({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
                color: Colors.green,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/logo_socfindo.png'))),
            child: Text(
              style: TextStyle(color: Colors.white, fontSize: 25),
              'Side menu',
            ),
          ),
          const ListTile(
            title: Text('Welcome'),
            leading: Icon(Icons.input),
            onTap: null,
          ),
          const ListTile(
            title: Text('Profile'),
            leading: Icon(Icons.verified_user),
            onTap: null, //() => {Navigator.of(context).pop()}
          ),
          const ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: null, //() => {Navigator.of(context).pop()},
          ),
          const ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: null, //() => {Navigator.of(context).pop()},
          ),
          const ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
