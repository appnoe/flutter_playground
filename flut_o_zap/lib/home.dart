import 'package:flutter/material.dart';
import 'themedata.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
        child: Center(
            child: Column(
              children: [
                Text('Überschrift',
                      style: Theme.of(context).textTheme.headline1
                    ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Padding(
                              child: Image.network('https://via.placeholder.com/150/0000FF/808080?text=Foo'),
                              padding: EdgeInsets.all(10),
                            ),
                            Padding(
                              child: Text(
                                  'Foobar',
                                  style: Theme.of(context).textTheme.subtitle2,
                                  overflow: TextOverflow.ellipsis,
                              ),
                              padding: EdgeInsets.all(10),
                            )
                          ],
                        ),

                      ],
                    ),
                    Column(
                      children: [
                        Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Padding(
                              child: Image.network('https://via.placeholder.com/150/FFFF00/000000?text=Bar'),
                              padding: EdgeInsets.all(10),
                            ),
                            Padding(
                              child: Text(
                                  'Boofar',
                                  style: Theme.of(context).textTheme.subtitle1,
                                  overflow: TextOverflow.ellipsis
                              ),
                              padding: EdgeInsets.all(10),
                            )
                          ],
                        )

                      ],
                    )
                  ],
                ),
              ],
            )
        ),
    );
  }
}
