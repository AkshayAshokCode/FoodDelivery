import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
        controller: pageController,
          itemCount: 5 ,
          itemBuilder: (context, position){
        return _buildPageItem(position);
      }),
    );
  }

  Widget _buildPageItem(int index){
    return Stack(
      children: [
        Container(
        height: 220,
        margin: EdgeInsets.only(left: 5, right: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: index.isEven?Color(0xFF69c5df):Color(0xFF9294cc),
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                    "assets/image/food11.png"
                )
            )
        )
    ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
              height: 140,
              margin: EdgeInsets.only(left: 30, right: 30, bottom: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
              ),
            child: Container(
              // add combination of row & column
            ),
          ),
        )
      ]
    );
  }
}
