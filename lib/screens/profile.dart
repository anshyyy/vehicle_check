import 'package:flutter/material.dart';
import 'package:vehicle_check/constants.dart';
import 'package:vehicle_check/screens/home-page.dart';
import 'package:vehicle_check/screens/updateProfile.dart';
import 'package:vehicle_check/utils/button.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGreen,
        title: const Text(
          "Profile View",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(
            height: 5,
          ),
          SafeArea(
              child: Center(
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width / 1.1,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(0.5),
                  boxShadow: [
                    const BoxShadow(
                        color: Colors.black38, spreadRadius: 2, blurRadius: 5),
                  ]),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: const [
                          Text(
                            "ANSHUMAN SHARMA",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "anshuman9998@gmail.com",
                            style: TextStyle(color: Colors.black38),
                          ),
                          Text(
                            "1234567890",
                            style: TextStyle(color: Colors.black38),
                          )
                        ],
                      ),
                      const CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('images/user.png'),
                      )
                    ],
                  ),
                  const Divider(
                    thickness: 2, // thickness of the line
                    indent: 20, // empty space to the leading edge of divider.
                    endIndent:
                        20, // empty space to the trailing edge of the divider.
                    color: Colors.black12,
                    height: 20,
                  ),
                  const Text("Address",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const Text("MANGO",
                      style:
                          TextStyle(color: kBlue, fontWeight: FontWeight.bold)),
                  const Text(
                    "Agency Name",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text("KK ENTERPRISES",
                      style:
                          TextStyle(color: kBlue, fontWeight: FontWeight.bold))
                ],
              ),
            ),
          )),
          const SizedBox(
            height: 10,
          ),
          InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const UpdateProfile()));
              },
              child: const ButtonWidget(
                text: "Update",
                backg_color: kYellow,
                textColor: Colors.black,
              )),
          const SizedBox(
            height: 1,
          )
        ],
      ),
    );
  }
}
