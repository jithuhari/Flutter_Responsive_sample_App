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
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text('Resposive'),
        backgroundColor: Colors.red,
      ),
      
      body: SafeArea(

          child: ResponsiveHelper(

            //MOBILE
            mobile: Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height*.05,),
                buildContainer(),
                buildText()
            ],
            ),

            //TABLET
            tab: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    SizedBox(width:MediaQuery.of(context).size.width*.04 ,),
                    buildContainer(),
                    Expanded(child: buildText())
                ],
                ),
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

  Widget buildText() {
    return Column(children: [
      SizedBox(height:MediaQuery.of(context).size.height*.05 ,),
      Row(
        
        children: [
          
          SizedBox(width:MediaQuery.of(context).size.width*.15 ,),
          Column(
            children: [

              Text('Name:',
              style: TextStyle(
                fontSize: 18 ,
                fontWeight: FontWeight.bold
              ),
              ),
               SizedBox(height:MediaQuery.of(context).size.height*.01 ,),
              Text('Email:',
              style: TextStyle(
              fontSize: 18 ,
              fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height:MediaQuery.of(context).size.height*.01 ,),
           Text('Address:',
            style: TextStyle(
            fontSize: 18 ,
            fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(height:MediaQuery.of(context).size.height*.01 ,),
            ],
          ),

          SizedBox(width: MediaQuery.of(context).size.width*.1,),

          Column(
            children: [

              Text('ABC',
              style: TextStyle(
              fontSize: 18 ,
              fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height:MediaQuery.of(context).size.height*.01 ,),
              Text('ABC@hmail.com',
              style: TextStyle(
              fontSize: 18 ,
              fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height:MediaQuery.of(context).size.height*.01 ,),
              Text('ABC Villa DEF',
              style: TextStyle(
              fontSize: 18 ,
              fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height:MediaQuery.of(context).size.height*.01 ,),
            ],
          )
        ],
      ),

     
    ],);
  }

  CircleAvatar buildContainer() {
    return CircleAvatar(
      radius: MediaQuery.of(context).size.height*.15,
      backgroundImage:NetworkImage('https://images.pexels.com/photos/38537/woodland-road-falling-leaf-natural-38537.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
      );
  }
}