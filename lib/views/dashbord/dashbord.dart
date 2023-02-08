import 'package:flutter/material.dart';
import 'package:tourism/components/snack_bars/app_snackbars.dart';
import 'package:tourism/components/snack_bars/snackbar.dart';
import 'package:tourism/core/core.dart';
import 'package:tourism/views/dashbord/home/home.dart';
import 'package:tourism/views/dashbord/menu/menu.dart';
import 'package:tourism/views/dashbord/more/more.dart';
import 'package:tourism/views/dashbord/offers/offers.dart';
import 'package:tourism/views/dashbord/profile/profile.dart';

class DashbordView extends StatefulWidget {
  const DashbordView({Key? key}) : super(key: key);

  @override
  State<DashbordView> createState() => _DashbordViewState();
}

class _DashbordViewState extends State<DashbordView> {
  int _currentIndex = 0;
  Widget _currentPage = HomeView();
  PageStorageBucket _pageStorageBucket = PageStorageBucket();
  DateTime? currentBackPressTime;

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      successSnackBar("Press again to exit app");
      return Future.value(false);
    }
    return Future.value(true);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: onWillPop,
      child: Scaffold(
        body: PageStorage(
          child: _currentPage,
          bucket: _pageStorageBucket,
        ),
        bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                onPressed: () {
                  _currentIndex = 1;
                  _currentPage = MenuView();
                  setState(() {});
                },
                child: Icon(Icons.dashboard,
                    color: _currentIndex == 1
                        ? ThemeColors.instance.primaryColor
                        : Colors.grey),
              ),
              MaterialButton(
                onPressed: () {
                  _currentIndex = 2;
                  _currentPage = OffersView();
                  setState(() {});
                },
                child: Icon(Icons.shopping_bag_outlined,
                    color: _currentIndex == 2
                        ? ThemeColors.instance.primaryColor
                        : Colors.grey),
              ),
              MaterialButton(
                onPressed: () {
                  _currentIndex = 3;
                  _currentPage = ProfileView();
                  setState(() {});
                },
                child: Icon(Icons.person,
                    color: _currentIndex == 3
                        ? ThemeColors.instance.primaryColor
                        : Colors.grey),
              ),
              MaterialButton(
                onPressed: () {
                  _currentIndex = 4;
                  _currentPage = MoreView();
                  setState(() {});
                },
                child: Icon(Icons.menu,
                    color: _currentIndex == 4
                        ? ThemeColors.instance.primaryColor
                        : Colors.grey),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: _currentIndex == 0
              ? ThemeColors.instance.primaryColor
              : Colors.grey,
          onPressed: () {
            _currentIndex = 0;
            _currentPage = HomeView();
            setState(() {});
          },
          child: Icon(Icons.home),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
