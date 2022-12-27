import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tourism/components/boxShadow.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/routes/routes.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MenuView extends StatelessWidget {
  MenuView({Key? key}) : super(key: key);
  final images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBwy-MxeHZRqKAPakZo4Kxw7Eh0v2m74eWZAiracS-Zn99P8N0tBakqT9ERdWmRCnLjQM&usqp=CAU',
    'https://st2.depositphotos.com/4009549/8292/i/450/depositphotos_82929960-stock-photo-herbs-mix-with-tomatoes-lemon.jpg',
    'https://c4.wallpaperflare.com/wallpaper/205/168/868/dinner-food-pie-pizza-wallpaper-preview.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBwy-MxeHZRqKAPakZo4Kxw7Eh0v2m74eWZAiracS-Zn99P8N0tBakqT9ERdWmRCnLjQM&usqp=CAU',
    'https://st2.depositphotos.com/4009549/8292/i/450/depositphotos_82929960-stock-photo-herbs-mix-with-tomatoes-lemon.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      local!.menu,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.shopping_cart_outlined,
                          color: Colors.black),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: kinputDecoration(
                    hintText: local.searchitems,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Stack(
                children: [
                  Container(
                    width: 80,
                    height: 515,
                    decoration: BoxDecoration(
                      color: ThemeColors.instance.primaryColor,
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                  ),
                  Column(
                    children: List.generate(
                      images.length,
                      (index) {
                        return MenuTile(
                          onTap: () => Get.toNamed(Routes.exploreMenu),
                          img: images[index],
                          label: local.foodcategory,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuTile extends StatelessWidget {
  const MenuTile({
    Key? key,
    required this.img,
    required this.onTap,
    required this.label,
  }) : super(key: key);

  final String? img;
  final String? label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 70),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(50),
                  bottomLeft: Radius.circular(50),
                  topRight: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
                boxShadow: [kBoxShadow()]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label!, style: Theme.of(context).textTheme.headline6),
                SizedBox(height: 10),
                Text("Food"),
              ],
            ),
          ),
          Positioned(
            left: 5,
            top: 20,
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                image: DecorationImage(
                  scale: 5,
                  fit: BoxFit.fill,
                  image: CachedNetworkImageProvider(
                    img.toString(),
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            top: 33,
            right: 12,
            child: Material(
              color: Colors.white,
              type: MaterialType.circle,
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 15,
                  color: Colors.red,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
