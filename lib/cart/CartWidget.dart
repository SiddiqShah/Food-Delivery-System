import 'package:flutter/material.dart';

class Cartwidget extends StatelessWidget {
  final String img;
  final String title;
  final String subsTitile;
  final String price;
  final IconData addItemIcon;
  final int itemCount;
  final IconData removeItemIcon;

  const Cartwidget({
    super.key,
    required this.img,
    required this.title,
    required this.subsTitile,
    required this.price,
    required this.addItemIcon,
    required this.itemCount,
    required this.removeItemIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Food Image
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(img, height: 70, width: 70, fit: BoxFit.cover),
            ),
            const SizedBox(width: 15),

            // Title + Subtitle + Price + Counter
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),

                  // Subtitle
                  Text(
                    subsTitile,
                    style: const TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                  const SizedBox(height: 6),

                  // Price and Counter Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price
                      Text(
                        price,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      // Quantity Counter
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.pink,
                            child: Icon(
                              removeItemIcon,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(width: 8),
                          Text(
                            itemCount.toString(),
                            style: const TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 8),
                          CircleAvatar(
                            radius: 12,
                            backgroundColor: Colors.pink,
                            child: Icon(
                              addItemIcon,
                              size: 16,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
