part of 'page_navigator_cubit.dart';

@immutable
sealed class PageNavigatorState {}


final class PageNavigatorInitial extends PageNavigatorState {}

@immutable
sealed class PageNavigatorActionState extends PageNavigatorState{}

final class PageNavigatorShowCowDetailViewActionState extends PageNavigatorActionState {}