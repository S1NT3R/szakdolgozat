// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'advice_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$AdvicesService extends AdvicesService {
  _$AdvicesService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = AdvicesService;

  @override
  Future<Response<dynamic>> getAdvices(String type) {
    final Uri $url = Uri.parse('https://localhost:8000/api/advice');
    final List<PartValue> $parts = <PartValue>[
      PartValue<String>(
        'active',
        type,
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
  Future<Response<dynamic>> getAllAdvices() {
    final Uri $url = Uri.parse('https://localhost:8000/api/advice/all');
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<dynamic, dynamic>($request);
  }

  @override
  Future<Response<dynamic>> addAdvice(
    String type,
    String advice,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/advice/add');
    final List<PartValue> $parts = <PartValue>[
      PartValue<String>(
        'type',
        type,
      ),
      PartValue<String>(
        'advice',
        advice,
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
  Future<Response<dynamic>> deleteAdvice(int adviceId) {
    final Uri $url = Uri.parse('https://localhost:8000/api/advice/delete');
    final List<PartValue> $parts = <PartValue>[
      PartValue<int>(
        'advice_id',
        adviceId,
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
