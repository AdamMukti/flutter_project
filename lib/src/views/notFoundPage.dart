import 'package:flutter/material.dart';
import 'package:flutter_project/src/utility/theme_text.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/image/maintenance.png'),
            Text('Halaman ini masih dalam pengembangan',
                style: textTitle.copyWith(
                  fontSize: 24,
                ),
                textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  }
}
