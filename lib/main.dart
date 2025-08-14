import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

double number=40;
Color? container=Colors.red[200];
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return MaterialApp(

     home: Scaffold(
    drawer: Drawer(
      child:
      Column(

        children: [

              Container(
                padding: EdgeInsets.only(top: 20),
            height: 150,
            width: 1000,
            color:Colors.blue[300] ,
          child:
          Text("Menu",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25),),
          ),

          Padding(
            padding: const EdgeInsets.only(right: 200,top: 20),
            child: Text("Option 1",style: TextStyle(fontSize: 20),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20,right: 200),
            child: Text("Option 2",style: TextStyle(fontSize: 20),),
          )
        ],
      ),



    ),
       appBar: AppBar(
         title: Text("TAsk" ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),

       ),
       body:
      Column(
        children: [
          Center(
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
              color: container,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              )

            ),
          ),
          Slider(
          min: 0,
          max: 100,
          value: number,
          onChanged: (value){
            setState(() {
              number=value;
            });
          }),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: MaterialButton(onPressed: (){
                  setState(() {
                    container=Colors.red[200];
                  });

                },
                  color: Colors.grey[200],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child:
                  Text("Red",style: TextStyle(fontSize: 20,color: Colors.red[200]),),

                ),
              ),
              MaterialButton(onPressed: (){
                setState(() {
                  container=Colors.green[200];
                });
              },
                color: Colors.grey[200],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child:
                Text("Green",style: TextStyle(fontSize: 20,color: Colors.green[200]),),

              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 30,right: 300),


              child:
          Column(
            children: [
              Text("Safaa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text("Laila",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text("Ghaith",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Text("Omar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              ),
            ],
          )
          ),

          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red[200],
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.green[200],
                ),
              ],
            ),
          )
        ],
      ),

     )
    );
  }
}

