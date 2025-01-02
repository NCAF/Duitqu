import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // dasboard pengeluaran dan pemasukan
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                Row(
                  children: [
                  Container(
                    child: Icon(Icons.download, color: Colors.blue),
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.circular(8)),
                  ), 
                  SizedBox(
                    width: 15,
                  ),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      Text(
                        "Pemasukan", 
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 12, 
                          fontWeight: FontWeight.bold,)
                        ),
                        SizedBox(
                          height: 10
                        ),
                        Text(
                          "Rp 3.000.000",
                          style: TextStyle(
                          color:Colors.white,
                          fontSize: 14, 
                          fontWeight: FontWeight.bold,)
                        )
                     ],
                  )
                ],
                ),

                Row(
                  children: [
                  Container(
                    child: Icon(Icons.upload, color: Colors.pink),
                    decoration: BoxDecoration(
                      color: Colors.white, 
                      borderRadius: BorderRadius.circular(8)),
                  ), 
                  SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                      Text(
                        "Pengeluaran", 
                        style: TextStyle(
                          color:Colors.white,
                          fontSize: 12, 
                          fontWeight: FontWeight.bold,)
                        ),
                        SizedBox(
                          height: 10
                        ),
                        Text(
                          "Rp 3.000.000",
                          style: TextStyle(
                          color:Colors.white,
                          fontSize: 14, 
                          fontWeight: FontWeight.bold,)
                        )
                     ],
                  )
                ],
                ),
              ],
              ),
      
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.pink[800],
                borderRadius: BorderRadiusDirectional.circular(16)
              ),
            ),
          ),

          // text transactions
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("Transaksi Terakhir", 
            style: TextStyle(
              color: Colors.black, 
              fontSize: 14,
              fontWeight: FontWeight.bold),
              ),
          ),

          //list transactions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
                title: Text("+ Rp 3.000.000",  style: TextStyle(color: const Color.fromARGB(255, 5, 133, 9)),
                ),
                subtitle: Text("Uang Bulanan"),
                leading: Container(
                  child: Icon(Icons.download, color: Colors.blue),
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(8),
                  ),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
                title: Text("- Rp 700.000",
                style: TextStyle(color: const Color.fromARGB(255, 155, 21, 12)),
                ),
                subtitle: Text("Uang Kos Bulan Desember"),
                leading: Container(
                  child: Icon(Icons.upload, color: Colors.pink),
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(8),
                  ),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
                title: Text("- Rp 500.000", 
                style: TextStyle(color: const Color.fromARGB(255, 155, 21, 12)),
                ),
                subtitle: Text("Beli Skincare Bening Clinic"),
                leading: Container(
                  child: Icon(Icons.upload, color: Colors.pink),
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(8),
                  ),
                )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Card(
              elevation: 10,
              child: ListTile(
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.delete),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.edit)
                  ],
                ),
                title: Text("- Rp 20.000",
                style: TextStyle(color: const Color.fromARGB(255, 155, 21, 12)),
                ),
                subtitle: Text("Uang Makan Siang"),
                leading: Container(
                  child: Icon(Icons.upload, color: Colors.pink),
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(8),
                  ),
                )
              ),
            ),
          ),
        ],
      ),
     ), 
    );
    
  }
}