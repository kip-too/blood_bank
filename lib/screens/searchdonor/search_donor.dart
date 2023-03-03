import 'package:blood_bank/configs/images/blood_groups.dart';
import 'package:blood_bank/configs/images/urls.dart';
import 'package:blood_bank/configs/themes/app_theme.dart';
import 'package:blood_bank/widgets/custom_bottom_navbar.dart';
import 'package:blood_bank/widgets/google_map.dart';
import 'package:flutter/material.dart';

class SearchDonorScreen extends StatefulWidget {
  const SearchDonorScreen({super.key});

  @override
  SearchDonorScreenState createState() => SearchDonorScreenState();
}

class SearchDonorScreenState extends State<SearchDonorScreen> {
  final List<String> items = List.generate(20, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GoogleMapWidget(),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              decoration: const BoxDecoration(
                color: CustomColors.backgroundColor,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (BuildContext context, index) {
                  return Card(
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 16.0,
                      ),
                      child: Row(
                        children: [
                          const CircleAvatar(
                            backgroundImage: NetworkImage(testImage),
                            radius: 30,
                          ),
                          const SizedBox(
                            width: 16.0,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'John Doe',
                                  style: TextStyle(
                                    fontFamily: 'Manrope',
                                    fontWeight: FontWeight.bold,
                                    color: CustomColors.textColor,
                                  ),
                                ),
                                const SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 16.0,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      '4.5',
                                      style: TextStyle(
                                        color: CustomColors.textColor,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                            child: Image(
                              image: NetworkImage(aPositive),
                              height: 20,
                              width: 27,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
