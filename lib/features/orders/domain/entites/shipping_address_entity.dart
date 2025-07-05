// features/orders/domain/entites/shipping_address_entity.dart

class ShippingAddressEntity {
   String? name;
   String? phone;
   String? city;
   String ?email;
   String ?address;
   String ?addressDetails;

  ShippingAddressEntity({
     this.name,this.phone,this.city, this.email,this.address,this.addressDetails});
     
 
@override
  String toString(){
    return '$address $addressDetails $city';
}}