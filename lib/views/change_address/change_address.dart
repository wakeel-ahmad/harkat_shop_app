import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tourism/components/input_decoraion.dart';
import 'package:tourism/core/theme/theme_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ChangeAddressview extends StatelessWidget {
  const ChangeAddressview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final local = AppLocalizations.of(context);
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            const GoogleMap(
              initialCameraPosition: CameraPosition(
                target: LatLng(30.6737492, 73.653722),
                zoom: 14,
              ),
            ),
            Positioned(
              top: 0,
              child: Container(
                height: 70,
                width: Get.size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(Icons.arrow_back_ios),
                    ),
                    const SizedBox(width: 20),
                    Text(
                      local!.changeaddress,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.all(12),
                height: 150,
                width: Get.size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: kinputDecoration(
                        hintText: local.searchaddress,
                      ),
                    ),
                    SizedBox(height: 10),
                    ListTile(
                      onTap: () {
                        // TODO
                      },
                      leading: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.pink.withOpacity(0.2),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.star,
                          color: ThemeColors.instance.primaryColor,
                        ),
                      ),
                      title: Text(local.choseaplace),
                      trailing: Icon(Icons.arrow_forward_ios_outlined),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
