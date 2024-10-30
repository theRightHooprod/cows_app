import 'package:cows_app/cow_detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home.dart';
import 'page_navigator_cubit/page_navigator_cubit.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => PageNavigatorCubit(),
        )
      ],
      child: MaterialApp(
        initialRoute: '/',
        routes: {
          '/': (_) => BlocListener<PageNavigatorCubit, PageNavigatorState>(
                listener: (context, state) {
                  if (state is PageNavigatorShowCowDetailViewActionState) {
                    Navigator.of(context).pushNamed('/vistaDetallada');
                  }
                },
                child: Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.indigo,
                    title: const Center(
                      child: Text(
                        'Cow Info',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  body: const Home(),
                ),
              ),
          '/vistaDetallada': (_) => Scaffold(
                appBar: AppBar(
                  backgroundColor: Colors.indigo,
                  title: const Center(
                    child: Text(
                      'Cow Info',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                body: const CowDetailView(),
              )
        },
      ),
    ),
  );
}
