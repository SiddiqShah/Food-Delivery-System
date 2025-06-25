import 'package:flutter/material.dart';
import 'package:food_delivery_system/HomeScreen/Exploreresturent.dart';
import 'package:food_delivery_system/HomeScreen/itemImages.dart';

class Itemscontainer extends StatelessWidget {
  const Itemscontainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            // First row (fixed)
            Padding(
              padding: const EdgeInsets.only(left: 2, right: 20, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Column(
                    children: [
                      Icon(Icons.camera, size: 30),
                      SizedBox(height: 8),
                      Text(
                        'Offercs',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.restaurant_outlined, size: 30),
                      SizedBox(height: 8),
                      Text(
                        'New Restaurants',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.pedal_bike, size: 30),
                      SizedBox(height: 8),
                      Text(
                        'Pick up',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.book, size: 30),
                      SizedBox(height: 8),
                      Text(
                        'Vouchers',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(height: 0, color: Color.fromARGB(255, 232, 232, 232)),

            // Second row (scrollable horizontally)
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  Itemimages(imagePath: 'images/pizza.webp', text: 'Pizza'),
                  SizedBox(width: 20),
                  Itemimages(imagePath: 'images/pizza.webp', text: 'Burgers'),
                  SizedBox(width: 20),
                  Itemimages(imagePath: 'images/pizza.webp', text: 'Chickens'),
                  SizedBox(width: 20),
                  Itemimages(
                    imagePath: 'images/pizza.webp',
                    text: 'Fried Chicken',
                  ),
                  SizedBox(width: 20),
                  Itemimages(imagePath: 'images/pizza.webp', text: 'Fast Food'),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Explore Restaurants',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),

            const ExploreRestaurants(),
          ],
        ),
      ),
    );
  }
}
