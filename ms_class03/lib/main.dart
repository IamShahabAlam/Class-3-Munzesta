
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    void signin(){
      final String email = emailController.text;
      final String password = passwordController.text;
      
      print("*");

      print("The User Email is " + email);
      print("The User Password is " + password);
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      // backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Stack(
          children: [ Column(
              children: [

                Center(child: Padding(
                  padding: const EdgeInsets.only(top:50.0),
                  child: Image.asset("assets/B.png", fit: BoxFit.fill, height:200 , width: 200,),
                )),
                
                
                Text("SIGN IN", style: TextStyle(color: Colors.red[600] ,fontSize: 20,fontWeight: FontWeight.bold, fontFamily: "DancingScript" ),),
                SizedBox(height: 30,),
                Container(height: 430, width: 700, decoration: BoxDecoration(gradient: LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter,
                colors: [Colors.red[500],Colors.red[900]]),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(250) , topRight: Radius.circular(250) )
                ),),
                
                
              

              ],
            ),

            Stack(children: [
                  
                    Padding(
                      padding: const EdgeInsets.only(top:400),
                      child: Center(child: Container( height: 100, width: 300,
                child: TextField(controller: emailController, 
                 decoration: InputDecoration(
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.red[200], width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white38, width: 2.0),
                  
                ),
                   hintText: "abc@email.com" ,
                   hintStyle: TextStyle(
                      color: Colors.red[200], 
                      fontSize: null,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      ),
                   labelText: "Email" , contentPadding: EdgeInsets.only(left:25),

                   labelStyle: TextStyle(
                      color: Colors.white, 
                      fontSize: null,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      ),

                 ) ,),
                            )),
                    ),


                    Padding(
                      padding: const EdgeInsets.only(top:470),
                      child: Center(child: Container( height: 100, width: 300,
                child: TextField(controller: passwordController, 
                 decoration: InputDecoration(
                   focusedBorder: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.red[200], width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(30),
                  borderSide: BorderSide(color: Colors.white38, width: 2.0),
                  
                ),
                   hintText: "Enter Strong Password" ,
                   hintStyle: TextStyle(
                      color: Colors.red[200], 
                      fontSize: null,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                      ),
                   labelText: "Password" , contentPadding: EdgeInsets.only(left:25),

                   labelStyle: TextStyle(
                      color: Colors.white, 
                      fontSize: null,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.normal,
                      ),

                 ) ,),
                            )),
                    ),
                  
                  Padding(
                      padding: const EdgeInsets.only(top:530,left:260),
                      child: Text("Forgot Password ?", style: TextStyle(letterSpacing: 2 ,color: Colors.grey[400], fontWeight: FontWeight.bold), ) 
                    ),

// BUTTON

                    Padding(
                      padding: const EdgeInsets.only(top:600 ,  ),
                      child: Center(
                        child: Container(
                        // margin: EdgeInsets.only(top: 250, ),
                        width: 155, height: 35,
                        decoration: BoxDecoration(
                          boxShadow: [ BoxShadow(color: Colors.red[900], blurRadius: 5, spreadRadius: 1, offset: Offset(1, 3))],
                          borderRadius: BorderRadius.circular(30),
                          gradient: LinearGradient(colors: [Colors.red[900], Colors.red[600],Colors.red[900] ])
                        ),

                        
                        child: ElevatedButton(style: ElevatedButton.styleFrom(
                          shadowColor: Colors.transparent,
                          elevation: 0,
                          onPrimary: Colors.white,
                          primary: Colors.transparent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)
                          )),
                          onPressed: signin, child:   
                                          Text("SIGN IN", style: TextStyle(letterSpacing: 2 , fontWeight: FontWeight.bold),)),
                  ),
                      ),
                    ),
                
              ],),

                
          ],
        ),
      ),

      
    )
       
    );
  }
}


