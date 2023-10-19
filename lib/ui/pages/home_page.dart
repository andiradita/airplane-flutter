import 'package:airplane/cubit/auth_cubit.dart';
import 'package:airplane/shared/theme.dart';
import 'package:airplane/ui/widgets/destionation_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/destination_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
            return Container(
              margin: EdgeInsets.only(
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Howdy,\n${state.user.name}',
                          style: blackTextStyle.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Where to fly today?',
                          style: greyTextStyle.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          'assets/image_profile.png',
                        ),
                      ),
                      shape: BoxShape.circle,
                    ),
                  )
                ],
              ),
            );
          } else {
            return SizedBox();
          }
        },
      );
    }

    Widget populardestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationCard(
                name: 'Lake Ciliwung',
                city: 'Tangerang',
                imageUrl: 'assets/image_destination1.png',
                rating: 4.5,
              ),
              DestinationCard(
                name: 'White Houses',
                city: 'Spain',
                imageUrl: 'assets/image_destination2.png',
                rating: 3.1,
              ),
              DestinationCard(
                name: 'Danau Beratan',
                city: 'Bali',
                imageUrl: 'assets/image_destination3.png',
                rating: 4.8,
              )
            ],
          ),
        ),
      );
    }

    Widget listdestinations() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          left: defaultMargin,
          right: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: blackTextStyle.copyWith(
                fontWeight: semiBold,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              children: [
                DestinationList(
                  name: 'Danau Beratan',
                  city: 'Bali',
                  imageUrl: 'assets/image_destination3.png',
                  rating: 4.5,
                ),
                DestinationList(
                  name: 'Danau Beratan',
                  city: 'Bali',
                  imageUrl: 'assets/image_destination3.png',
                  rating: 4.5,
                ),
                DestinationList(
                  name: 'Danau Beratan',
                  city: 'Bali',
                  imageUrl: 'assets/image_destination3.png',
                  rating: 4.5,
                ),
                DestinationList(
                  name: 'Danau Beratan',
                  city: 'Bali',
                  imageUrl: 'assets/image_destination3.png',
                  rating: 4.5,
                ),
                DestinationList(
                  name: 'Danau Beratan',
                  city: 'Bali',
                  imageUrl: 'assets/image_destination3.png',
                  rating: 4.5,
                )
              ],
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        populardestinations(),
        listdestinations(),
      ],
    );
  }
}
