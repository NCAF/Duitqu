import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TransactionPage extends StatefulWidget {
  const TransactionPage({super.key});

  @override
  State<TransactionPage> createState() => _TransactionPageState();
}

class _TransactionPageState extends State<TransactionPage> {
  bool isExpense = true;
  List<String> list = [
    'Makan dan Jajan',
    'Skincare',
    'Uang Kos',
    'Transportasi',
    'Belanja Bulanan'
  ];
  late String dropDownValue = list.first;
  TextEditingController dateControler = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Transaction", 
          style: TextStyle(color: Colors. white,
          ),
        ),
        backgroundColor:const Color.fromRGBO(235, 52, 113, 1),
        iconTheme: IconThemeData(
            color: Colors.white, // Mengubah warna ikon menjadi putih
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child:Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Row(
                children: [
                  Switch(value: isExpense, 
                  onChanged: (bool value){
                    setState(() {
                      isExpense = value;
                    });
                  },
                  inactiveThumbColor: Colors.pink[300],
                  inactiveTrackColor: Colors.pink,
                  activeColor: Colors.blue,
                  ),
                  Text(isExpense ? 'Pemasukkan' : 'Pengeluaran', 
                  style: TextStyle(fontSize: 14,),),
                ],
              ),
              SizedBox(
                height:10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                    decoration: InputDecoration(border: UnderlineInputBorder(), 
                    labelText: "Amount"),
                ),
              ),
              SizedBox(
                height:25,
              ),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 16),
                   child: Text(
                    "Category", 
                     style: TextStyle(fontSize: 16,),
                    ),
                 ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: DropdownButton<String>(
                  value: dropDownValue,
                  isExpanded: true,
                  icon: Icon(Icons.arrow_downward),
                  items: list.map<DropdownMenuItem<String>>((String value){
                  return DropdownMenuItem<String>(
                    value: value, 
                    child:Text(value),
                    );
                }).toList(),
                onChanged: (String? value){
                }),
              ),
              SizedBox(
                height:25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: TextField(
                  readOnly: true,
                  controller: dateControler,
                  decoration: InputDecoration(labelText: "Enter Date"), 
                  onTap: () async{
                    DateTime? pickedDate = await showDatePicker(
                      context: context, 
                      initialDate: DateTime.now() , 
                      firstDate:  DateTime(2020), 
                      lastDate: DateTime(2025));
                    if(pickedDate != null){
                      String formattedDate = 
                      DateFormat('yyyy-MM-dd').format(pickedDate);
                
                      dateControler.text = formattedDate;
                    }
                  },
                ),
              ),
              SizedBox(
                height:25,
              ),
              Center(child: ElevatedButton(
                onPressed: (){}, 
                child: Text(
                  "Save",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),)
                ))
            ],
       ) 
      ),
     ),
    );
  }
}