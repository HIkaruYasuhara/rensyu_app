import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(10000, (i) => "Item $i");
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
          appBar: AppBar(
            leading: Icon(
              Icons.videocam,
            ),
            title: const Text('Youtube'),
            actions: <Widget>[
              SizedBox(
                width: 50,
                child: FlatButton(
                  child: Icon(Icons.search),
                  onPressed: (){
                    //todo
                  },
                ),
              ),
              SizedBox(
                width: 50,
                child: FlatButton(
                  child: Icon(Icons.more_vert),
                  onPressed: (){
                    //todo
                  },
                ),
              ),
            ],
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        height: 80,
                        width: 80,
                        child: Image.network('https://lh3.googleusercontent.com/a-/AOh14Gg3xUawtWGJxvm3MRZ4Uce5y2S73czTlx_Rh3fi=s360-c',
                        ),
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Column(
                        children: <Widget>[
                          const Text('MY-Youtube'
                          ),
                          FlatButton(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.video_call,
                                  color: Colors.red,
                                ),
                                Text('登録する'),
                              ],
                            ),
                            onPressed: () {
                              //todo
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () async{
                          //todo 画面遷移
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => VideoDetailPage()),
                          );
                        },
                        contentPadding: EdgeInsets.all(8),
                        leading: Image.network('https://lh3.googleusercontent.com/vA4tG0v4aasE7oIvRIvTkOYTwom07DfqHdUPr6k7jmrDwy_qA_SonqZkw6KX0OXKAdk',
                        ),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('【必見】youtubeの記録 ${index}',
                              style: TextStyle(
                                fontWeight: FontWeight.w500
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Text('  1000回再生',
                                  style: TextStyle(fontSize: 13),
                                ),
                                Text(' 5日前',
                                  style: TextStyle(fontSize: 13),
                                ),
                              ],
                            ),
                          ],
                        ),
                        trailing: Icon(Icons.more_vert),
                      );
                    },
                  ),
                ),
               ],
            ),
          ),
      ),
    );
  }
}


