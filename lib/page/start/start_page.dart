import 'package:flutter/material.dart';

import '../Theme/start_page_color.dart';


class StartPage extends StatelessWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: const Color.fromARGB(255, 49, 40, 36),
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            backgroundColor: StartPageColor.mainLight,
            title: StartPageTitel.text,
          centerTitle: true,
        ),
                body: const CutBody()
    );
  }
}

class CutBody extends StatelessWidget {
  const CutBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              children: const [
                Padding(padding: EdgeInsets.only(left: 20),),
                SizedBox(
                  width: 200,
                  height: 200,
                  child: Text('Я Ваш помощник в поиске знаний о родном крае.\n'
                      'Здесь Вы можете ознакомиться с книгами о Кавказе.',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 231, 215, 201),
                        fontFamily: 'Lobster'
                    ),),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: (){
                      Navigator.pushNamed(context, '/menu');
                    },
                    child: const Text('Перейти далее',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 231, 215, 201),
                          fontFamily: 'Lobster'
                      ),
                    )),
                IconButton(onPressed: (){
                  Navigator.pushNamed(context, '/menu');
                },
                  icon: const Icon(Icons.arrow_forward_ios_outlined, color: Color.fromARGB(255, 23, 14, 20),),)
              ],
            ),
          ],
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/photo/start.jpg'),
          fit: BoxFit.cover),
        ),
        // width: double.infinity
    );
  }
}
