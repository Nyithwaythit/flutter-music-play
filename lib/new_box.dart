import 'package:flutter/material.dart';

class NewBox extends StatelessWidget {
  final child;
  const NewBox({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding:const EdgeInsets.all(8),
        child: Center(child: child),
        decoration: BoxDecoration(
          borderRadius:BorderRadius.circular(12) ,
          color : Colors.grey[300],
          boxShadow: [
            //darker Shadow on †he button right
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 15,
              offset:const Offset(5,5),

            ),

            //lighter shadow on the top  left
            BoxShadow(
              color: Colors.grey.shade50,
              blurRadius: 10,
              offset:const Offset(-5,-5),

            ),
          ]



        ),
  

       );
  }
}