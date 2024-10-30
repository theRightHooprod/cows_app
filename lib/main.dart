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
      child: BlocListener<PageNavigatorCubit, PageNavigatorState>(
        listener: (context, state) {
          if(state is PageNavigatorShowCowDetailViewActionState){
            print('pitote');
          }
        },
        child: MaterialApp(
          home: Scaffold(
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
      ),
    ),
  );
}
