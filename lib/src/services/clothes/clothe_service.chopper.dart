// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'clothe_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ClothesService extends ClothesService {
  _$ClothesService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ClothesService;

  @override
  Future<Response<dynamic>> getClothes() {
    final Uri $url = Uri.parse('https://localhost:8000/api/clothe');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> generateLaundry() {
    final Uri $url = Uri.parse('https://localhost:8000/api/clothe/generate');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> addClothe(
    String name,
    String material,
    String type,
    String colorway,
    List<dynamic> washingInstructions,
    int isInLaundry,
    String? picture,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/clothe/add');
    final List<PartValue> $parts = <PartValue>[
      PartValue<String>(
        'name',
        name,
      ),
      PartValue<String>(
        'material',
        material,
      ),
      PartValue<String>(
        'type',
        type,
      ),
      PartValue<String>(
        'colorway',
        colorway,
      ),
      PartValue<List<dynamic>>(
        'washing_instructions',
        washingInstructions,
      ),
      PartValue<int>(
        'is_in_laundry',
        isInLaundry,
      ),
      PartValueFile<String?>(
        'picture',
        picture,
      ),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> updateClothe(
    int clotheId,
    String name,
    String material,
    String type,
    String colorway,
    List<dynamic> washingInstructions,
    int isInLaundry,
    String? picture,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/clothe/update');
    final List<PartValue> $parts = <PartValue>[
      PartValue<int>(
        'clothe_id',
        clotheId,
      ),
      PartValue<String>(
        'name',
        name,
      ),
      PartValue<String>(
        'material',
        material,
      ),
      PartValue<String>(
        'type',
        type,
      ),
      PartValue<String>(
        'colorway',
        colorway,
      ),
      PartValue<List<dynamic>>(
        'washing_instructions',
        washingInstructions,
      ),
      PartValue<int>(
        'is_in_laundry',
        isInLaundry,
      ),
      PartValueFile<String?>(
        'picture',
        picture,
      ),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> toggleClothe(int clotheId) {
    final Uri $url = Uri.parse('https://localhost:8000/api/clothe/toggle');
    final List<PartValue> $parts = <PartValue>[
      PartValue<int>(
        'clothe_id',
        clotheId,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> deleteClothe(int clotheId) {
    final Uri $url = Uri.parse('https://localhost:8000/api/clothe/delete');
    final List<PartValue> $parts = <PartValue>[
      PartValue<int>(
        'clothe_id',
        clotheId,
      )
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
