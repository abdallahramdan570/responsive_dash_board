import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_background_contanier.dart';
import 'package:responsive_dash_board/views/widgets/lastest_transction.dart';
import 'package:responsive_dash_board/views/widgets/quick_Invoice_Form.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoic_header.dart';

class QuickInvoic extends StatelessWidget {
  const QuickInvoic({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackGraundContainer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          QuickInvoicHeader(),
            SizedBox(height: 16),
          Column(
            children: [
              LastestTransction(),
              Divider(height:60 ),
              QuickInvoiceForm(),
            ],
          ),
        ],
      ),
    );
  }
}
