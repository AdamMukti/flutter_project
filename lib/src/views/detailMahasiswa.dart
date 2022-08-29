import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:flutter_project/src/utility/theme_color.dart';
import 'package:flutter_project/src/utility/theme_text.dart';

class DetailMahasiswa extends StatelessWidget {
  final LinkedHashMap<String, dynamic> data;
  const DetailMahasiswa({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Detail Mahasiswa',
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
              Padding(
                padding: const EdgeInsets.only(top: 36, bottom: 8),
                child: Text(
                  'Proposal Skripsi',
                  style: textHeading,
                ),
              ),
              DetailInfoWidget(
                title: 'Nama',
                value: data['nama'],
              ),
              DetailInfoWidget(
                title: 'NPM',
                value: data['npm'].toString(),
              ),
              DetailInfoWidget(
                title: 'Dosen Pembimbing',
                value: data['pembimbing_proposal'],
              ),
              DetailInfoWidget(
                title: 'Judul Proposal',
                value: data['judul_proposal'],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailInfoWidget extends StatelessWidget {
  final String title;
  final String value;
  const DetailInfoWidget({Key? key, required this.title, required this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: textMuted.copyWith(fontWeight: FontWeight.w500),
          ),
          Text(
            value == '' ? '-' : value,
            style: textTitle.copyWith(height: 1.5),
          )
        ],
      ),
    );
  }
}
