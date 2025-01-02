import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  bool isExpense = true;
  void openDialog(){
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        content: SingleChildScrollView(
          child: Center(
            child: Column(
            children: [
            Text(
              (isExpense) ? "Add Pengeluaran" : "Add Pemasukan",
              style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: (isExpense) ? Colors.pink : Colors.blue), 
              ),
              SizedBox(
                height: 10,
              ),
            TextFormField(
              decoration: InputDecoration(
                border:OutlineInputBorder(),
                hintText:"Name"
                ),
            ),
            SizedBox(
                height: 10,
              ),
            ElevatedButton(
              onPressed: (){}, 
              child: Text("Save"))
          ],),),
        ),
      );
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Switch(
              value: isExpense, 
              onChanged: (bool value) {
                setState((){
                  isExpense = value;

                });
              }, 
              inactiveThumbColor: Colors.blue[200], 
              inactiveTrackColor: Colors.blue,
              activeColor: Colors.pink[400],
              ),
              IconButton(onPressed: (){
                openDialog();
              }, icon: Icon(Icons.add))
              ],
            ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 10,
            child: ListTile(
              leading: (isExpense) ? Icon(
                Icons.upload,color:Colors.pink) : Icon(Icons.download,color:Colors.blue), 
              title: Text(
                'Uang Bulanan', 
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.delete),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.edit)
                    ),
                  ],
                )
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Card(
            elevation: 10,
            child: ListTile(
              leading: (isExpense) ? Icon(
                Icons.upload,color:Colors.pink)
                 : Icon(Icons.download,
                color:Colors.blue), 
              title: Text(
                'Uang Kos', 
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.delete),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      onPressed: (){}, 
                      icon: Icon(Icons.edit)
                    ),
                  ],
                )
            ),
          ),
        ),
      ],
    ));
  }
}