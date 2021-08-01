import 'package:flutter/material.dart';
import 'package:flutterando/widgets/custom-switch/custom_switch_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [CustomSwitch()],
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.orange,
        ),
        elevation: 0,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.orange),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/avatar.jpg',
                ),
              ),
              accountName: Text('Lucas Tamir Faria'),
              accountEmail: Text('lucastamir@gmail.com'),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: Colors.orange),
              title: const Text('Home'),
              subtitle: const Text('Lorem ipsum dolor sit amet'),
              onTap: () => Navigator.of(context).pushNamed('home'),
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.orange),
              title: const Text('About Us'),
              subtitle: const Text('Lorem ipsum dolor sit amet'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Colors.orange),
              title: const Text('Settings'),
              subtitle: const Text('Lorem ipsum dolor sit amet'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.favorite, color: Colors.red),
              title: const Text('Red Heart'),
              subtitle: const Text('Lorem ipsum dolor sit amet'),
              onTap: () => Navigator.of(context).pushNamed('red'),
            ),
            ListTile(
              leading: const Icon(Icons.favorite, color: Colors.green),
              title: const Text('Green Heart'),
              subtitle: const Text('Lorem ipsum dolor sit amet'),
              onTap: () => Navigator.of(context).pushNamed('green'),
            ),
            ListTile(
              leading: const Icon(Icons.favorite, color: Colors.amber),
              title: const Text('Yellow Heart'),
              subtitle: const Text('Lorem ipsum dolor sit amet'),
              onTap: () => Navigator.of(context).pushNamed('yellow'),
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app, color: Colors.orange),
              title: const Text('Logout'),
              subtitle: const Text('Lorem ipsum dolor sit amet'),
              onTap: () => Navigator.of(context).pushReplacementNamed('/'),
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(36.0),
              ),
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.red,
              ),
              onTap: () => Navigator.of(context).pushNamed('red'),
            ),
            const SizedBox(height: 30.0),
            InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(36.0),
              ),
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.green,
              ),
              onTap: () => Navigator.of(context).pushNamed('green'),
            ),
            const SizedBox(height: 30.0),
            InkWell(
              borderRadius: const BorderRadius.all(
                Radius.circular(36.0),
              ),
              child: const Icon(
                Icons.favorite_border_outlined,
                color: Colors.amber,
              ),
              onTap: () => Navigator.of(context).pushNamed('yellow'),
            ),
          ],
        ),
      ),
    );
  }
}
