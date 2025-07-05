// features/orders/data/models/shipping_address_model.dart
import 'package:bag_store_dash_board/features/orders/domain/entites/shipping_address_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ShippingAddressModel {
  String? fullName;
  String? email;
  String? address;
  String? city;
  String? addressDetails;
  String? phoneNumber;

  ShippingAddressModel(
      {this.fullName,
      this.email,
      this.address,
      this.city,
      this.addressDetails,
      this.phoneNumber});
  toJson() {
    return {
      "fullName": fullName,
      "email": email,
      "address": address,
      "city": city,
      "addressDetails": addressDetails,
      "phoneNumber": phoneNumber,
    };
  }

  factory ShippingAddressModel.fromJson(Map<String, dynamic> json) {
    return ShippingAddressModel(
      fullName: json["fullName"],
      email: json["email"],
      address: json["address"],
      city: json["city"],
      addressDetails: json["addressDetails"],
      phoneNumber: json["phoneNumber"],
    );
  }

  @override
  String toString() {
    return "$address $addressDetails $city";
  }

  toEntity(){
    return ShippingAddressEntity(
      name:fullName,
      phone: phoneNumber,
      city: city,
      address: address,
      addressDetails: addressDetails,
      email: email

    );
  }
}