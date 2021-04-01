import 'package:flutter/material.dart';
import '../model/post.dart';

class HomepageDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        // shrinkWrap: true,
        children: [
          //自定义头部
          // DrawerHeader(
          //   child: Text('Header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100],
          //   ),
          // ),

          UserAccountsDrawerHeader(
            accountName:
                Text('vix, hi', style: TextStyle(fontWeight: FontWeight.bold)),
            accountEmail: Text('hi_vix@163.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/59596574?v=4'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[500],
              image: DecorationImage(
                image: NetworkImage(
                    'https://gimg2.baidu.com/image_search/src=http%3A%2F%2F2c.zol-img.com.cn%2Fproduct%2F124_500x2000%2F984%2FceU7xYD3umwA.jpg&refer=http%3A%2F%2F2c.zol-img.com.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1619704527&t=8fb92ccdcf7e483aa32a5d3d60ce4797'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.yellow[500].withOpacity(0.6), BlendMode.hardLight),
              ),
            ),
          ),

          ListTile(
            title: Text('phone', textAlign: TextAlign.right),
            subtitle: Text(
              'vix',
              textAlign: TextAlign.right,
            ),
            trailing:
                Icon(Icons.local_phone, color: Colors.black12, size: 20.0),
            onTap: () => Navigator.pop(context),
            isThreeLine: true,
          ),
          ListTile(
            title: Text('phone', textAlign: TextAlign.right),
            trailing:
                Icon(Icons.local_phone, color: Colors.black12, size: 20.0),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }
}
