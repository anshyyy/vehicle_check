import 'package:flutter/material.dart';
import 'package:vehicle_check/constants.dart';
import 'package:vehicle_check/screens/profile.dart';
import 'package:vehicle_check/utils/textField.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kGreen,
        title: const Text(
          "Upate Profile",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          BuildTextField(labelText: "Name", placeholder: "Enter your Name"),
          BuildTextField(labelText: "Email", placeholder: "Enter your email"),
          BuildTextField(labelText: "Contact Number", placeholder: "123456789"),
          BuildTextField(
              labelText: "Address", placeholder: "Enter your Address"),
          BuildTextField(
              labelText: "Agency Name", placeholder: "Enter your Agency Name"),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const Profile()));
                },
                child: Text("CANCEL",
                    style: TextStyle(
                        fontSize: 15, letterSpacing: 2, color: Colors.black)),
                style: OutlinedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "SAVE",
                  style: TextStyle(
                      fontSize: 15, letterSpacing: 2, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: mycolorkYellow,
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
