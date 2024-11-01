import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../data/cow_info.dart';

part 'page_navigator_state.dart';

class PageNavigatorCubit extends Cubit<PageNavigatorState> {
  PageNavigatorCubit() : super(PageNavigatorInitial());

  void showCowInDetail({required int id}) {
    Map<String, dynamic> cowInfo =
        cows.where((element) => element['id'] == id).first;

    emit(
      PageNavigatorShowCowDetailViewActionState(
          description: cowInfo['desc'],
          name: cowInfo['name'],
          imageUrl: cowInfo['image']),
    );
  }
}
