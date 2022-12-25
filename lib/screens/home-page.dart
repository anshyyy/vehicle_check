import 'package:flutter/material.dart';
import 'package:vehicle_check/constants.dart';
import 'package:vehicle_check/screens/profile.dart';
import 'package:vehicle_check/utils/reuseableCard.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int _selectedIndex = 0;
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
      body: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                color: mycolor,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Column(
                      children: [
                        const CircleAvatar(
                          radius: 50.0,
                          backgroundImage: AssetImage('images/enterprise.png'),
                        ),
                        const Text(
                          "KK ENTERPRISES",
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(children: [
                    Expanded(
                      flex: 1,
                      child: const TextField(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: '🔍 Chassis Number',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      flex: 1,
                      child: const TextField(
                        style: TextStyle(
                          color: Colors.black,
                        ),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: '🔍 1234',
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    )
                  ])
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: ReusableCard(
                  cardData: "202468",
                  cardTitle: "Pending",
                  onPress: (() {}),
                  iconName: Icons.pending_actions,
                )),
                Expanded(
                    child: ReusableCard(
                  cardData: "0",
                  cardTitle: "In Yard",
                  onPress: (() {}),
                  iconName: Icons.wallet_giftcard,
                ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                    child: ReusableCard(
                  cardData: "0",
                  cardTitle: "Realease",
                  onPress: (() {}),
                  iconName: Icons.upcoming_outlined,
                )),
                Expanded(
                    child: ReusableCard(
                  cardData: "0",
                  cardTitle: "Holds",
                  onPress: (() {}),
                  iconName: Icons.pause_circle_outline,
                ))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            SafeArea(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5),
                      child: LiteRollingSwitch(
                        onTap: () {},
                        onChanged: (bool position) {
                          print('The button is $position');
                        },
                        onDoubleTap: () {},
                        value: true,
                        textOn: "Online",
                        textOff: "Offline",
                        colorOn: mycolorkOrange,
                        colorOff: Colors.red,
                        iconOn: Icons.online_prediction,
                        iconOff: Icons.offline_bolt,
                        onSwipe: (bool postion) {
                          print('The button is $postion');
                        },
                      ),
                    ),
                    Container(
                        child: Row(children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.sync),
                        iconSize: 40,
                        splashColor: Colors.grey[400],
                      ),
                      Text(
                        "SYNC   ",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ]))
                  ],
                ),
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: kGreen,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
