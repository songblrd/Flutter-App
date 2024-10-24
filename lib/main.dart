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
        scaffoldBackgroundColor: const Color.fromARGB(255, 168, 246, 147),
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 168, 246, 147)),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
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
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blue,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.map),
              label: "Drop off Centres"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.car_rental_rounded),
              label:"Pickups"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: "Learn More"
            )

          ],
        ),
        body: SizedBox(
          height: 96,
          child: Container(
            child: const Card(
              shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.yellowAccent)),
              child: Column(
                children: [
                 ListTile(
                 title: Text('Account Name: Terri Smolders\n''Address: 123 Tech Street\n''Your pickup day for your region is Wednesday.'), 
                 ),
                ]
              ),
              )
              ),
        )
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
        leading: const Icon(Icons.home),
        title: const Text('Home'),
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
      ListTile(
        leading: const Icon(Icons.settings),
        title: const Text("Settings"),
        onTap: () {},
      ),
      ListTile(
        leading: const Icon(Icons.add_shopping_cart),
        title: const Text("Community Marketplace"),
        onTap: () {},
      )
    ],
  )
  );
}
