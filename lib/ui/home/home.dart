import 'package:credpal_assignment/ui/home/widgets/music_player.dart';
import 'package:credpal_assignment/utils/sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../general_widgets/custom_textbox.dart';
import '../../utils/image_res.dart';
import '../../utils/theme.dart';
import 'widgets/merchant_lists.dart';
import 'widgets/phone_list.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SCAFFOLD_COLOR,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            decoration: const BoxDecoration(
              color: CONTAINER_COLOR,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Pay later',
                          style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.fontSize,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        5.ph,
                        Row(
                          children: [
                            Text(
                              'everywhere',
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .titleLarge
                                    ?.fontSize,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            7.pw,
                            const Icon(
                              Icons.error,
                              color: WHITE,
                              size: 20,
                            )
                          ],
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Shopping limit: ₦0',
                          style: TextStyle(
                            fontSize: Theme.of(context)
                                .textTheme
                                .labelMedium
                                ?.fontSize,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        10.ph,
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 10),
                          decoration: BoxDecoration(
                            color: BTN_COLOR,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Center(
                            child: Text(
                              'Activate Credit',
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.fontSize,
                                fontWeight: FontWeight.w700,
                                color: WHITE,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: WHITE,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * .70,
                          child: CustomTextBox(
                            prefixIcon: const Icon(
                              Iconsax.search_normal,
                              color: Colors.grey,
                            ),
                            labelText: 'Search for products or stores',
                            lableStyle: TextStyle(
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .titleSmall
                                  ?.fontSize,
                              color: Colors.grey,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          decoration: BoxDecoration(
                            color: SCAFFOLD_COLOR,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Image.asset(
                              scan,
                              height: 25,
                              width: 25,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  10.ph,
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .29,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: PhoneCard(),
                    ),
                  ),
                  10.ph,
                  SizedBox(
                    height: MediaQuery.of(context).size.height * .29,
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: MusicPlayerCard(),
                    ),
                  ),
                  20.ph,
                  Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 25),
                    decoration: const BoxDecoration(
                      color: WHITE,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Featured Merchants',
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.fontSize,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'View all',
                                style: TextStyle(
                                  fontSize: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.fontSize,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            )
                          ],
                        ),
                        10.ph,
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .60,
                          child: const MerchantCard(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
