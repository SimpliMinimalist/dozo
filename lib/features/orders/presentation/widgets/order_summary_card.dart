
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OrderSummaryCard extends StatelessWidget {
  const OrderSummaryCard({
    super.key,
    required this.iconPath,
    required this.iconColor,
    required this.count,
    required this.title,
  });

  final String iconPath;
  final Color iconColor;
  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: iconColor,
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(
                iconPath,
                width: 24,
                height: 24,
                colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
              ),
            ),
            const SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  count,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const Spacer(),
            const Icon(Icons.arrow_forward_ios, size: 16.0),
          ],
        ),
      ),
    );
  }
}
