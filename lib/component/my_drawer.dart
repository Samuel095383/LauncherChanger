import 'package:flutter/material.dart';

import '../page/settingsPage.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          // logo
          DrawerHeader(child: Center(child:
          Icon(Icons.music_note,
            size: 50,
            color: Theme.of(context).colorScheme.inversePrimary,),
          ),
          ),
          // Home title

          Padding(
            padding: const EdgeInsets.only(left: 25, top: 25),
            child: ListTile(
              title: Text("H O M E"),
              leading: Icon(Icons.home),
              onTap: () => Navigator.pop(context),
            ),
          ),

          // Settings tile

          Padding(
            padding: const EdgeInsets.only(left: 25, top: 0),
            child: ListTile(
              title: Text("S E T T I N G S"),
              leading: Icon(Icons.settings),
              onTap: () {
                Navigator.pop(context);

                Navigator.push(context, MaterialPageRoute(builder: (context) => SettingsPage(),));

              },
            ),
          ),

        ],
      ),
    );
  }
}
