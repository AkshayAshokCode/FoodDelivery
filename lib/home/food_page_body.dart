import 'package:flutter/cupertino.dart';

class FoodPageBody extends StatefulWidget {
  const FoodPageBody({super.key});

  @override
  State<FoodPageBody> createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

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
                    "assets/image/food1.png"
                )
            )
        )
    )
      ]
    );
  }
}
