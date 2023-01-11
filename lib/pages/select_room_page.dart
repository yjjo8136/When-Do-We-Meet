import 'package:flutter/material.dart';
import 'package:when_do_we_meet/pages/time_select_page.dart';

class SelectRoomPage extends StatelessWidget {
  const SelectRoomPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.schedule),
            title: Text('코딩 스터디'),
            trailing: Icon(Icons.more_vert),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TimeSelectPage()),
              );
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.schedule),
            title: Text('영화 보기'),
            trailing: Icon(Icons.more_vert),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TimeSelectPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
