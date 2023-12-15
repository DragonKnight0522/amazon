import 'package:amazon_clone/common/widgets/loader.dart';
import 'package:amazon_clone/features/home/services/home_services.dart';
import 'package:amazon_clone/models/product.dart';
import 'package:flutter/material.dart';

class DealOfDay extends StatefulWidget {
  const DealOfDay({super.key});

  @override
  State<DealOfDay> createState() => _DealOfDayState();
}

class _DealOfDayState extends State<DealOfDay> {
  Product? product;
  final HomeServices homeServices = HomeServices();

  @override
  void initState() {
    super.initState();
    fetchDealOfDay();
  }

  fetchDealOfDay() async {
    product = await homeServices.fetchDealOfDay(context: context);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return product == null
        ? const Loader()
        : Column(
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 10, top: 15),
                child: const Text(
                  'Deal of the day',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
              Image.network(
                'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
                height: 235,
                fit: BoxFit.fitHeight,
              ),
              Container(
                padding: const EdgeInsets.only(left: 15),
                alignment: Alignment.topLeft,
                child: const Text(
                  '\$100',
                  style: const TextStyle(fontSize: 18),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 15, top: 5, right: 40),
                child: const Text(
                  'Rivaan',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      'https://images.unsplash.com/photo-1698180687401-339ba2c624bf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8fA%3D%3D',
                      fit: BoxFit.fitWidth,
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      'https://images.unsplash.com/photo-1698180687401-339ba2c624bf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8fA%3D%3D',
                      fit: BoxFit.fitWidth,
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      'https://images.unsplash.com/photo-1698180687401-339ba2c624bf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8fA%3D%3D',
                      fit: BoxFit.fitWidth,
                      width: 100,
                      height: 100,
                    ),
                    Image.network(
                      'https://images.unsplash.com/photo-1698180687401-339ba2c624bf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8fA%3D%3D',
                      fit: BoxFit.fitWidth,
                      width: 100,
                      height: 100,
                    ),
                  ],
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 15).copyWith(left: 15),
                alignment: Alignment.topLeft,
                child: Text(
                  'See all deals',
                  style: TextStyle(
                    color: Colors.cyan[800],
                  ),
                ),
              )
            ],
          );
  }
}
