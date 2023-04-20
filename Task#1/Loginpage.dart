//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _loginState createState() => _loginState();
}
class _loginState extends State<LoginPage>{
 bool? ischecked=false;
 bool passwordVisible=false;

 @override
 void initState(){
   super.initState();
   passwordVisible=true;
 }

 @override
  Widget build(BuildContext context) {

   return Scaffold(
     backgroundColor: Colors.grey[300],
      body: Container(
        margin: const EdgeInsets.fromLTRB(20,45,20,20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),

        child: Container(
          margin: const EdgeInsets.only(left: 20),
          child: SafeArea(
          child: Column(

            children: [
              SizedBox(height: 20,),
              Row(
                children: [
                  Icon(
                    Icons.supervised_user_circle_sharp,
                  size: 40,
                  color: Colors.orange,),
                  SizedBox(width: 10,),
                  Text('Login',style: TextStyle(fontWeight:FontWeight.bold)),
                ],
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.centerLeft,
                child: Text("Login to your account - enjoy exclusive \nfeatures and many more.",
                    style: TextStyle(fontWeight:FontWeight.w300) ),
              ), //text container
              SizedBox(height: 10,),
              //------------------------------------data entry--------------------------
            Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Email',style: TextStyle(fontWeight:FontWeight.bold)),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(18),
                          )
                        ),

                      ),
                      SizedBox(height: 20,),
                      Text("Password",style: TextStyle(fontWeight:FontWeight.bold)),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(18),
                            )
                        ),
                          obscureText: true,
                      ),
                      Row(
                        children: [
                          Checkbox(
                              value: ischecked,
                              onChanged: (bool? value){
                                setState((){
                                ischecked = value;
                              });
                              } ),
                          Text("Remember me",style: TextStyle(fontWeight:FontWeight.bold)),
                          SizedBox(width: 100,),
                          Text("forgot password?", style: TextStyle(fontWeight:FontWeight.w300),),
                        ],
                      ),
                      //------------------------------------buttons--------------------------
                        Container(
                          alignment: Alignment.centerLeft,
                          margin: const EdgeInsets.only(left: 20),
                          child: Column(

                            children: [
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shadowColor: Colors.greenAccent,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  minimumSize: Size(310, 40), //////// HERE
                                ),
                                child: Text('Login'),
                                onPressed: () {
                                },
                              ),//login
                              SizedBox(height: 10,),
                              Text("Or"),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[100],
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  maximumSize: Size(310, 40), //////// HERE
                                ),
                                child: Row(
                                  mainAxisAlignment :MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                      'http://pngimg.com/uploads/google/google_PNG19635.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    Text('Google',style: TextStyle(color: Colors.black)),
                                  ],
                                ),
                                onPressed: () {
                                },
                              ),//google
                              SizedBox(height: 10,),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.grey[100],
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(5)),
                                  maximumSize: Size(310, 40), //////// HERE
                                ),
                                child: Row(
                                  mainAxisAlignment :MainAxisAlignment.center,
                                  children: [
                                    Image.network(
                                        'https://pngimg.com/uploads/twitter/twitter_PNG3.png',
                                      width: 20,
                                      height: 20,
                                    ),
                                    Text('Twitter',style: TextStyle(color: Colors.black),),
                                  ],
                                ),
                                onPressed: () {
                                },
                              ),//twitter
                            ],
                          ),
                        ),
                    ],
                )//data entry
            ),
            ],
          ),
          ),
        ),
      ),
   );
  }

}