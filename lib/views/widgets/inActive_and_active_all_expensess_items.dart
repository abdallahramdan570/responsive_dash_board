import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expensess_items_models.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/all_expensess_items_headers.dart';

class InActiveAllExpensessItems extends StatelessWidget {
  const InActiveAllExpensessItems({super.key, required this.itemsModels});

  final AllExpensessItemsModels itemsModels;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFF1F1F1), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemsHeader(image: itemsModels.image),
          const SizedBox(height: 34),
          Text(itemsModels.title, style: AppStyle.styleMedium16),
          const SizedBox(height: 8),
          Text(itemsModels.date, style: AppStyle.styleRegular14),
          const SizedBox(height: 16),
          Text(itemsModels.price, style: AppStyle.styleSemiBold24),
        ],
      ),
    );
  }
}

class ActiveAllExpensessItems extends StatelessWidget {
  const ActiveAllExpensessItems({super.key, required this.itemsModels});

  final AllExpensessItemsModels itemsModels;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Color(0xFFF1F1F1), width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemsHeader(
            image: itemsModels.image,

            imageColor: Colors.white,
            imageBackgroundColor: Colors.white.withValues(alpha: 0.1),
          ),
          const SizedBox(height: 34),
          Text(
            itemsModels.title,
            style: AppStyle.styleMedium16.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            itemsModels.date,
            style: AppStyle.styleRegular14.copyWith(
              color: Colors.white.withAlpha(70),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            itemsModels.price,
            style: AppStyle.styleSemiBold24.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
