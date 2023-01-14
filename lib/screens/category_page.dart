import 'package:e_commerce/screens/filter_page.dart';
import 'package:e_commerce/utils/colors.dart';
import 'package:e_commerce/utils/images.dart';
import 'package:e_commerce/utils/texts.dart';
import 'package:e_commerce/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.bgColor,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.06,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.90,
            width: MediaQuery.of(context).size.width * 100,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(Icons.arrow_back_outlined)),
                      Text(
                        TextConstant.speakersText,
                        style: TextStyle(
                          color: ColorConstant.blackColor,
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ),
                      Image.asset(ImageConstant.options),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.015,
                ),
                Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 1.00,
                  child: cardCategory2(
                      context,
                      ImageConstant.soundBalance,
                      TextConstant.soundBalanceText,
                      TextConstant.soundBalanceAboutText,
                      0.28, // Height Card Box
                      0.90, // Width Card Box
                      0.45, // Height Main Box
                      1.00, // Width Main Box
                      0.34, // Card Top Direction
                      0.05, // Card Left Direction
                      0.05, // Image Left Direction
                      -0.01, // Image Top Direction
                      0.05, // Text Left Direction
                      0.62, // Text Top Direction
                      0.72, // Product Top Direction
                      0.05, // Product Left Direction
                      0.85, // Indicator Top Direction
                      0.425), // Indicator Left Direction
                ),

                // TabBar View

                SizedBox(
                  width: MediaQuery.of(context).size.width * 1.00,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: TabBar(
                        controller: _tabController,
                        labelColor: ColorConstant.blackColor,
                        indicatorColor: ColorConstant.blackColor,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 12),
                        labelPadding: const EdgeInsets.only(right: 10),
                        tabs: [
                          Tab(
                            text: TextConstant.tabbar1Text,
                          ),
                          Tab(
                            text: TextConstant.tabbar2Text,
                          ),
                          Tab(
                            text: TextConstant.tabbar3Text,
                          ),
                          Tab(
                            text: TextConstant.tabbar4Text,
                          ),
                        ]),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.30,
                  child: TabBarView(controller: _tabController, children: [
                    // card 3 start

                    Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 0.01,
                        ),
                        cardCategory3(
                            context,
                            0.14,
                            1.00,
                            0.01,
                            0.10,
                            0.80,
                            0.13,
                            ImageConstant.beosound,
                            TextConstant.beosoundText),
                        cardCategory3(
                            context,
                            0.14,
                            1.00,
                            0.01,
                            0.10,
                            0.80,
                            0.13,
                            ImageConstant.beoPlay,
                            TextConstant.beoPlayText),
                      ],
                    ),
                    // card 3 end
                    Center(
                        child: Text(
                      TextConstant.tabbar2Text,
                      textAlign: TextAlign.center,
                    )),
                    Center(
                        child: Text(
                      TextConstant.tabbar3Text,
                      textAlign: TextAlign.center,
                    )),
                    Center(
                        child: Text(
                      TextConstant.tabbar4Text,
                      textAlign: TextAlign.center,
                    )),
                  ]),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.010,
          ),
          Container(
            alignment: Alignment.bottomCenter,
            height: MediaQuery.of(context).size.height * 0.013,
            child: Opacity(
                opacity: 0.05, child: Image.asset(ImageConstant.homeIndicator)),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const FilterPage()));
        },
        backgroundColor: ColorConstant.startedButtonColor,
        child: Image.asset(ImageConstant.shoppingBag),
      ),
    );
  }
}
