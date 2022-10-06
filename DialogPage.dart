import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogPage extends StatefulWidget {
  const DialogPage({Key? key}) : super(key: key);

  @override
  State<DialogPage> createState() => _DialogPageState();
}

class _DialogPageState extends State<DialogPage> {

 String subwayName1 = '';
 String passenger1 = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Form(
        child: Column(
          children: [
            SizedBox(height: 10,),
            TextField(
              onChanged: (val){
                setState(() {
                  subwayName1 = val;
                  print('subwayName1 ${subwayName1}');
                });
              }
            ),
            SizedBox(height: 10,),
            TextField(
                onChanged: (val){
                  setState(() {
                    passenger1 = val;
                    print('passenger1 ${passenger1}');

                  });
                }
            ),
          ],
        ),
      ),
    );
  }
}
