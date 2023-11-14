import 'package:flutter/material.dart';
import 'package:learning_app_a/kernel/theme/colors_app.dart';

class ListUsers extends StatelessWidget{
  final Map item;
  const ListUsers({super.key,required this.item});
  String getInitials(String name){
    List<String> names = name.split(" ");
    String initials = "";
    if(names.length > 0){
      initials += names[0][0];//e
    }

    if(names.length >1){
    initials += names[1][0];//eM
    }
    return initials.toUpperCase();//EM
  }
  @override
  Widget build(BuildContext context) {
  
    return  Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: ColorsApp.successColor,
              foregroundColor: Colors.white, //color de fuente
              child: 
                Text(getInitials(item['name'])),
            ),
            const SizedBox(
              width: 8,
            ),
            Text(item['name']),
            const Spacer(),
            const Icon(Icons.more_vert)
          ],
        ),
      ),
    );
  }

}