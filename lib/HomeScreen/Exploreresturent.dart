import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExploreRestaurants extends StatelessWidget {
  const ExploreRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(7),
        border: Border.all(width: 1, color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(5)),
                child: Image.asset(
                  'images/pizza.webp',
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.favorite_border, size: 15),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'KFC Banane 11',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        r'5-20min$$$Fried Chicken',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(height: 9),
                      Row(
                        children: [
                          FaIcon(
                            FontAwesomeIcons.gift,
                            color: Colors.pink,
                            size: 16,
                          ),
                          const SizedBox(width: 4),
                          Text(
                            'Free ',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.pink.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.pink, size: 16),
                    const SizedBox(width: 4),
                    Text(
                      '5.0 ',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.pink.shade800,
                      ),
                    ),
                    Text(
                      '(32)',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Text(
            '    ----------------------------------------------------------------------------------------',
            style: TextStyle(color: const Color.fromARGB(255, 209, 209, 209)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 10),
            child: Row(
              children: [
                Container(
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.only(left: 2),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.box,
                        color: Colors.pink,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        r'40% of $19 Hot offer',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.pink,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade50,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.only(left: 5),
                  child: Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.percent,
                        color: Colors.pink,
                        size: 16,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'Upto 28% off',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.pink,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
