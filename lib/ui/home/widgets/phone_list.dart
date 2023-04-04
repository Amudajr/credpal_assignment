import 'package:credpal_assignment/utils/sizedbox.dart';
import 'package:credpal_assignment/utils/theme.dart';
import 'package:flutter/material.dart';

import '../../../utils/image_res.dart';

class PhoneCard extends StatelessWidget {
  const PhoneCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Center(
                      child: Container(
                        height: MediaQuery.of(context).size.height * .20,
                        width: MediaQuery.of(context).size.width * .40,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(phone),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: -5,
                      top: 10,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: WHITE,
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Pay',
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.fontSize,
                                fontWeight: FontWeight.w800,
                                color: Colors.grey,
                              ),
                            ),
                            Text(
                              '40%',
                              style: TextStyle(
                                fontSize: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.fontSize,
                                fontWeight: FontWeight.w800,
                                color: BLUE,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Nokia G20',
                  style: TextStyle(
                    fontSize: Theme.of(context).textTheme.titleMedium?.fontSize,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                5.ph,
                Row(
                  children: [
                    Text(
                      '₦ 39,780',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.titleMedium?.fontSize,
                        fontWeight: FontWeight.w800,
                        color: BLUE,
                      ),
                    ),
                    10.pw,
                    Text(
                      '₦ 88,000',
                      style: TextStyle(
                        fontSize:
                            Theme.of(context).textTheme.titleMedium?.fontSize,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                        decoration: TextDecoration.lineThrough,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) => 10.pw,
      itemCount: 10,
    );
  }
}
