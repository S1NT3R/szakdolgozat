// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chore_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
final class _$ChoresService extends ChoresService {
  _$ChoresService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final Type definitionType = ChoresService;

  @override
  Future<Response<dynamic>> getChores(
    int? active,
    int? completed,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/chore');
    final List<PartValue> $parts = <PartValue>[
      PartValue<int?>(
        'active',
        active,
      ),
      PartValue<int?>(
        'completed',
        completed,
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
  Future<Response<dynamic>> addChore(
    String name,
    String? description,
    String? dueDate,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/chore/add');
    final List<PartValue> $parts = <PartValue>[
      PartValue<String>(
        'name',
        name,
      ),
      PartValue<String?>(
        'description',
        description,
      ),
      PartValue<String?>(
        'due_date',
        dueDate,
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
  Future<Response<dynamic>> updateChore(
    int id,
    String name,
    String? description,
    String? dueDate,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/chore/update');
    final List<PartValue> $parts = <PartValue>[
      PartValue<int>(
        'id',
        id,
      ),
      PartValue<String>(
        'name',
        name,
      ),
      PartValue<String?>(
        'description',
        description,
      ),
      PartValue<String?>(
        'due_date',
        dueDate,
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
  Future<Response<dynamic>> deleteChore(int id) {
    final Uri $url = Uri.parse('https://localhost:8000/api/chore/delete');
    final List<PartValue> $parts = <PartValue>[
      PartValue<int>(
        'id',
        id,
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
  Future<Response<dynamic>> toggleChore(
    int id,
    int completed,
  ) {
    final Uri $url = Uri.parse('https://localhost:8000/api/chore/toggle');
    final List<PartValue> $parts = <PartValue>[
      PartValue<int>(
        'id',
        id,
      ),
      PartValue<int>(
        'is_completed',
        completed,
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
}
