import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          const Opacity(
              opacity: 0.8,
              child: SizedBox(
                height: 140,
                width: double.infinity,
                child: Card(
                  elevation: 3,
                  child: Image(
                    image: NetworkImage(
                        'https://t4.ftcdn.net/jpg/02/80/15/21/360_F_280152178_Syn5plOpbV1ijffvGuUmm8sjDaJofqox.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Positioned(
            left: 0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: RichText(
                  textAlign: TextAlign.left, // Text'i sola hizala
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Coming soon: ',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                      ),
                      TextSpan(
                        text: '40-50 more service providers ',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      TextSpan(
                        text: 'will be at your fingertips!',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
