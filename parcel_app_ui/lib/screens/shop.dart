import 'package:flutter/material.dart';
import 'package:parcel_app_ui/components/models/coffe.dart';
import 'package:parcel_app_ui/components/models/coffee_list.dart';
import 'package:parcel_app_ui/components/models/coffee_shop.dart';
import 'package:provider/provider.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    void removeFromCart(coffee coffee) {
      Provider.of<CoffeShop>(context, listen: false).reMoveCart(coffee);
    }

    return Consumer<CoffeShop>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Your Carts",
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: value.usercart.length,
                  itemBuilder: (context, index) {
                    coffee eachCoffee = value.usercart[index];
                    return CoffeeTile(
                        coffe: eachCoffee,
                        onPressed: () => removeFromCart(eachCoffee),
                        icon: Icon(Icons.delete));
                  },
                ),
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Text(
                    "Pay Now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(15)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
