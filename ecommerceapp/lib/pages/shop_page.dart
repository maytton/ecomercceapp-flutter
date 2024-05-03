import 'package:ecommerceapp/components/shoe_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
              color: Colors.grey[100], borderRadius: BorderRadius.circular(12)),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Search",
                style: TextStyle(color: Colors.grey),
              ),
              Icon(
                Icons.search,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        const Padding(
          padding: const EdgeInsets.symmetric(vertical: 25.0),
          child: Text(
            'everyone flies... some fly longer than others',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                'Hot Picks',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              Text(
                'See all',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Expanded(
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  Shoe shoe = Shoe(
                    name: 'Air Jordan',
                    price: '240',
                    description: 'Tenis',
                    imagePath: 'img/airjordan.avif',
                  );
                  return ShoeTile(
                    shoe: shoe,
                  );
                })),
      ],
    );
  }
}
