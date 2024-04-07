import 'package:flutter/material.dart';
import 'package:food_delivery/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

import '../utils/dimensions.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({super.key});

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Column(
         children: [
           //showing the header
           Container(
               child: Container(
                 margin: EdgeInsets.only(top: Dimensions.height45, bottom: Dimensions.width15),
                 padding: EdgeInsets.only(left: Dimensions.width20, right: Dimensions.width20),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   children: [
                     Column(
                       children: [
                         BigText(text: "India", color: AppColors.mainColor),
                         Row(
                           children: [
                             SmallText(text: "Pune",  color: Colors.black54),
                             Icon(Icons.arrow_drop_down_rounded)
                           ],
                         )

                       ],
                     ),
                     Center(
                       child: Container(
                         width: Dimensions.width45,
                         height: Dimensions.height45,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(Dimensions.radius15),
                           color: AppColors.mainColor,
                         ),
                         child: Icon(Icons.search, color: Colors.white, size: Dimensions.iconSize24,),
                       ),
                     )
                   ],
                 ),
               )
           ),
           //showing the body
           Expanded(child: SingleChildScrollView(
             child:  FoodPageBody(),
           ),)

         ],
       )
    );
  }
}
