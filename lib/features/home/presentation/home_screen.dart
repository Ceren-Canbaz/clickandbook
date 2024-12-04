import 'package:auto_route/auto_route.dart';
import 'package:clickandbook/core/constants/svg_paths.dart';

import 'package:clickandbook/features/home/presentation/widgets/category_section.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //mock firebase initialize edildikten sonra degisecek.
    final List<Map<String, String>> categories = [
      {
        'name': 'Kadın Kuaförü',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdRSLpffU1F920M_pZU-IgqNGqkM91eUTNcw&s'
      },
      {
        'name': 'Erkek Kuaförü',
        'image':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRl--_CbTSLSEQ_q6WODNT-4xSp9Zq5fqBCsw&s'
      },
      {
        'name': 'Berber',
        'image':
            'https://heyjoebrand.com/wp-content/uploads/barberia-destacada-does-barbershop.jpg.webp'
      },
      {
        'name': 'Tırnak Bakımı',
        'image':
            'https://ndnailsupply.com/cdn/shop/articles/4_Steps_to_Run_a_Nail_Salon_Business_to_Always_Have_Profit.jpg?v=1635846173'
      },
      {
        'name': 'Masaj',
        'image':
            'https://lapisinnhotel.com/wp-content/uploads/2020/07/BY-81.jpg'
      },
      {
        'name': 'Cilt Bakımı',
        'image':
            'https://mahekbeauty.com/wp-content/uploads/2022/08/beautician-with-brush-applies-white-moisturizing-mask-face-young-girl-client-spa-beauty-salon.jpg'
      },
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 72,
            flexibleSpace: FlexibleSpaceBar(
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Click&Book",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  Opacity(
                    opacity: 0.8,
                    child: SvgPicture.asset(
                      SvgPaths.vectorPattern,
                      height: 32,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                CategorySection(
                  categories: categories,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
