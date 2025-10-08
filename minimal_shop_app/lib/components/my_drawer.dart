import 'package:flutter/material.dart';
import 'package:minimal_shop_app/components/my_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              // header
              DrawerHeader(
                child: Icon(
                  Icons.shopping_bag,
                  size: 64,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),

              const SizedBox(height: 24),

              // shop tile
              MyTile(
                icon: Icons.home,
                title: 'Shop',
                onTap: () => Navigator.pushNamed(context, '/shop_page'),
              ),

              // cart tile
              MyTile(
                icon: Icons.shopping_cart,
                title: 'Cart',
                onTap: () => Navigator.pushNamed(context, '/cart_page'),
              ),
            ],
          ),

          // exit  tile
          Padding(
            padding: const EdgeInsets.only(bottom: 24),
            child: MyTile(
              icon: Icons.logout,
              title: 'Exit',
              onTap: () => Navigator.pushNamed(context, '/intro_page'),
            ),
          ),
        ],
      ),
    );
  }
}
