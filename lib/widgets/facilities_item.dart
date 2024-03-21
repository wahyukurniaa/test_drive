import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_drive/theme.dart';

class FacilitiesItem extends StatelessWidget {
  final String? name;
  final String? imageUrl;
  final int? total;

  const FacilitiesItem({this.name, this.imageUrl, this.total, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          imageUrl!,
          width: 30,
        ),
        const SizedBox(height: 8),
        Text.rich(
          TextSpan(
            text: '$total',
            style: purpleTextStyle.copyWith(fontSize: 14),
            children: [
              TextSpan(
                text: ' $name',
                style: greyTextStyle.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
