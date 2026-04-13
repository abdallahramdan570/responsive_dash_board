import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_buttom.dart';
import 'package:responsive_dash_board/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                title: "Customer Name",
                hintText: "Enter customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTitleTextField(
                title: "Customer Email",
                hintText: "Enter customer email",
              ),
            ),
          ],
        ),
        SizedBox(height: 24),

        Row(
          children: [
            Expanded(
              child: CustomTitleTextField(
                title: "Customer Name",
                hintText: "Enter customer name",
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: CustomTitleTextField(
                title: "Customer Name",
                hintText: "USD",
              ),
            ),
          ],
        ),
          SizedBox(height: 24),
 Row(
            children: [
              Expanded(child: CustomButtom(
                text: "Add more details",
                backgroundColor: Colors.transparent,
                textColor: Color(0xFF4DB7F2),
              )),
              SizedBox(width: 24),
              Expanded(child: CustomButtom(
                text: "Send Money",
              
              )),
            ],
          ),

      ],
    );
  }
}
