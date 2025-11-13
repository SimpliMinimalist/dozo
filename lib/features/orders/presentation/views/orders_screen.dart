import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:myapp/core/services/theme_provider.dart';
import 'package:myapp/features/orders/presentation/widgets/order_summary_card.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(themeProvider.themeMode == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode),
          onPressed: () => themeProvider.toggleTheme(),
          tooltip: 'Toggle Theme',
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: const [
                  OrderSummaryCard(
                    iconPath: 'assets/icons/box.svg',
                    iconColor: Colors.orange,
                    count: '12',
                    title: 'To Pack',
                  ),
                  SizedBox(height: 10),
                  OrderSummaryCard(
                    iconPath: 'assets/icons/truck.svg',
                    iconColor: Colors.purple,
                    count: '5',
                    title: 'To Dispatch',
                  ),
                  SizedBox(height: 10),
                  OrderSummaryCard(
                    iconPath: 'assets/icons/map-pin.svg',
                    iconColor: Colors.blue,
                    count: '8',
                    title: 'In Transit',
                  ),
                  SizedBox(height: 10),
                  OrderSummaryCard(
                    iconPath: 'assets/icons/check-circle.svg',
                    iconColor: Colors.green,
                    count: '32',
                    title: 'Delivered',
                  ),
                  SizedBox(height: 10),
                  OrderSummaryCard(
                    iconPath: 'assets/icons/alert-circle.svg',
                    iconColor: Colors.red,
                    count: '3',
                    title: 'To Resolve',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.search),
      ),
    );
  }
}
