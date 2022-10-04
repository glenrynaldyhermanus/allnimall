// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'orders_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrdersRecord> _$ordersRecordSerializer =
    new _$OrdersRecordSerializer();

class _$OrdersRecordSerializer implements StructuredSerializer<OrdersRecord> {
  @override
  final Iterable<Type> types = const [OrdersRecord, _$OrdersRecord];
  @override
  final String wireName = 'OrdersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, OrdersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.createdAt;
    if (value != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.orderNo;
    if (value != null) {
      result
        ..add('order_no')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.petCategory;
    if (value != null) {
      result
        ..add('pet_category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.scheduledAt;
    if (value != null) {
      result
        ..add('scheduled_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.service;
    if (value != null) {
      result
        ..add('service')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.quantity;
    if (value != null) {
      result
        ..add('quantity')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.status;
    if (value != null) {
      result
        ..add('status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerAddress;
    if (value != null) {
      result
        ..add('customer_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerLatlng;
    if (value != null) {
      result
        ..add('customer_latlng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.customerName;
    if (value != null) {
      result
        ..add('customer_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.paymentStatus;
    if (value != null) {
      result
        ..add('payment_status')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prefferedTime;
    if (value != null) {
      result
        ..add('preffered_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.discount;
    if (value != null) {
      result
        ..add('discount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.notes;
    if (value != null) {
      result
        ..add('notes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.startTime;
    if (value != null) {
      result
        ..add('start_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.endTime;
    if (value != null) {
      result
        ..add('end_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rangerName;
    if (value != null) {
      result
        ..add('ranger_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rangerPhone;
    if (value != null) {
      result
        ..add('ranger_phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rangerProfilePicture;
    if (value != null) {
      result
        ..add('ranger_profile_picture')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.confirmedAt;
    if (value != null) {
      result
        ..add('confirmed_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.customerPhone;
    if (value != null) {
      result
        ..add('customer_phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.onthewayAt;
    if (value != null) {
      result
        ..add('ontheway_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.customerUid;
    if (value != null) {
      result
        ..add('customer_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.rangerUid;
    if (value != null) {
      result
        ..add('ranger_uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.workingAt;
    if (value != null) {
      result
        ..add('working_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.finishAt;
    if (value != null) {
      result
        ..add('finish_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.paidAt;
    if (value != null) {
      result
        ..add('paid_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.paymentMethod;
    if (value != null) {
      result
        ..add('payment_method')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.cancelledAt;
    if (value != null) {
      result
        ..add('cancelled_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.rate;
    if (value != null) {
      result
        ..add('rate')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.comment;
    if (value != null) {
      result
        ..add('comment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rejectedAt;
    if (value != null) {
      result
        ..add('rejected_at')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.preferredTime;
    if (value != null) {
      result
        ..add('preferred_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.preferredDay;
    if (value != null) {
      result
        ..add('preferred_day')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.customerCity;
    if (value != null) {
      result
        ..add('customer_city')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  OrdersRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrdersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'order_no':
          result.orderNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pet_category':
          result.petCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'scheduled_at':
          result.scheduledAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'service':
          result.service = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'quantity':
          result.quantity = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customer_address':
          result.customerAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customer_latlng':
          result.customerLatlng = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'customer_name':
          result.customerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'payment_status':
          result.paymentStatus = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preffered_time':
          result.prefferedTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'discount':
          result.discount = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'notes':
          result.notes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'start_time':
          result.startTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'end_time':
          result.endTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ranger_name':
          result.rangerName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ranger_phone':
          result.rangerPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ranger_profile_picture':
          result.rangerProfilePicture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'confirmed_at':
          result.confirmedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'customer_phone':
          result.customerPhone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ontheway_at':
          result.onthewayAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'customer_uid':
          result.customerUid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'ranger_uid':
          result.rangerUid = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'working_at':
          result.workingAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'finish_at':
          result.finishAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'paid_at':
          result.paidAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'payment_method':
          result.paymentMethod = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'cancelled_at':
          result.cancelledAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'rate':
          result.rate = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'comment':
          result.comment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'rejected_at':
          result.rejectedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'preferred_time':
          result.preferredTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'preferred_day':
          result.preferredDay = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'customer_city':
          result.customerCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$OrdersRecord extends OrdersRecord {
  @override
  final DateTime? createdAt;
  @override
  final String? orderNo;
  @override
  final String? petCategory;
  @override
  final String? name;
  @override
  final DateTime? scheduledAt;
  @override
  final String? service;
  @override
  final int? quantity;
  @override
  final double? amount;
  @override
  final String? status;
  @override
  final String? customerAddress;
  @override
  final LatLng? customerLatlng;
  @override
  final String? customerName;
  @override
  final String? paymentStatus;
  @override
  final String? prefferedTime;
  @override
  final double? discount;
  @override
  final String? notes;
  @override
  final String? startTime;
  @override
  final String? endTime;
  @override
  final String? rangerName;
  @override
  final String? rangerPhone;
  @override
  final String? rangerProfilePicture;
  @override
  final DateTime? confirmedAt;
  @override
  final String? customerPhone;
  @override
  final DateTime? onthewayAt;
  @override
  final DocumentReference<Object?>? customerUid;
  @override
  final DocumentReference<Object?>? rangerUid;
  @override
  final DateTime? workingAt;
  @override
  final DateTime? finishAt;
  @override
  final DateTime? paidAt;
  @override
  final String? paymentMethod;
  @override
  final DateTime? cancelledAt;
  @override
  final int? rate;
  @override
  final String? comment;
  @override
  final DateTime? rejectedAt;
  @override
  final String? preferredTime;
  @override
  final String? preferredDay;
  @override
  final String? customerCity;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$OrdersRecord([void Function(OrdersRecordBuilder)? updates]) =>
      (new OrdersRecordBuilder()..update(updates))._build();

  _$OrdersRecord._(
      {this.createdAt,
      this.orderNo,
      this.petCategory,
      this.name,
      this.scheduledAt,
      this.service,
      this.quantity,
      this.amount,
      this.status,
      this.customerAddress,
      this.customerLatlng,
      this.customerName,
      this.paymentStatus,
      this.prefferedTime,
      this.discount,
      this.notes,
      this.startTime,
      this.endTime,
      this.rangerName,
      this.rangerPhone,
      this.rangerProfilePicture,
      this.confirmedAt,
      this.customerPhone,
      this.onthewayAt,
      this.customerUid,
      this.rangerUid,
      this.workingAt,
      this.finishAt,
      this.paidAt,
      this.paymentMethod,
      this.cancelledAt,
      this.rate,
      this.comment,
      this.rejectedAt,
      this.preferredTime,
      this.preferredDay,
      this.customerCity,
      this.ffRef})
      : super._();

  @override
  OrdersRecord rebuild(void Function(OrdersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrdersRecordBuilder toBuilder() => new OrdersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrdersRecord &&
        createdAt == other.createdAt &&
        orderNo == other.orderNo &&
        petCategory == other.petCategory &&
        name == other.name &&
        scheduledAt == other.scheduledAt &&
        service == other.service &&
        quantity == other.quantity &&
        amount == other.amount &&
        status == other.status &&
        customerAddress == other.customerAddress &&
        customerLatlng == other.customerLatlng &&
        customerName == other.customerName &&
        paymentStatus == other.paymentStatus &&
        prefferedTime == other.prefferedTime &&
        discount == other.discount &&
        notes == other.notes &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        rangerName == other.rangerName &&
        rangerPhone == other.rangerPhone &&
        rangerProfilePicture == other.rangerProfilePicture &&
        confirmedAt == other.confirmedAt &&
        customerPhone == other.customerPhone &&
        onthewayAt == other.onthewayAt &&
        customerUid == other.customerUid &&
        rangerUid == other.rangerUid &&
        workingAt == other.workingAt &&
        finishAt == other.finishAt &&
        paidAt == other.paidAt &&
        paymentMethod == other.paymentMethod &&
        cancelledAt == other.cancelledAt &&
        rate == other.rate &&
        comment == other.comment &&
        rejectedAt == other.rejectedAt &&
        preferredTime == other.preferredTime &&
        preferredDay == other.preferredDay &&
        customerCity == other.customerCity &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, createdAt.hashCode), orderNo.hashCode), petCategory.hashCode), name.hashCode), scheduledAt.hashCode), service.hashCode), quantity.hashCode), amount.hashCode), status.hashCode), customerAddress.hashCode), customerLatlng.hashCode), customerName.hashCode), paymentStatus.hashCode), prefferedTime.hashCode), discount.hashCode), notes.hashCode), startTime.hashCode), endTime.hashCode), rangerName.hashCode),
                                                                                rangerPhone.hashCode),
                                                                            rangerProfilePicture.hashCode),
                                                                        confirmedAt.hashCode),
                                                                    customerPhone.hashCode),
                                                                onthewayAt.hashCode),
                                                            customerUid.hashCode),
                                                        rangerUid.hashCode),
                                                    workingAt.hashCode),
                                                finishAt.hashCode),
                                            paidAt.hashCode),
                                        paymentMethod.hashCode),
                                    cancelledAt.hashCode),
                                rate.hashCode),
                            comment.hashCode),
                        rejectedAt.hashCode),
                    preferredTime.hashCode),
                preferredDay.hashCode),
            customerCity.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'OrdersRecord')
          ..add('createdAt', createdAt)
          ..add('orderNo', orderNo)
          ..add('petCategory', petCategory)
          ..add('name', name)
          ..add('scheduledAt', scheduledAt)
          ..add('service', service)
          ..add('quantity', quantity)
          ..add('amount', amount)
          ..add('status', status)
          ..add('customerAddress', customerAddress)
          ..add('customerLatlng', customerLatlng)
          ..add('customerName', customerName)
          ..add('paymentStatus', paymentStatus)
          ..add('prefferedTime', prefferedTime)
          ..add('discount', discount)
          ..add('notes', notes)
          ..add('startTime', startTime)
          ..add('endTime', endTime)
          ..add('rangerName', rangerName)
          ..add('rangerPhone', rangerPhone)
          ..add('rangerProfilePicture', rangerProfilePicture)
          ..add('confirmedAt', confirmedAt)
          ..add('customerPhone', customerPhone)
          ..add('onthewayAt', onthewayAt)
          ..add('customerUid', customerUid)
          ..add('rangerUid', rangerUid)
          ..add('workingAt', workingAt)
          ..add('finishAt', finishAt)
          ..add('paidAt', paidAt)
          ..add('paymentMethod', paymentMethod)
          ..add('cancelledAt', cancelledAt)
          ..add('rate', rate)
          ..add('comment', comment)
          ..add('rejectedAt', rejectedAt)
          ..add('preferredTime', preferredTime)
          ..add('preferredDay', preferredDay)
          ..add('customerCity', customerCity)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class OrdersRecordBuilder
    implements Builder<OrdersRecord, OrdersRecordBuilder> {
  _$OrdersRecord? _$v;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  String? _orderNo;
  String? get orderNo => _$this._orderNo;
  set orderNo(String? orderNo) => _$this._orderNo = orderNo;

  String? _petCategory;
  String? get petCategory => _$this._petCategory;
  set petCategory(String? petCategory) => _$this._petCategory = petCategory;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _scheduledAt;
  DateTime? get scheduledAt => _$this._scheduledAt;
  set scheduledAt(DateTime? scheduledAt) => _$this._scheduledAt = scheduledAt;

  String? _service;
  String? get service => _$this._service;
  set service(String? service) => _$this._service = service;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  double? _amount;
  double? get amount => _$this._amount;
  set amount(double? amount) => _$this._amount = amount;

  String? _status;
  String? get status => _$this._status;
  set status(String? status) => _$this._status = status;

  String? _customerAddress;
  String? get customerAddress => _$this._customerAddress;
  set customerAddress(String? customerAddress) =>
      _$this._customerAddress = customerAddress;

  LatLng? _customerLatlng;
  LatLng? get customerLatlng => _$this._customerLatlng;
  set customerLatlng(LatLng? customerLatlng) =>
      _$this._customerLatlng = customerLatlng;

  String? _customerName;
  String? get customerName => _$this._customerName;
  set customerName(String? customerName) => _$this._customerName = customerName;

  String? _paymentStatus;
  String? get paymentStatus => _$this._paymentStatus;
  set paymentStatus(String? paymentStatus) =>
      _$this._paymentStatus = paymentStatus;

  String? _prefferedTime;
  String? get prefferedTime => _$this._prefferedTime;
  set prefferedTime(String? prefferedTime) =>
      _$this._prefferedTime = prefferedTime;

  double? _discount;
  double? get discount => _$this._discount;
  set discount(double? discount) => _$this._discount = discount;

  String? _notes;
  String? get notes => _$this._notes;
  set notes(String? notes) => _$this._notes = notes;

  String? _startTime;
  String? get startTime => _$this._startTime;
  set startTime(String? startTime) => _$this._startTime = startTime;

  String? _endTime;
  String? get endTime => _$this._endTime;
  set endTime(String? endTime) => _$this._endTime = endTime;

  String? _rangerName;
  String? get rangerName => _$this._rangerName;
  set rangerName(String? rangerName) => _$this._rangerName = rangerName;

  String? _rangerPhone;
  String? get rangerPhone => _$this._rangerPhone;
  set rangerPhone(String? rangerPhone) => _$this._rangerPhone = rangerPhone;

  String? _rangerProfilePicture;
  String? get rangerProfilePicture => _$this._rangerProfilePicture;
  set rangerProfilePicture(String? rangerProfilePicture) =>
      _$this._rangerProfilePicture = rangerProfilePicture;

  DateTime? _confirmedAt;
  DateTime? get confirmedAt => _$this._confirmedAt;
  set confirmedAt(DateTime? confirmedAt) => _$this._confirmedAt = confirmedAt;

  String? _customerPhone;
  String? get customerPhone => _$this._customerPhone;
  set customerPhone(String? customerPhone) =>
      _$this._customerPhone = customerPhone;

  DateTime? _onthewayAt;
  DateTime? get onthewayAt => _$this._onthewayAt;
  set onthewayAt(DateTime? onthewayAt) => _$this._onthewayAt = onthewayAt;

  DocumentReference<Object?>? _customerUid;
  DocumentReference<Object?>? get customerUid => _$this._customerUid;
  set customerUid(DocumentReference<Object?>? customerUid) =>
      _$this._customerUid = customerUid;

  DocumentReference<Object?>? _rangerUid;
  DocumentReference<Object?>? get rangerUid => _$this._rangerUid;
  set rangerUid(DocumentReference<Object?>? rangerUid) =>
      _$this._rangerUid = rangerUid;

  DateTime? _workingAt;
  DateTime? get workingAt => _$this._workingAt;
  set workingAt(DateTime? workingAt) => _$this._workingAt = workingAt;

  DateTime? _finishAt;
  DateTime? get finishAt => _$this._finishAt;
  set finishAt(DateTime? finishAt) => _$this._finishAt = finishAt;

  DateTime? _paidAt;
  DateTime? get paidAt => _$this._paidAt;
  set paidAt(DateTime? paidAt) => _$this._paidAt = paidAt;

  String? _paymentMethod;
  String? get paymentMethod => _$this._paymentMethod;
  set paymentMethod(String? paymentMethod) =>
      _$this._paymentMethod = paymentMethod;

  DateTime? _cancelledAt;
  DateTime? get cancelledAt => _$this._cancelledAt;
  set cancelledAt(DateTime? cancelledAt) => _$this._cancelledAt = cancelledAt;

  int? _rate;
  int? get rate => _$this._rate;
  set rate(int? rate) => _$this._rate = rate;

  String? _comment;
  String? get comment => _$this._comment;
  set comment(String? comment) => _$this._comment = comment;

  DateTime? _rejectedAt;
  DateTime? get rejectedAt => _$this._rejectedAt;
  set rejectedAt(DateTime? rejectedAt) => _$this._rejectedAt = rejectedAt;

  String? _preferredTime;
  String? get preferredTime => _$this._preferredTime;
  set preferredTime(String? preferredTime) =>
      _$this._preferredTime = preferredTime;

  String? _preferredDay;
  String? get preferredDay => _$this._preferredDay;
  set preferredDay(String? preferredDay) => _$this._preferredDay = preferredDay;

  String? _customerCity;
  String? get customerCity => _$this._customerCity;
  set customerCity(String? customerCity) => _$this._customerCity = customerCity;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  OrdersRecordBuilder() {
    OrdersRecord._initializeBuilder(this);
  }

  OrdersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _createdAt = $v.createdAt;
      _orderNo = $v.orderNo;
      _petCategory = $v.petCategory;
      _name = $v.name;
      _scheduledAt = $v.scheduledAt;
      _service = $v.service;
      _quantity = $v.quantity;
      _amount = $v.amount;
      _status = $v.status;
      _customerAddress = $v.customerAddress;
      _customerLatlng = $v.customerLatlng;
      _customerName = $v.customerName;
      _paymentStatus = $v.paymentStatus;
      _prefferedTime = $v.prefferedTime;
      _discount = $v.discount;
      _notes = $v.notes;
      _startTime = $v.startTime;
      _endTime = $v.endTime;
      _rangerName = $v.rangerName;
      _rangerPhone = $v.rangerPhone;
      _rangerProfilePicture = $v.rangerProfilePicture;
      _confirmedAt = $v.confirmedAt;
      _customerPhone = $v.customerPhone;
      _onthewayAt = $v.onthewayAt;
      _customerUid = $v.customerUid;
      _rangerUid = $v.rangerUid;
      _workingAt = $v.workingAt;
      _finishAt = $v.finishAt;
      _paidAt = $v.paidAt;
      _paymentMethod = $v.paymentMethod;
      _cancelledAt = $v.cancelledAt;
      _rate = $v.rate;
      _comment = $v.comment;
      _rejectedAt = $v.rejectedAt;
      _preferredTime = $v.preferredTime;
      _preferredDay = $v.preferredDay;
      _customerCity = $v.customerCity;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrdersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OrdersRecord;
  }

  @override
  void update(void Function(OrdersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  OrdersRecord build() => _build();

  _$OrdersRecord _build() {
    final _$result = _$v ??
        new _$OrdersRecord._(
            createdAt: createdAt,
            orderNo: orderNo,
            petCategory: petCategory,
            name: name,
            scheduledAt: scheduledAt,
            service: service,
            quantity: quantity,
            amount: amount,
            status: status,
            customerAddress: customerAddress,
            customerLatlng: customerLatlng,
            customerName: customerName,
            paymentStatus: paymentStatus,
            prefferedTime: prefferedTime,
            discount: discount,
            notes: notes,
            startTime: startTime,
            endTime: endTime,
            rangerName: rangerName,
            rangerPhone: rangerPhone,
            rangerProfilePicture: rangerProfilePicture,
            confirmedAt: confirmedAt,
            customerPhone: customerPhone,
            onthewayAt: onthewayAt,
            customerUid: customerUid,
            rangerUid: rangerUid,
            workingAt: workingAt,
            finishAt: finishAt,
            paidAt: paidAt,
            paymentMethod: paymentMethod,
            cancelledAt: cancelledAt,
            rate: rate,
            comment: comment,
            rejectedAt: rejectedAt,
            preferredTime: preferredTime,
            preferredDay: preferredDay,
            customerCity: customerCity,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
