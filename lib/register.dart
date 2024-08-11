import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:BoxDecoration(
            image:DecorationImage(
                image: AssetImage('assets/register.png'),fit: BoxFit.cover
            )
        ) ,
        child:Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
            backgroundColor: Colors.transparent,
            body:Stack(
              children: [
                Container(
                    padding: EdgeInsets.only(top:100,left:80),
                    child:Text('Create\nAccount',style: TextStyle(
                        color:Colors.white,fontSize: 33,

                    ),)
                ),
                SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.only(top:300,right:35,left:35),
                    child:Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                              fillColor:Colors.grey.shade100,
                              filled: true,
                              hintText:'Name',
                              border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),
                        ),
                        SizedBox(
                          height:30,
                        ),
                        TextField(

                          decoration: InputDecoration(
                              fillColor:Colors.grey.shade100,
                              filled: true,
                              hintText:'E-mail',
                              border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),),
                        SizedBox(
                          height:30,
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor:Colors.grey.shade100,
                              filled: true,
                              hintText:'Password',
                              border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)
                              )
                          ),),
                        SizedBox(
                          height:40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Sign In',style: TextStyle(
                                color:Colors.blueAccent,
                                fontSize: 25,fontWeight: FontWeight.bold
                            ),),
                            CircleAvatar(
                                radius:30,
                                backgroundColor:Colors.blueAccent,
                                child:IconButton(
                                  color: Colors.white,
                                  onPressed: (){},
                                  icon:Icon(Icons.arrow_forward),
                                )
                            )
                          ],
                        ),
                        SizedBox(
                          height:40,
                        ),
                        Row(
                          mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children: [
                            TextButton(onPressed: (){
                              Navigator.pushNamed(context, 'register');
                            }, child:Text('Sign Up',
                                style:TextStyle(fontSize:20,
                                    decoration: TextDecoration.underline)
                            )),

                          ],
                        )
                      ],
                    ),
                  ),
                )

              ],
            )
        )
    );
  }
}
