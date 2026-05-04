import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/items_details_models.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/items_details.dart';

// ignore: must_be_immutable
class IncomeDetails extends StatelessWidget {
   IncomeDetails({super.key});

  
  List<ItemsDetailsModel> itemsDetails = [
    ItemsDetailsModel(
      title: 'Design services',
      percentage: 40,
      color: Color(0xFF208BC7),
    ),
    ItemsDetailsModel(
      title: 'Design products',
      percentage: 25,
      color: Color(0xFF4DB7F2),
    ),
    ItemsDetailsModel(
      title: 'products royalty',
      percentage: 20,
      color: Color(0xFF064060),
    ),
      ItemsDetailsModel(
        title: 'Other ',
        percentage: 22,
        color: Color(0xFFE2DECD),
      ),
  ];
  @override
  Widget build(BuildContext context) {
    log(MediaQuery.of(  context).size.width.toString());
return Column( children: itemsDetails.map((e) => ItemsDetails(itemsDetailsModel: e),).toList());

    
  }
}
