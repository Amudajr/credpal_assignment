import 'package:credpal_assignment/utils/sizedbox.dart';
import 'package:flutter/material.dart';

import '../../../utils/image_res.dart';

class MerchantCard extends StatelessWidget {
  const MerchantCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        mainAxisExtent: 100,
      ),
      itemBuilder: (context, index) {
        return Column(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(merchant),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            5.ph,
            Text(
              'Orile Restaurant',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: Theme.of(context).textTheme.labelMedium?.fontSize,
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        );
      },
      itemCount: 15,
    );
  }
}
