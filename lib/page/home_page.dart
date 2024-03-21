import 'package:flutter/material.dart';
import 'package:test_drive/model/city.dart';
import 'package:test_drive/model/space.dart';
import 'package:test_drive/model/tips.dart';
import 'package:test_drive/theme.dart';
import 'package:test_drive/widgets/bottom_navigation_item.dart';
import 'package:test_drive/widgets/city_card.dart';
import 'package:test_drive/widgets/space_card.dart';
import 'package:test_drive/widgets/tips_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: ListView(
          children: [
            SizedBox(
              height: edge,
            ),
            //NOTE: Explore Now
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
            //NOTE: Popular Cities
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
            ),
            const SizedBox(
              height: 30,
            ),
            //NOTE: Recommended Space
            Padding(
              padding: EdgeInsets.only(left: edge),
              child: Text(
                'Recommended Space',
                style: regulerTextStyle.copyWith(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  SpaceCard(
                    Space(
                      id: 1,
                      name: 'Kalam Kalam Adem',
                      imageUrl: 'assets/space1.png',
                      price: 52,
                      city: 'Koto',
                      country: 'Indonesia',
                      rating: 4,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      id: 2,
                      name: 'Angin Ambuih Ambuih',
                      imageUrl: 'assets/space2.png',
                      price: 65,
                      city: 'Kadunduang',
                      country: 'Indonesia',
                      rating: 5,
                    ),
                  ),
                  const SizedBox(height: 30),
                  SpaceCard(
                    Space(
                      id: 3,
                      name: 'Batang aia momen',
                      imageUrl: 'assets/space3.png',
                      price: 60,
                      city: 'Aia Mancua',
                      country: 'Indonesia',
                      rating: 4,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: edge,
              ),
              child: Text(
                'Tips And Guidance',
                style: regulerTextStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge),
              child: Column(
                children: [
                  TipsCard(
                    Tips(
                        id: 1,
                        name: 'City Guidance',
                        imageUrl: 'assets/tips1.png',
                        updatedAt: '25 Aprl'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TipsCard(
                    Tips(
                      id: 2,
                      name: 'Jakarta Fireship',
                      imageUrl: 'assets/tips2.png',
                      updatedAt: '2 Mei',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 70 + edge,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
          color: const Color(0xffF6F7F8),
          borderRadius: BorderRadius.circular(23),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_email.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/icon_love.png',
              isActive: false,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
