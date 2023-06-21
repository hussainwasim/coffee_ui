import 'package:flutter/material.dart';
import 'package:parcel_app_ui/components/models/coffe.dart';

class CoffeeTile extends StatelessWidget {
  final coffee coffe;
  void Function()? onPressed;
  final Widget icon;
  CoffeeTile(
      {super.key,
      required this.coffe,
      required this.onPressed,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(15)),
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 25),
      child: ListTile(
        leading: Image.asset(coffe.imagePath),
        title: Text(coffe.name),
        subtitle: Text(coffe.price),
        trailing: IconButton(onPressed: onPressed, icon: icon),
      ),
    );
  }
}
