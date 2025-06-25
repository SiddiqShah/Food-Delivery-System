import 'package:flutter/material.dart';
import 'package:food_delivery_system/HomeScreen/homeScreen.dart';
import 'package:food_delivery_system/cart/CartWidget.dart';
import 'package:food_delivery_system/cart/PriceSummarySection.dart';
import 'package:food_delivery_system/checkout/checkOut.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  final TextEditingController promoCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: SafeArea(
        child: Column(
          children: [
            // Top Bar
            Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_rounded,
                    color: Colors.white,
                    size: 25,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Homescreen(),
                      ),
                    );
                  },
                ),
                const Text(
                  'Cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.delete, color: Colors.white, size: 25),
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Cart cleared!')),
                    );
                  },
                ),
              ],
            ),

            const SizedBox(height: 15),

            // Cart content area
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 228, 228, 228),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  ),
                ),
                child: SingleChildScrollView(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Cartwidget(
                        img: 'images/pizza.webp',
                        title: 'Melting Cheese Pizza',
                        subsTitile: 'Pizzeria',
                        price: r'$20.00',
                        removeItemIcon: Icons.remove,
                        itemCount: 1,
                        addItemIcon: Icons.add,
                      ),
                      const SizedBox(height: 20),
                      Cartwidget(
                        img: 'images/pizza.webp',
                        title: 'Melting Cheese Pizza',
                        subsTitile: 'Pizzeria',
                        price: r'$20.00',
                        removeItemIcon: Icons.remove,
                        itemCount: 1,
                        addItemIcon: Icons.add,
                      ),
                      const SizedBox(height: 20),
                      Cartwidget(
                        img: 'images/pizza.webp',
                        title: 'Melting Cheese Pizza',
                        subsTitile: 'Pizzeria',
                        price: r'$20.00',
                        removeItemIcon: Icons.remove,
                        itemCount: 1,
                        addItemIcon: Icons.add,
                      ),
                      const SizedBox(height: 15),

                      // Promo Code Input
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  controller: promoCodeController,
                                  maxLength: 6,
                                  keyboardType: TextInputType.text,
                                  decoration: const InputDecoration(
                                    hintText: 'Enter Promo Code',
                                    counterText: '',
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 16,
                                    ),
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10.0),
                                child: Container(
                                  height: 50,
                                  width: 80,
                                  decoration: BoxDecoration(
                                    color: Colors.pink,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Apply',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Price Summary Section
                      GestureDetector(
                        onTap: () => {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => Checkout()),
                          ),
                        },
                        child: PriceSummarySection(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
