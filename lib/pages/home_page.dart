import 'package:flutter/material.dart';
import 'package:go_moon/widgets/DropDown.dart';

class HomePage extends StatelessWidget {
  //This variables  are representing the width and Height of the screen device
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  //Main widget that contains all the body
  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.01),
          //Here i put the column where i can put as many widget as i want
          child: Stack(
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [_pageTitle(), _bookRideWidget()]),
              Align(
                alignment: Alignment.centerRight,
                child: _astroImageWidget(),
              )
            ],
          ),
        ),
      ),
    );
  }

  //Widget for the title
  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  //Widget for the image
  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/astro_moon.png")),
      ),
    );
  }

//Widget that groups all the widgets
  Widget _bookRideWidget() {
    return Container(
      height: _deviceHeight * 0.25,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _destinationDropDownWidget(),
            _travellerInformationWidget(),
            _rideButton()
          ]),
    );
  }

//Widget for the dropList
  Widget _destinationDropDownWidget() {
    //List of elements should be a list of objects that is the reason why this looks like that
    List<String> _list = [
      "James Web Station",
      "Hubble Station",
      "Notorius Station",
      "Sarante Station"
    ];
    return CustomDropDown(_list, _deviceWidth);
  }

  //Widget for the numbers of traveller
  Widget _travellerInformationWidget() {
    //List of elements should be a list of objects that is the reason why this looks like that
    List<String> value1 = ["1", "2", "3", "4"];
    List<String> value2 = ["Economy", "Business", "Study", "Relations"];
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomDropDown(value1, _deviceWidth * 0.45),
          CustomDropDown(value2, _deviceWidth * 0.40)
        ]);
  }

//Button widget
  Widget _rideButton() {
    return Container(
      margin: EdgeInsets.only(bottom: _deviceHeight * 0.005),
      width: _deviceWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: MaterialButton(
        onPressed: () {},
        child: Text(
          "Book Ride",
          style: TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
