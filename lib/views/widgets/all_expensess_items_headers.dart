

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensessItemsHeader extends StatelessWidget {
  const AllExpensessItemsHeader({super.key,  required this.image,  this.imageColor,  this.imageBackgroundColor});
final String image ;
final Color? imageColor ,imageBackgroundColor ;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Flexible(
        child:ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 60),
          child: AspectRatio(
            aspectRatio: 1,
            child: Container( 
            
            decoration: ShapeDecoration(
              color:imageBackgroundColor ?? const Color(0xFFFAFAFA),
              shape: OvalBorder()
              ),
              child:SvgPicture.asset(image,
              
              colorFilter:ColorFilter.mode(imageColor ?? Color(0xff4EB7F2), BlendMode.srcIn) ,
              ),
              
              ),
          ),
        ),
      ),
      
      Expanded(child: SizedBox()),
      Transform.rotate(
        angle: 1.57079633*3,
        child: Icon(Icons.keyboard_arrow_down_outlined,
        color:imageColor == null ? const Color(0xFF064061) : Colors.white,),
      )
      
    ],);
  }
}