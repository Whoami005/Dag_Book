import 'package:flutter/material.dart';

class MyBook extends StatelessWidget {
  const MyBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 217, 208, 205),
      body: SafeArea(
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Мои книги',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold
                 ),),
                    ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Icon(Icons.favorite_border, size: 80,),
                      const Text('Здесь будут книги, которые вы начнете\n читать или слушать',
                        textAlign: TextAlign.center,),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: FloatingActionButton.extended(onPressed: (){},
                            icon: Icon(Icons.add) ,
                            label: Text('Добавить книги')
                        ),
                      ),
                    ]
                  ),
                ),
                // Text('Здесь будут книги, которые вы начнете\n читать или слушать',
                //   textAlign: TextAlign.center,),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: ElevatedButton(onPressed: (){}, child: Text('Добавить книги')),
                // ),
              ],
            ),


          ],
        ),
      ),
    );
  }
}
