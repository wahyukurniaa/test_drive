import 'package:flutter/material.dart';
import 'package:test_drive/model/city.dart';
import 'package:test_drive/theme.dart';
import 'package:test_drive/widgets/city_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: edge),
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Explore Now',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
              ),
              const SizedBox(height: 2),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Mencari Kosan Terdekat',
                  style: greyTextStyle.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(height: 30),
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Popular Cities',
                  style: regulerTextStyle.copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(width: edge),
                    CityCard(
                      City(
                        name: 'Bandung',
                        imageUrl: 'assets/city1.png',
                      ),
                    ),
                    const SizedBox(width: 20),
                    CityCard(
                      City(
                          name: 'Karawang',
                          imageUrl: 'assets/city2.png',
                          isPopular: true),
                    ),
                    const SizedBox(width: 20),
                    CityCard(
                      City(
                        name: 'Bali',
                        imageUrl: 'assets/city3.png',
                      ),
                    ),
                    const SizedBox(width: 20),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
