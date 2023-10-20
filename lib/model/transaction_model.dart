import 'package:equatable/equatable.dart';

import 'destination_model.dart';

class TransactionModel extends Equatable {
  final String id;
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
      this.id = '',
      this.amountOfTraveler = 0,
      this.selectedSeats = '',
      this.isInsurance = false,
      this.isRefundable = false,
      this.vat = 0,
      this.price = 0,
      this.grandTotal = 0});

  factory TransactionModel.fromJson(String id, Map<String, dynamic> json) =>
      TransactionModel(
        destination: DestinationModel.fromJson(
            json['destination']['id'], json['destination']),
        id: id,
        amountOfTraveler: json['amountOfTraveler'],
        selectedSeats: json['selectedSeats'],
        isInsurance: json['insurance'],
        isRefundable: json['refundable'],
        vat: json['vat'],
        price: json['price'],
        grandTotal: json['grandTotal'],
      );

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
