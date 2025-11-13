import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:myapp/core/services/theme_provider.dart';
import 'package:myapp/features/orders/presentation/widgets/order_summary_card.dart';
import 'package:myapp/features/orders/presentation/widgets/search_bar_widget.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    final isDarkMode = themeProvider.themeMode == ThemeMode.dark;
    final fabIconColor = Theme.of(context).floatingActionButtonTheme.foregroundColor;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Orders'),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          children: const [
            SizedBox(height: 20),
            SearchBarWidget(),
            SizedBox(height: 20),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: SvgPicture.asset(
          'assets/icons/store.svg',
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(
            fabIconColor ?? (isDarkMode ? Colors.black : Colors.white),
            BlendMode.srcIn,
          ),
        ),
      ),
    );
  }
}
