import 'package:flutter/material.dart';
import 'package:responsividade/breakpoints.dart';
import 'package:responsividade/pages/home/widgets/custom_search_field.dart';

class TopSection extends StatelessWidget {
  const TopSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      if (maxWidth >= tabletBreakpoint) {
        return AspectRatio(
          aspectRatio: 3.2,
          child: Stack(
            children: [
              AspectRatio(
                aspectRatio: 3.4,
                child: Image.network(
                  'https://t4.ftcdn.net/jpg/04/92/24/99/240_F_492249912_ESfw22KmR1CQQzSmYETJqTCJjp48A6yu.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 50,
                top: 50,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    width: 450,
                    child: Column(
                      children: const [
                        Text(
                          'Aprenda a programar com o Flutter',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Flutter é uma plataforma de desenvolvimento de aplicativos multiplataforma (Android, iOS, Windows, etc.) desenvolvida pela Google, com foco em tornar a vida das aplicações mais fácil, rápida e intuitiva.',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 8),
                        CustomSearchField(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      if (maxWidth >= mobileBrakepoint) {
        return SizedBox(
          height: 320,
          child: Stack(
            children: [
              SizedBox(
                height: 250,
                width: double.infinity,
                child: Image.network(
                  'https://t4.ftcdn.net/jpg/04/92/24/99/240_F_492249912_ESfw22KmR1CQQzSmYETJqTCJjp48A6yu.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 20,
                top: 20,
                child: Card(
                  color: Colors.black,
                  elevation: 8,
                  child: Container(
                    padding: const EdgeInsets.all(22),
                    width: 350,
                    child: Column(
                      children: const [
                        Text(
                          'Aprenda a programar com o Flutter',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Flutter é uma plataforma de desenvolvimento de aplicativos multiplataforma (Android, iOS, Windows, etc.) desenvolvida pela Google, com foco em tornar a vida das aplicações mais fácil, rápida e intuitiva.',
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 16),
                        CustomSearchField(),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }

      return Column(
        children: [
          AspectRatio(
            aspectRatio: 3.4,
            child: Image.network(
              'https://t4.ftcdn.net/jpg/04/92/24/99/240_F_492249912_ESfw22KmR1CQQzSmYETJqTCJjp48A6yu.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Aprenda a programar com o Flutter',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Flutter é uma plataforma de desenvolvimento de aplicativos multiplataforma (Android, iOS, Windows, etc.) desenvolvida pela Google, com foco em tornar a vida das aplicações mais fácil, rápida e intuitiva.',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 16),
                CustomSearchField(),
              ],
            ),
          ),
        ],
      );
    });
  }
}
