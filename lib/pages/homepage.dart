import 'package:flutter/material.dart';
import 'package:my_profile/pages/projetos_html.dart';

class HomePage extends StatefulWidget {
 HomePage({Key? key}) : super(key: key);

  @override
   HomePageState createState() =>  HomePageState();
}

class  HomePageState extends State <HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[350],
       appBar: AppBar(
         title: Text('Inicio'),
         centerTitle: true,
       )
       ,
      
       body: SingleChildScrollView(
         child: Column(
          //  mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             SizedBox(height: 20),
             Container(
               height: 60,
               width: 255,
               child: Text('Bem vindos ao meu Protifolio',
               style:  TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 25,
                 ),
                 textAlign: TextAlign.center,
                 )   
             ),
           
            Container(
              height: 300,
              width: 250,
              child: Image.asset('image/eu.png'),
            ),
             SizedBox(height: 20),
             Container(
               margin: EdgeInsets.all(10),
               height: 60,
               width: 255,
               child: Text('Meu nome é Felipe e Aqui vamos ver alguns dos meus projetos...',
               style:  TextStyle(
                 fontWeight: FontWeight.bold,
                 fontSize: 20,
                 ),
                 textAlign: TextAlign.center,
                 )   
             ),
            SizedBox(height:30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                MaterialPageRoute(
                  builder: (context) => Projetos() 
                  ));
              },
               child: Text('Meus projetos')),
            
           ],
         ),
       ),
    );
  }
}