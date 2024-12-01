import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:railways/domain/search/models/route_model.dart';
import 'package:railways/domain/search/repository/search_repository.dart';

part 'board_cubit.freezed.dart';
part 'board_state.dart';

class BoardCubit extends Cubit<BoardState> {
  final SearchRepository searchRepository;

  BoardCubit(this.searchRepository) : super(const BoardState());

  Future<void> init() async {
    final searchRoutes = await searchRepository.searchAllRoutes();
    emit(
      state.copyWith(
        searchRoutes: searchRoutes,
        isLoading: false,
      ),
    );
  }
}
