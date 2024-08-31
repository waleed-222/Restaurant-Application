import 'package:flutter/material.dart';
import 'package:flutter_app_final_project/colors.dart';
import 'package:flutter_app_final_project/resturant.dart';

class Details extends StatefulWidget {

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {


  var email=TextEditingController();

  var pass=TextEditingController();
  bool check=true;
  @override
  Widget build(BuildContext context){
    return Scaffold(

      backgroundColor: Colors.cyanAccent,
      appBar: AppBar(backgroundColor: Colors.blue,
        title: Text("Login", style: TextStyle(fontWeight: FontWeight.w200)),
      ),
      body: Card(color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ ClipRRect(borderRadius: BorderRadius.circular(20),
        child:
        Image.asset("assets/image/p2.png",)

      ), SizedBox(height: 20,)
        ,Text("Welcome in Ristorante amici",style:TextStyle(color: ksecondaryColor,fontStyle: FontStyle.italic, fontSize: 20)
                ),SizedBox(height: 10,),
            TextFormField(controller: email,
              decoration: InputDecoration(
                labelText: " Email",
                hintText: "Enter Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email_outlined),

              ),
            ),
            SizedBox(height: 30,),
            TextFormField(
              controller: pass,
              keyboardType: TextInputType.visiblePassword,
              obscureText: check,

              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.password_outlined),
                suffixIcon: IconButton(  onPressed: () {
                  setState(() {
                    check=!check;

                  });
                }, icon:Icon(Icons.remove_red_eye_outlined),
                ),
              ),
            ),
            SizedBox(height:10),
        InkWell(
          onTap: (){
            Navigator.of(context).push(
                MaterialPageRoute(builder: (v)
                {return HomeScreen();

                })
            );
          }, child:MaterialButton( color:Colors.cyanAccent,
                child: Row(
                  mainAxisSize:MainAxisSize.min,

                  children: [Icon(Icons.login_outlined),Text("Enter"),
                  ],
                )

            )
        )
          ],
        ),
      ),
    );

  }
}