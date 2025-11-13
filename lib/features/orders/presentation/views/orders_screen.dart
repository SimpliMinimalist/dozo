import 'package:flutter/material.dart';
import 'package:myapp/features/orders/presentation/widgets/search_bar.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        OrdersSearchBar(),
        Expanded(
          child: Center(
            child: Text('Orders Screen'),
          ),
        ),
      ],
    );
  }
}
