
import 'package:flutter/material.dart';
import 'package:flutter_app_final_project/total.dart';
import 'colors.dart';
class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    List<double> s=[35,50,40,30,10,5];
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          drawer: Drawer(
            child :
            Card(color: Colors.cyan,
              child: ListView(children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Ali"),
                  accountEmail: Text("ali@gamil.com"),
                  currentAccountPicture: Image(
                    image: AssetImage("assets/image/p1.png"),
                  ),),
                Card(child:
                ListTile(
                  title:Text("Username"),
                  trailing: Icon(Icons.supervised_user_circle_rounded),
                )
                ),
                Card(child:
                ListTile(
                  title:Text("Password"),
                  trailing: Icon(Icons.lock),
                )
                ),

]
          ),
        ),
    ),
          appBar: AppBar(backgroundColor: Colors.white70,

             title:
             RichText(
               text: TextSpan(style:Theme.of(context).
               textTheme.
               titleMedium.
               copyWith(fontWeight:FontWeight.bold ),
             children: [


                TextSpan(text: " Ristorante",
                  style: TextStyle(color: ksecondaryColor)

                   ),
               TextSpan(text: " amici",
                   style: TextStyle(color: kPrimaryColor)

               ),
    ]
             ),
             ),
              actions:[
                IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: (){},
                )
              ],
              bottom: TabBar(
                tabs:[Tab(icon:Icon(Icons.food_bank )
                    ,text:"Food"),
                  Tab(icon:Icon(Icons.fastfood )
                      ,text:"Drink"),

                ],)

          ),
body:TabBarView(
  children:[
Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [



         Container(
           width: size.width*.45,
          height:size.height*.35 ,

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

                children:[InkWell(
                  onTap: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (v)
                        {return Cost(c: s[0]);


                        })
                    );
                  },


                child:  Container(width: size.width*0.35,

            padding: EdgeInsets.all(25),

                margin: EdgeInsets.only(bottom: 15),

                decoration: BoxDecoration(

                  color: Colors.white.withOpacity(0.13),

                 shape: BoxShape.circle,



                ),

                child: ClipRRect(borderRadius: BorderRadius.circular(180),

                  child: Image.asset("assets/image/burger.jpg",width: size.width*0.4,),),

              ),
                )





              ],



            ),

                Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children:[

                    Text("Burger       35\$"),



                  ],



                ),

              ]

          )

          )

        ),
        Container(
            width: size.width*.45,
            height:size.height*.35 ,

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

                      children:[InkWell(
                    onTap: (){
            Navigator.of(context).push(
            MaterialPageRoute(builder: (v)
            {return Cost(c: s[1]);


            })
            );
            },


              child:

                        Container(width: size.width*0.35,

                          padding: EdgeInsets.all(25),

                          margin: EdgeInsets.only(bottom: 15),

                          decoration: BoxDecoration(

                            color: Colors.white.withOpacity(0.13),

                            shape: BoxShape.circle,



                          ),

                          child: ClipRRect(borderRadius: BorderRadius.circular(180),

                            child: Image.asset("assets/image/pizza.png",width: size.width*0.4,),),

                        ),
                      )

                      ],



                    ),

                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children:[

                          Text("Pizza       50\$"),



                        ],



                      ),

                    ]

                )

            )

        ),

      ],

    ),
    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

      children: [



        Container(
            width: size.width*.45,
            height:size.height*.35 ,

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

                    children:[InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (v)
                            {
                              return Cost(c: s[2]);



                            })
                        );
                      },


                      child:

                        Container(width: size.width*0.35,

                          padding: EdgeInsets.all(25),

                          margin: EdgeInsets.only(bottom: 15),

                          decoration: BoxDecoration(

                            color: Colors.white.withOpacity(0.13),

                            shape: BoxShape.circle,



                          ),

                          child: ClipRRect(borderRadius: BorderRadius.circular(180),

                            child: Image.asset("assets/image/hotdog.png",width: size.width*0.4,),),

                        ),
                    )

                      ],



                    ),

                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children:[

                          Text("HotDog       40\$"),



                        ],



                      ),

                    ]

                )

            )

        ),
        Container(
            width: size.width*.45,
            height:size.height*.35 ,

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

                    children:[InkWell(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (v)
                            {return Cost(c: s[3]);


                            })
                        );
                      },


                      child:

                        Container(width: size.width*0.35,

                          padding: EdgeInsets.all(25),

                          margin: EdgeInsets.only(bottom: 15),

                          decoration: BoxDecoration(

                            color: Colors.white.withOpacity(0.13),

                            shape: BoxShape.circle,



                          ),

                          child: ClipRRect(borderRadius: BorderRadius.circular(180),

                            child: Image.asset("assets/image/chicken.jpg",width: size.width*0.4,),),

                        ),
                    )


                      ],



                    ),

                      Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

                        children:[

                          Text("Chicken       30\$"),



                        ],



                      ),

                    ]

                )

            )

        ),

      ],

    ),
  ],
),
    Column(mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [



            Container(
                width: size.width*.6,
                height:size.height*.35 ,

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

                        children:[InkWell(
                          onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (v)
                                {return Cost(c: s[4]);


                                })
                            );
                          },


                          child:

                            Container(width: size.width*0.35,

                              padding: EdgeInsets.all(25),

                              margin: EdgeInsets.only(bottom: 15),

                              decoration: BoxDecoration(

                                color: Colors.white.withOpacity(0.13),

                                shape: BoxShape.circle,



                              ),

                              child: ClipRRect(borderRadius: BorderRadius.circular(180),

                                child: Image.asset("assets/image/pepsi.jpg",),),

                            ),
                        )
                          ],



                        ),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children:[

                              Text("pepsi       10\$"),



                            ],



                          ),

                        ]

                    )

                )

            ),


          ],

        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

          children: [



            Container(
                width: size.width*.6,
                height:size.height*.35 ,

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

                        children:[InkWell(
                          onTap: (){
                            Navigator.of(context).push(
                                MaterialPageRoute(builder: (v)
                                {return Cost(c: s[5]);


                                })
                            );
                          },


                          child:

                            Container(width: size.width*0.35,

                              padding: EdgeInsets.all(25),

                              margin: EdgeInsets.only(bottom: 15),

                              decoration: BoxDecoration(

                                color: Colors.white.withOpacity(0.13),

                                shape: BoxShape.circle,



                              ),

                              child: ClipRRect(borderRadius: BorderRadius.circular(180),

                                child: Image.asset("assets/image/water.jfif",),),

                            ),
                        )

                          ],



                        ),

                          Row(mainAxisAlignment: MainAxisAlignment.spaceAround,

                            children:[

                              Text("Water      5\$"),



                            ],



                          ),

                        ]

                    )

                )

            ),


          ],

        ),
      ],
    ),


]
    )
        )
    );
  }
}