import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_style.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_contanier.dart';
import 'package:responsive_dash_board/views/widgets/custom_buttom.dart';
import 'package:responsive_dash_board/views/widgets/lastest_transction.dart';
import 'package:responsive_dash_board/views/widgets/quick_Invoice_Form.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoic_header.dart';


class QuickInvoic extends StatelessWidget {
  const QuickInvoic({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGraundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoicHeader(),

          LastestTransction(),
          Divider(height: 50),
          QuickInvoiceForm(),
          
         
        ],
      ),
    );
  }
}
