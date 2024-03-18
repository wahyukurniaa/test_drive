import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_drive/model/space.dart';
import 'package:test_drive/theme.dart';

class SpaceCard extends StatelessWidget {
  final Space space;

  const SpaceCard(
    this.space, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: SizedBox(
            width: 130,
            height: 110,
            child: Stack(
              children: [
                Image.asset(space.imageUrl!),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 70,
                    height: 30,
                    decoration: BoxDecoration(
                      color: purpleColor,
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(36),
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/icon_start.png',
                            width: 22,
                            height: 22,
                          ),
                          Text(
                            '${space.rating}/5',
                            style: whiteTextStyle.copyWith(fontSize: 13),
                          )
                        ]),
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              space.name!,
              style: blackTextStyle.copyWith(fontSize: 18),
            ),
            Text.rich(
              TextSpan(
                text: '\$${space.price}',
                style: purpleTextStyle.copyWith(fontSize: 16),
                children: [
                  TextSpan(
                    text: '/ Month',
                    style: greyTextStyle.copyWith(fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '${space.city}, ${space.country}',
              style: greyTextStyle,
            )
          ],
        )
      ],
    );
  }
}
