import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:responsive_app_sample_project/helper/responsive_helper.dart';

class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Resposive'),
      ),
      
      body: SafeArea(

          child: ResponsiveHelper(

            //MOBILE
            mobile: Column(
              children: [
                buildContainer(),
                buildText()
            ],
            ),

            //TABLET
            tab: Row(
              children: [
                buildContainer(),
                Expanded(child: buildText())
            ],
            )
            
            ),


        // child: LayoutBuilder(
        
        //   builder: (context, constraints) {

            
        //     if(constraints.maxWidth<700){
        //       return Column(
        //       children: [

        //         buildContainer(),

        //         buildText()

        //     ],
        //     );

        //     }else{

        //       return Row(
        //       children: [

        //          buildContainer(),
        //          SizedBox(width: 10,),
        //          Expanded(child: buildText())

        //     ],);

        //     }


            
        //   }
        // ),
      ),
      
    );
  }

  Text buildText() {
    return Text('heiii \n\n Hello How Are Yoy? \n I AM FINE.What About YOU?................................... ',
              style: TextStyle(
                fontSize: 25
              ),
              );
  }

  Container buildContainer() {
    return Container(
                width:320,
                height: 180,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(20)
                ),
              );
  }
}