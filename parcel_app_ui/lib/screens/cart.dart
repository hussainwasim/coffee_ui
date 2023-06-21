import 'package:flutter/material.dart';
import 'package:parcel_app_ui/components/models/coffe.dart';
import 'package:parcel_app_ui/components/models/coffee_list.dart';
import 'package:parcel_app_ui/components/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    void addToCart(coffee coffee) {
      Provider.of<CoffeShop>(context, listen: false).addCart(coffee);
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("SuccessFully Add to Your Cart"),
              ));
    }

    return Consumer<CoffeShop>(
      builder: (context, value, child) => SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            Text(
              'How would you like to Cofee',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: value.coffeShop.length,
                    itemBuilder: (context, index) {
                      coffee eachCoffee = value.coffeShop[index];
                      return CoffeeTile(
                        coffe: eachCoffee,
                        icon: Icon(Icons.add),
                        onPressed: () => addToCart(eachCoffee),
                      );
                    }))
          ],
        ),
      )),
    );
  }
}
