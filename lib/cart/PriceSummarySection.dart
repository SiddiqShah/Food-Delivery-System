import 'package:flutter/material.dart';

class PriceSummarySection extends StatelessWidget {
  const PriceSummarySection({super.key});

  @override
  Widget build(BuildContext context) {
    double subtotal = 50.70;
    double delivery = 10;
    double total = subtotal + delivery;

    return Column(
      children: [
        SizedBox(height: 20),
        // Subtotal
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: [
              const Text(
                'Subtotal',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const Spacer(),
              Text(
                '\$${subtotal.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
          color: Color.fromARGB(255, 194, 194, 194),
        ),

        // Delivery
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: [
              const Text(
                'Delivery',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const Spacer(),
              Text(
                '\$${delivery.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
          color: Color.fromARGB(255, 194, 194, 194),
        ),

        // Total
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Row(
            children: [
              const Text(
                'Total',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Spacer(),
              Text(
                '\$${total.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        const Divider(
          indent: 20,
          endIndent: 20,
          color: Color.fromARGB(255, 194, 194, 194),
        ),
        const SizedBox(height: 20),

        // Checkout Button
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Container(
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.pink,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                'Checkout  \$${total.toStringAsFixed(2)}',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
