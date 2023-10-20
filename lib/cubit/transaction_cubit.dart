import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../model/transaction_model.dart';
import '../services/transaction_service.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  void createTransaction(TransactionModel transaction) async {
    try {
      emit(TransactionLoading());
      await TransactionService().createTransaction(transaction);
      emit(TransactionSuccess());
    } catch (e) {
      emit(TransactionFailed(e.toString()));
    }
  }
}
