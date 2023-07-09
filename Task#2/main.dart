
import 'package:flutter/material.dart';

void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: loginpage(),
      debugShowCheckedModeBanner: false,
    );
  }

}
class loginpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        leading: Icon(Icons.account_circle),
        title: Text("Simple app"),
        actions: [
          Icon(Icons.notifications),
          SizedBox(width: 10,),
        ],
      ),
      body:Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Row(
               children: [
                 Text("Welcome! Let's Login",style:TextStyle(
                   fontWeight: FontWeight.bold,
                   fontSize: 23,
                 ),),
               ],
             ),
             SizedBox(height: 20,),
             TextField(
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.email),
                   border: OutlineInputBorder(),
                   hintText: 'Enter your Email',
               ),
             ),
             SizedBox(height: 20,),
             TextField(
               decoration: InputDecoration(
                 prefixIcon: Icon(Icons.lock),
                 border: OutlineInputBorder(),
                 hintText: 'Enter your Password',
                 suffixIcon: Icon(Icons.visibility_off),
               ),
             ),
             SizedBox(height: 40,),

        SizedBox(
          height: 50,
          width: double.infinity,
          child: ElevatedButton(onPressed: () {  },
                 child: Text("Login"),

                 ),
        ) ,

           ],

        ),
      ),

    );
  }

}