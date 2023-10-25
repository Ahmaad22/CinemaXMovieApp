import 'package:cinemax_movie_app/Core/Constants/colors_const.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomOnOff extends StatefulWidget {
    CustomOnOff({super.key,required this.color});
 
 
 
 
Color color;

  @override
  State<CustomOnOff> createState() => _CustomOnOffState();
}

class _CustomOnOffState extends State<CustomOnOff> {
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
  onTap: (){
    if(widget.color==ConstColors.grayColor){
      widget.color=ConstColors.primaryColor;
      setState(() {
        
      });
    }
    else{
      widget.color=ConstColors.grayColor;
      setState(() {
        
      });
    }
  },
  child:   Stack(
    children: [
      Container(
        
        width: 48,
        height: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: widget.color
        ),

        ),
        
        
OnOFFCircle(color: widget.color)
    ],
  ),
)

;
  }
}
class OnOFFCircle extends StatelessWidget {
  const OnOFFCircle({super.key,
    required this.color
  });
   final Color color;

  @override
  Widget build(BuildContext context) {
    return color==ConstColors.primaryColor? Positioned(
      left: 25,
          top: 2,
      child: Container(width: 20,height: 20,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
        color: ConstColors.whiteColor),),
    ):Positioned(
      left: 3,
          top: 2,
      child: Container(width: 20,height: 20,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(360),
        color: ConstColors.whiteColor),),
    );
  }
}