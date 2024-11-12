import 'package:flutter/material.dart' ;

void main() => runApp(MyApp());


class MyApp extends StatefulWidget {

    const MyApp({super.key}) ;

    @override
    State<MyApp> creatState() => _MyAppState() ;
    
      @override
      State<StatefulWidget> createState() {
    // TODO: implement createState
      }
}

class _MyAppState extends State<MyApp> {
  @override
    
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: fales ,
        home : HomePage(),
      );
    }
}

class HomePage extends StatefulWidget {
  const HomePage ({super.key});
  
  @override
    State<HomePage> createstate() => _HomePageState();
  }

class _HomePageState extends State<HomePage>{
  
   List<String> images = [
      'https://images.pexels.com/photos/6735396/pexels-photo-6735396.jpeg'
      'https://images.pexels.com/photos/9638682/pexels-photo-9638682.jpeg'
      'https://images.pexels.com/photos/2899726/pexels-photo-2899726.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
      'https://images.pexels.com/photos/3172571/pexels-photo-3172571.jpeg?auto=compress&cs=tinysrgb&w=600'

   ];
   @pverride
   Widget bulid(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black
        actions: [
          Icon(Icon.notifications,color: Colors.white,)
        ],
        title: Text('Location',style:TextStyle(color: Colors.white),),
      )
      body: Container(
        margin: EdgeInsets.all(10),
        child:ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Text('spacealForYou',style:TextStyle(color:Colors.black, fontSize:20.0),),
                Text('See all' style: TextStyle(color : Colors.green),)
                ]
                )
    Container(
      hight:200,
      child: ListView(scrollDirection:Axis.horizontal,
      children:[
        for (int i = 0 ; i < images.length; i++)
        Container(
          margin: EdgeInsets.all(10),
          width:250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:DecorationImage(
              image:NetworkImage(images[i]),
              fit:BoxFit.fill
             )
          ),
        )
      ]))
              ]
              )
          ]
          ,))
    )
   }
}
