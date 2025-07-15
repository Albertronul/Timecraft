// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductDataStruct extends FFFirebaseStruct {
  ProductDataStruct({
    String? productName,
    NutrientsStruct? nutrients,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _productName = productName,
        _nutrients = nutrients,
        super(firestoreUtilData);

  // "productName" field.
  String? _productName;
  String get productName => _productName ?? '';
  set productName(String? val) => _productName = val;

  bool hasProductName() => _productName != null;

  // "nutrients" field.
  NutrientsStruct? _nutrients;
  NutrientsStruct get nutrients => _nutrients ?? NutrientsStruct();
  set nutrients(NutrientsStruct? val) => _nutrients = val;

  void updateNutrients(Function(NutrientsStruct) updateFn) {
    updateFn(_nutrients ??= NutrientsStruct());
  }

  bool hasNutrients() => _nutrients != null;

  static ProductDataStruct fromMap(Map<String, dynamic> data) =>
      ProductDataStruct(
        productName: data['productName'] as String?,
        nutrients: data['nutrients'] is NutrientsStruct
            ? data['nutrients']
            : NutrientsStruct.maybeFromMap(data['nutrients']),
      );

  static ProductDataStruct? maybeFromMap(dynamic data) => data is Map
      ? ProductDataStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'productName': _productName,
        'nutrients': _nutrients?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'productName': serializeParam(
          _productName,
          ParamType.String,
        ),
        'nutrients': serializeParam(
          _nutrients,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ProductDataStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductDataStruct(
        productName: deserializeParam(
          data['productName'],
          ParamType.String,
          false,
        ),
        nutrients: deserializeStructParam(
          data['nutrients'],
          ParamType.DataStruct,
          false,
          structBuilder: NutrientsStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ProductDataStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductDataStruct &&
        productName == other.productName &&
        nutrients == other.nutrients;
  }

  @override
  int get hashCode => const ListEquality().hash([productName, nutrients]);
}

ProductDataStruct createProductDataStruct({
  String? productName,
  NutrientsStruct? nutrients,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductDataStruct(
      productName: productName,
      nutrients: nutrients ?? (clearUnsetFields ? NutrientsStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductDataStruct? updateProductDataStruct(
  ProductDataStruct? productData, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    productData
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductDataStructData(
  Map<String, dynamic> firestoreData,
  ProductDataStruct? productData,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (productData == null) {
    return;
  }
  if (productData.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && productData.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productDataData =
      getProductDataFirestoreData(productData, forFieldValue);
  final nestedData =
      productDataData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = productData.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductDataFirestoreData(
  ProductDataStruct? productData, [
  bool forFieldValue = false,
]) {
  if (productData == null) {
    return {};
  }
  final firestoreData = mapToFirestore(productData.toMap());

  // Handle nested data for "nutrients" field.
  addNutrientsStructData(
    firestoreData,
    productData.hasNutrients() ? productData.nutrients : null,
    'nutrients',
    forFieldValue,
  );

  // Add any Firestore field values
  productData.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductDataListFirestoreData(
  List<ProductDataStruct>? productDatas,
) =>
    productDatas?.map((e) => getProductDataFirestoreData(e, true)).toList() ??
    [];
