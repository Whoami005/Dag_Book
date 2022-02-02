import 'package:flutter/material.dart';


class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodySliverAppBarTabBarMenu() ,
    );
  }
}




class BodySliverAppBarTabBarMenu extends StatefulWidget {
  const BodySliverAppBarTabBarMenu({Key? key}) : super(key: key);

  @override
  _BodySliverAppBarTabBarMenuState createState() => _BodySliverAppBarTabBarMenuState();
}

class _BodySliverAppBarTabBarMenuState extends State<BodySliverAppBarTabBarMenu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 2,
      length: 3,
      child: NestedScrollView(
        headerSliverBuilder: (context, value){
          return[
            SliverAppBar(
              title: Row(
                children: [
                  const Expanded(
                    child: Text('Библиотека',
                      style: TextStyle(
                        color: Color.fromARGB(255, 223, 211, 200),
                        fontSize: 20,
                        // fontFamily: 'MochiyPopPOne',
                      ),),
                  ),
                  IconButton( onPressed: (){
                    Navigator.pushNamed(context, '/pagesearch');
                  },
                    icon: const Icon(Icons.search),),
                ],
              ),
              bottom:const TabBar(
                // isScrollable: true,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.face_retouching_natural),
                    text: 'Авторы',
                  ),
                  Tab(
                    icon: Icon(Icons.all_inclusive),
                    text: 'Жанры',
                  ),
                  Tab(
                    icon: Icon(Icons.book),
                    text: '''Книги''',
                  ),
                ],
              ) ,
            ),
          ];
        },
        body: TabBarView(
          children:<Widget>[
            ListView(
              physics: BouncingScrollPhysics(),
              children:const [
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
                Text('Авторы'),
              ],
            ),
            ListView(
                children: [Container(
                  child: const Text('Жанры'),
                ),
                ]),
            ListView(
              children: [Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        child: const Placeholder(),
                      ),
                      const Text('Автор:Магомедов М.М.'),
                      const Text('История Дагестана',style: TextStyle(
                          fontSize: 15,
                          color: Colors.blueAccent,
                          fontFamily: 'RubikBeastly'
                      ),),
                    ],
                  ),
                ],
              ),
              ], ),
          ],
        ),
      ),
    );
  }
}



    
// Column(
//   children: [
//     Text('Библиотека', style: TextStyle(
//      color: Colors.amber,
//      fontSize: 20,
//      fontFamily: 'MochiyPopPOne',
//     ),),
//     OutlinedButton(onPressed: (){
//
//     },
//       child: const Text('Книги', style: TextStyle(
//         color: Colors.amber,
//         fontSize: 20,
//         fontFamily: 'MochiyPopPOne',
//       ),),
//     )
//   ],
// ),
// OutlinedButton(onPressed: (){
//
// },
//   child: const Text('Книги', style: TextStyle(
//     color: Colors.amber,
//     fontSize: 20,
//     fontFamily: 'MochiyPopPOne',
// ),),
// )
// ],