import 'package:flutter/material.dart';

class PaquetesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Imagenes'),
        centerTitle: true,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.fsyq3-1.fna.fbcdn.net/v/t1.0-9/104640608_148998266704751_728538262036215961_o.png?_nc_cat=107&ccb=2&_nc_sid=730e14&_nc_ohc=_hf0v-yr9uEAX8JGUSU&_nc_ht=scontent.fsyq3-1.fna&oh=9002d5d0d1910977c7164cabf85924b7&oe=5FB8F819'),
              radius: 25.0,
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('Kinto'),
            ),
          ),
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://scontent.fsyq3-1.fna.fbcdn.net/v/t1.0-9/104083694_146410733630171_6877191130096230218_o.png?_nc_cat=108&ccb=2&_nc_sid=730e14&_nc_ohc=ylF8V31fAdsAX_TTr4A&_nc_ht=scontent.fsyq3-1.fna&oh=f9546811676d2cc00b269e4fa85cb328&oe=5FB8E33A'),
          placeholder: AssetImage('assets/jar-loading.gif'),
          fadeInDuration: Duration(milliseconds: 200),
        ),
      ),
    );
  }
}
