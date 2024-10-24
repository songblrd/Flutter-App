import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MT Junk.S',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 86, 200, 53),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 86, 200, 53)),
        useMaterial3: true,
      ),
      home: const MyHomePage()
    );
    
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Center(
            child: Text("MT Junk.S"),
          )
          ),
        drawer: const NavigationDrawer(),
        body: const Wrap(
            children: <Widget>[
              ListTile(
                title: Text('Account Name: Terri Smolders'),
              ),
              ListTile(
                title: Text('Address: 123 Tech Street '),
              ),
              ListTile(
                title: Text('Account Type: Free Member\n'"You've been using MT Junk.S for 16 months now"),
              ),
              ListTile(
                title: Text("You have recycled \$52.61 worth of E-Waste!"),
              ),
              ListTile(
                title: Text("You have recycled \$83.56 worth of Clothing!"),
              ),
              ListTile(
                title: Text("You have kept 78lbs of E-Waste out of Landfills!"),
              ),
              ListTile(
                title: Text("You have kept 34lbs of clothing out of Landfills!"),
              ),
            ],
          ),
        );
  }

}










class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({super.key});
 
  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildHeader(context),
          buildMenuItems(context),
        ],
      ),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    color: Colors.blue,
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
  );
  Widget buildMenuItems(BuildContext context) => Container(
    color: const Color.fromARGB(255, 86, 200, 53),
    padding: const EdgeInsets.all(24),
    child: Wrap(
     children: [
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text('Settings'),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.login),
        title: const Text('Sign In'),
        onTap: (){},
      ),
      ListTile(
        leading: const Icon(Icons.logout),
        title: const Text('Sign out'),
        onTap: (){},
      ),
    ],
  )
  );
}
