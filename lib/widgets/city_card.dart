import 'package:flutter/material.dart';
import 'package:test_drive/theme.dart';

class CityCard extends StatelessWidget {
  const CityCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        height: 150,
        width: 120,
        color: const Color(0xffF6F7F8),
        child: Column(
          children: [
            Image.asset(
              'assets/city1.png',
              width: 120,
              height: 102,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 11,
            ),
            Text(
              'Jakarta',
              style: blackTextStyle.copyWith(fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
