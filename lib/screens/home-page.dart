import 'package:flutter/material.dart';
import 'package:vehicle_check/constants.dart';
import 'package:vehicle_check/screens/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGreen,
        title: const Text(
          "Home",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: kGreen,
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                    child: Text(
                  'KK ENTERPRISES',
                  style: TextStyle(fontSize: 25),
                )),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text(
                  'Dashboard',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                  'Profile',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (() {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Profile()));
                }),
              ),
              ListTile(
                leading: Icon(Icons.password),
                title: Text(
                  'Change Password',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
              ),
              ListTile(
                leading: Icon(Icons.account_tree_outlined),
                title: Text(
                  'Payment History',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
              ),
              ListTile(
                leading: Icon(Icons.shield),
                title: Text(
                  'Terms & Conditions',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
              ),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  'Logout',
                  style: TextStyle(fontSize: 20),
                ),
                onTap: (() {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => HomePage()));
                }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
