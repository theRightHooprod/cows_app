part of 'page_navigator_cubit.dart';

@immutable
sealed class PageNavigatorState {}

final class PageNavigatorInitial extends PageNavigatorState {}

@immutable
sealed class PageNavigatorActionState extends PageNavigatorState {}

final class PageNavigatorShowCowDetailViewActionState
    extends PageNavigatorActionState {
  final String name;
  final String description;
  final String imageUrl;

  PageNavigatorShowCowDetailViewActionState({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}
