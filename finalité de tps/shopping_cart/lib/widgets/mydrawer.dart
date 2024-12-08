import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text("User"),
            accountEmail: Text("user@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avatar.png"),
            ),
            decoration: BoxDecoration(color:Colors.deepOrangeAccent),
            ),
            ...choices.map((Choice choice){
              return ListTile(
                leading:
                const Icon(Icons.person, color: Colors.blueGrey),
                textColor: Colors.blueGrey,
                title: Text(choice.title),
                onTap: () { 
                  print(choice.title);
                  Navigator.pushNamed(context, '/${choice.title}');
                },
              );
            }),
            const AboutListTile(
              icon: Icon(Icons.info,color: Colors.redAccent,),
              applicationIcon: Icon(Icons.local_play,),
              applicationName: 'ABC Corporation',
              applicationVersion: '1.0.25',
              applicationLegalese: '© 2024 Company',
              child: Text('About app'),
            ),
        ],
      ),
    );
  }
}

class Choice {
 const Choice({required this.title, required this.icon});
 final String title;
 final IconData icon;
}
const List<Choice> choices = <Choice>[
 Choice(title: 'Profile', icon: Icons.home),
 Choice(title: 'Subscribe', icon: Icons.directions),
 Choice(title: 'Items', icon: Icons.format_list_bulleted_outlined),
 Choice(title: 'Contact', icon: Icons.email_rounded),
 Choice(title: 'Settings', icon: Icons.settings),
 Choice(title: 'Exit', icon: Icons.exit_to_app),
]; 