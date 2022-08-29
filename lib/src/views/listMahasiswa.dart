import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/src/utility/theme_color.dart';
import 'package:flutter_project/src/utility/theme_text.dart';
import 'package:flutter_project/src/views/detailMahasiswa.dart';

class ListMahasiswa extends StatefulWidget {
  const ListMahasiswa({Key? key}) : super(key: key);

  static TextEditingController searchBar = TextEditingController();

  @override
  State<ListMahasiswa> createState() => _ListMahasiswaState();
}

class _ListMahasiswaState extends State<ListMahasiswa> {
  List _mahasiswa = [];
  List _mahasiswaList = [];

  Future<void> readJson() async {
    final String response = await rootBundle.loadString('api/mahasiswa.json');
    final _mahasiswa = await json.decode(response);
    setState(() {
      _mahasiswaList = _mahasiswa;
    });
  }

  @override
  void initState() {
    readJson();
    super.initState();
  }

  void _runFilter(String keyword) {
    List results = [];
    if (keyword.isNotEmpty) {
      String textData = keyword.toLowerCase();
      List filteredData = _mahasiswa.where((user) {
        return user["nama"].toLowerCase().contains(textData);
      }).toList();
      results = filteredData;
    } else {
      results = _mahasiswa;
    }
    setState(() => _mahasiswaList = results);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Mahasiswa',
            style: textTitle,
          ),
          elevation: 0,
          backgroundColor: white,
          foregroundColor: dark,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 12,
              ),
              Container(
                // margin: EdgeInsets.symmetric(horizontal: 16),
                height: 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF000000).withOpacity(0.1),
                      blurRadius: 15,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: TextField(
                  onChanged: (value) => _runFilter(value),
                  controller: ListMahasiswa.searchBar,
                  decoration: InputDecoration(
                    hintText: 'Search mahasiswa',
                    hintStyle: textMuted.copyWith(fontSize: 14),
                    filled: true,
                    fillColor: Colors.white,
                    prefixIconColor: Colors.red,
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Showing',
                      style: textMuted,
                    ),
                    Text('${_mahasiswaList.length} item', style: textMuted),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: _mahasiswaList.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailMahasiswa(data: _mahasiswaList[index]),
                            ),
                          );
                        },
                        title: Text(
                          _mahasiswaList[index]["nama"],
                          style: textHeading.copyWith(fontSize: 18),
                        ),
                        subtitle: Text(
                          _mahasiswaList[index]["npm"].toString(),
                          style: textMuted,
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
