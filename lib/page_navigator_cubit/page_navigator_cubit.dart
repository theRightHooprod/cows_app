import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'page_navigator_state.dart';

class PageNavigatorCubit extends Cubit<PageNavigatorState> {
  PageNavigatorCubit() : super(PageNavigatorInitial());

  void showCowInDetail(){
    emit(PageNavigatorShowCowDetailViewActionState());
  }
}
