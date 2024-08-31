import 'package:flutter/material.dart';
import 'package:flutter_app_final_project/colors.dart';

class Cost extends StatelessWidget
{double c;

Cost({this.c});

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
      return Scaffold(

      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(backgroundColor:Colors.white70,
      title: Text("Cost page \$", style: TextStyle(fontWeight: FontWeight.w200,color:Colors.black)),
      ),
body: Container(color:ksecondaryColor,
  width: double.infinity,
  child:   Column(mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
          width: size.width*.8,
          height:size.height*.6 ,

          padding: EdgeInsets.only(left: 10,right:10 ,top:10 ,bottom: 10 ),

          decoration: BoxDecoration(

            color: Colors.white,

            borderRadius: BorderRadius.circular(10),

            boxShadow: [

              BoxShadow(offset:Offset(0,4) ,

                  blurRadius: 20,

                  color:Color( 0xFFB0CCE1).withOpacity(0.32))],

          ),

          child:Card(



              child: Column(



                  children: [Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

                    children:[

                      Container(width: size.width*0.6,height: size.height*0.4,

                        padding: EdgeInsets.all(25),

                        margin: EdgeInsets.only(bottom: 15),

                        decoration: BoxDecoration(

                          color: Colors.white.withOpacity(0.13),

                          shape: BoxShape.circle,



                        ),

                        child: ClipRRect(borderRadius: BorderRadius.circular(180,),

                          child: Image.asset("assets/image/cost.jfif",width: 100,height: 100,),),

                      ),





                    ],



                  ),

                   Column(mainAxisAlignment: MainAxisAlignment.spaceAround,

                      children:[

                        Row(mainAxisAlignment: MainAxisAlignment.center,
                            children:[Text("cost: "),Text(this.c.toString()+"\$",style: TextStyle(color: kPrimaryColor),),]),
                        Text("Thanks for using our app"),



                      ],



                    ),

                  ]

              )

          )

      ),

    ],
  ),
),
      );
  }

}
