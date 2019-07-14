import 'package:flutter/material.dart';

class  NewPage extends StatelessWidget {
  final String title;
  
  NewPage(this.title); 
  @override
  Widget build(BuildContext context) {
  //var sizeWidth = MediaQuery.of(context).size.width;
  //var sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
            
              Image.asset('assets/sedieCurvate.jpg',
              fit: BoxFit.cover,),
              
           /*  Center(
            child: Image.asset(
              'assets/sedieCurvate.jpg',
              width: sizeWidth,
              height: sizeHeight,
              fit: BoxFit.contain,
            ),

            //Image.asset('assets/giuditta_srl.jpg', width: 200.0, height: 120.0,),
            ), */
            
        
            Center(
            child: Text("HERE We Are",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.red,
                    ),
                  ),
            ),
          ],
        ),
      
    );
  }
}