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
                    Navigator.of(context).pushNamed(
                      '/vistaDetallada',
                      arguments: [
                        state.name,
                        state.description,
                        state.imageUrl
                      ],
                    );
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
          '/vistaDetallada': (context) {
            final arguments =
                ModalRoute.of(context)?.settings.arguments as List<String>;

            return Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.indigo,
                title: const Center(
                  child: Text(
                    'Cow Info',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              body: CowDetailView(
                name: arguments[0],
                description: arguments[1],
                imageUrl: arguments[2],
              ),
            );
          }
        },
      ),
    ),
  );
}
