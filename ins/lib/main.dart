import 'package:flutter/material.dart';
import 'package:ins/Malumot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
     home: Scaffold(
      appBar: AppBar(title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
          Text("Instagram"),
          Row(
            children: [
              Icon(Icons.favorite_border),
              Icon(Icons.message_outlined),
              
            ],
          ),
        ],),
      ),),
      body: Column(children: [
        SizedBox(
          height: 500,
          width: 600,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: Userga.length,
            
            itemBuilder: (context, index) {
            return Row(children: [
            Column(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.pink),
                    borderRadius: BorderRadius.all(Radius.circular(60)),image: DecorationImage(image: AssetImage(Userga[index].rasm),fit: BoxFit.cover),),
                ),
                Text(Userga[index].matn)
              ],
            )
                    ]);
            
          }),
        ),
      /* SizedBox(
        width: 600,
        height: 600,
         child: ListView.builder(
          itemCount: Userga2.length,
          itemBuilder: (
          
          context, index) {
           return Column(children: [
            
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Userga[index].rasm2))),
                  child: Column(children: [
                    Text(Userga2[index].matn2)
                  ],),
                ),
                
           ],);
         },),
       )*/
      ],),
     ),
    );
  }
}
