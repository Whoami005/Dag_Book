import 'package:flutter/material.dart';

import 'start_page_abstract.dart';


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
                body: const StartBody()
    );
  }
}

class StartBody extends StatelessWidget {
  const StartBody({Key? key}) : super(key: key);

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
                  child: StartPageBody.text,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(context, '/menu', (route) => false);
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const [
                         Text('Перейти далее',
                          style: TextStyle(
                              fontSize: 20,
                              color: Color.fromARGB(255, 231, 215, 201),
                              fontFamily: 'Lobster'
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right,
                        color: Colors.black45,),
                      ],
                    )),
              ],
            ),
          ],
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/photo/start1.jpg'),
          fit: BoxFit.cover),
        ),
        // width: double.infinity
    );
  }
}
