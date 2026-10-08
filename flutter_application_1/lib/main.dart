import 'package:flutter/material.dart';

// Import semua widget dari folder widget_basic
import 'widget_basic/avatar1.dart';
import 'widget_basic/button1.dart';
import 'widget_basic/column1.dart';
import 'widget_basic/container1.dart';
import 'widget_basic/expanded_widget.dart';
import 'widget_basic/gridview_widget.dart';
import 'widget_basic/icon1.dart';
import 'widget_basic/image1.dart';
import 'widget_basic/list_view_widget.dart';
import 'widget_basic/padding_widget.dart';
import 'widget_basic/row1.dart';
import 'widget_basic/sizedbox_widget.dart';
import 'widget_basic/stack_widget.dart';
import 'widget_basic/text1.dart';
import 'widget_basic/wrap_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PAM Minggu 4',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> menuList = [
      {'title': '1. Container', 'page': const Container1()},
      {'title': '2. Text', 'page': const Text1()},
      {'title': '3. Button', 'page': const Button1()},
      {'title': '4. Icon', 'page': const Icon1()},
      {'title': '5. Image', 'page': const Image1()},
      {'title': '6. CircleAvatar', 'page': const Avatar1()},
      {'title': '7. Column', 'page': const Column1()},
      {'title': '8. Row', 'page': const Row1()},
      {'title': '9. ListView', 'page': ListViewWidget()},
      {'title': '10. GridView', 'page': const GridViewWidget()},
      {'title': '11. Stack', 'page': const StackWidget()},
      {'title': '12. Padding', 'page': const PaddingWidget()},
      {'title': '13. Expanded', 'page': const ExpandedWidget()},
      {'title': '14. SizedBox', 'page': const SizedBoxWidget()},
      {'title': '15. Wrap', 'page': WrapWidget()},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Widget Basic'),
        centerTitle: true,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(12.0),
        itemCount: menuList.length,
        separatorBuilder: (context, index) => const Divider(),
        itemBuilder: (context, index) {
          final item = menuList[index];
          return ListTile(
            title: Text(
              item['title'],
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => item['page']),
              );
            },
          );
        },
      ),
    );
  }
}