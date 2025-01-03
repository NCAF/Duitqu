import 'package:calendar_appbar/calendar_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_duitqu/pages/category_page.dart';
import 'package:flutter_application_duitqu/pages/home_page.dart';
import 'package:flutter_application_duitqu/pages/transaction_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final List<Widget> _children = [HomePage(),CategoryPage()];
  int currentIndex = 0;

  void onTapTapped(int index){
    setState((){
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (currentIndex == 0) ? CalendarAppBar(
        accent: const Color.fromRGBO(235, 52, 113, 1),
        backButton: false,
        locale: 'id',
        onDateChanged: (value) => print(value),
        firstDate: DateTime.now().subtract(Duration(days: 140)),
        lastDate: DateTime.now(),
      ): PreferredSize(
           preferredSize: Size.fromHeight(100), 
           child: Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 55, horizontal: 18),
              child: Text("Categories", 
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
                color: const Color.fromARGB(255, 63, 60, 61)),
                ),
            ),)
         ),
      floatingActionButton: Visibility(
        visible: (currentIndex == 0) ? true : false,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(
                 MaterialPageRoute(
                builder: (context)
                 => TransactionPage(),
                 )
                )
                 .then((value){
                    setState(() {
                      
                    });
                 }
                 );
          }, 
          backgroundColor: const Color.fromRGBO(235, 52, 113, 1),
          child: Icon(Icons.add, 
          color: Colors.white),
        ),
      ),
      
      body: _children[currentIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
          children: [
          
          IconButton(onPressed: () {
            onTapTapped(0);
          },icon: Icon(Icons.home)),

          SizedBox(
          width:20,
          ),
          IconButton(onPressed: () {
            onTapTapped(1);
          },icon: Icon(Icons.list)),
      ]),)
    );
  }
}