import 'package:flutter/material.dart';

void main() {
  runApp(const HudaApp());
}

class HudaApp extends StatelessWidget {
  const HudaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Huda App",
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.amber,
        scaffoldBackgroundColor: Color(0xFF2A2A2A),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Huda"),
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          menuItem("القرآن الكريم"),
          menuItem("التفسير"),
          menuItem("الأحاديث النبوية"),
          menuItem("الفقه"),
          menuItem("السيرة النبوية"),
          menuItem("العقيدة"),
          menuItem("الأحاديث القدسية"),
          menuItem("قصص الصحابة"),
          menuItem("علامات الساعة"),
          menuItem("محاضرات ودروس"),
        ],
      ),
    );
  }

  Widget menuItem(String title) {
    return Card(
      color: Colors.grey[850],
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: ListTile(
        title: Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, color: Colors.amber),
      ),
    );
  }
}
