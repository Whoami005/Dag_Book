import 'package:flutter/material.dart';

class PageSearch extends StatelessWidget {
  const PageSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Поиск'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Container(
                  // width: double.infinity,
                  // height: double.infinity,
                  color: Colors.white,
                ),
                  ),
                 const Padding(
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                  child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                labelText: 'Книга, автор или жанр',
                hintText: 'Расул Гамзатов',
                fillColor: Colors.white,
                filled: true,
                // helperText: 'Художественная литература'
                  ),

                ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 0, 10, 0),
                    color: Colors.white,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            TextButton(onPressed: (){}, child: Text('Мухаммадтахир аль-Карахи')),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(onPressed: (){}, child: Text('Мухаммадтахир аль-Карахи')),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(onPressed: (){}, child: Text('Мухаммадтахир аль-Карахи')),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(onPressed: (){}, child: Text('Мухаммадтахир аль-Карахи')),
                          ],
                        ),
                        Row(
                          children: [
                            TextButton(onPressed: (){}, child: Text('Мухаммадтахир аль-Карахи')),
                          ],
                        ),
                      ],),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),);
  }
}
