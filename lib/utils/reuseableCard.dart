import 'package:flutter/material.dart';
import 'package:vehicle_check/constants.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.cardTitle,
      required this.cardData,
      required this.onPress,
      required this.iconName});

  final String cardTitle;
  final IconData iconName;
  final String cardData;
  final VoidCallback?
      onPress; // VoidCallback is just shorthand for void Function() so you could also define it as final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Center(
        child: Container(
          child: Column(
            children: [
              Icon(
                iconName,
                size: 50.0,
              ),
              Text(
                cardTitle,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Divider(
                thickness: 2,
                indent: 5,
                endIndent: 5,
              ),
              Text(
                cardData,
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 20, color: kBlue),
              )
            ],
          ),
          margin: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
      ),
    );
  }
}
