import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/product.dart';

class ChilangarScreen extends StatefulWidget {
  const ChilangarScreen({
    super.key,
  });
  static const id = "Chilangar-screen";

  @override
  State<ChilangarScreen> createState() => _ChilangarScreenState();
}

class _ChilangarScreenState extends State<ChilangarScreen> {
  String? _selectedItemId; // Переместил объявление сюда
  @override
  void initState() {
    super.initState();
    _selectedItemId = null;
  }

  DateTime _dateTime = DateTime.now();

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2024),
      lastDate: DateTime(2099),
    ).then((value) {
      setState(() {
        _dateTime = value!;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final sehs = Provider.of<Sehs>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text("Chilangarlar"),
      ),
      body: Column(
        children: [
          Card(
            color: Colors.teal.shade400,
            child: ListTile(
              onTap: () {
                showModalBottomSheet(
                  
                  isDismissible: false,
                  context: context,
                  builder: (context) {
                    return SingleChildScrollView(
                      child: Container(
                        height: 400,
                        child: Column(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text("Darajani oshirish uchun ariza yuborish"),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10, left: 10),
                              child: Container(
                                height: 40,
                                child: const TextField(
                                  decoration: InputDecoration(
                                    hintText: "Familiya va Ismni kiriting",
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                                "Nechanchi daraja uchun test topshirmoqchisiz ?"),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  height: 40,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, left: 10),
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Nechchidan"),
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 40,
                                  width: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10, left: 10),
                                    child: TextField(
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText: "Nechchiga"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            const Text("Ish joyingizni tanlang"),
                            DropdownButton<String>(
                              isExpanded: true,
                              value: _selectedItemId,
                              items: sehs.list.map((Seh seh) {
                                return DropdownMenuItem(
                                  value: seh.id,
                                  child: Text(
                                    seh.title,
                                    style: const TextStyle(
                                        color: Colors.black, fontSize: 16),
                                  ),
                                );
                              }).toList(),
                              onChanged: (String? selectedId) {
                                setState(() {
                                  _selectedItemId =
                                      selectedId; // Обновление выбранного элемента
                                });
                              },
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: _showDatePicker,
                                  child: Text(
                                    "Sanani tanlang",
                                    style: TextStyle(color: Colors.teal),
                                  ),
                                ),
                                Text(
                                  '${_dateTime.day}/${_dateTime.month}/${_dateTime.year}',
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            SizedBox(height: 15,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text(
                                    "Bekor Qilish",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Tasdiqlash",
                                    style: TextStyle(
                                      color: Colors.teal,
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
              leading: const Icon(
                Icons.quiz_sharp,
                color: Colors.yellow,
                size: 25,
              ),
              textColor: Colors.white,
              title: const Text(
                "TEST TOPSHIRISH",
              ),
            ),
          ),
          Card(
            color: Colors.teal.shade400,
            child: ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.book_rounded,
                color: Colors.yellow,
                size: 25,
              ),
              textColor: Colors.white,
              title: const Text(
                "YO'RIQNOMALAR",
              ),
            ),
          ),
          Card(
            color: Colors.teal.shade400,
            child: ListTile(
              onTap: () {},
              leading: const Icon(
                Icons.newspaper,
                color: Colors.yellow,
                size: 25,
              ),
              textColor: Colors.white,
              title: const Text(
                "UMUMIY MA'LUMOTLAR",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
