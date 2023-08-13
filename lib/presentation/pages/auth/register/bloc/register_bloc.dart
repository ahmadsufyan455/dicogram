import 'package:dicogram/domain/usecases/register_usecase.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUsecase registerUsecase;

  RegisterBloc({required this.registerUsecase}) : super(RegisterInitial()) {
    on<Register>((event, emit) async {
      emit(RegisterLoading());
      try {
        await registerUsecase.register(event.data);
        emit(RegisterSuccess());
      } catch (e) {
        emit(RegisterError(e.toString()));
      }
    });
  }
}
