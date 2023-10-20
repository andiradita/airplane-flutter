import 'package:equatable/equatable.dart';

import 'destination_model.dart';

class TransactionModel extends Equatable {
  final DestinationModel destination;
  final int amountOfTraveler;
  final String selectedSeats;
  final bool isInsurance;
  final bool isRefundable;
  final double vat;
  final int price;
  final int grandTotal;

  TransactionModel(
      {required this.destination,
      this.amountOfTraveler = 0,
      this.selectedSeats = '',
      this.isInsurance = false,
      this.isRefundable = false,
      this.vat = 0,
      this.price = 0,
      this.grandTotal = 0});

  @override
  List<Object?> get props => [
        destination,
        amountOfTraveler,
        selectedSeats,
        isInsurance,
        isRefundable,
        vat,
        price,
        grandTotal
      ];
}
