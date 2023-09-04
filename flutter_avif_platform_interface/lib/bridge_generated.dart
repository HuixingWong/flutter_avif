// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`.

// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, prefer_single_quotes, prefer_const_constructors

import 'dart:convert';
import 'dart:typed_data';

import 'dart:convert';
import 'dart:typed_data';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'dart:ffi' as ffi;

abstract class FlutterAvif {
  Future<Frame> decodeSingleFrameImage(
      {required Uint8List avifBytes, dynamic hint});

  Future<AvifInfo> initMemoryDecoder(
      {required String key, required Uint8List avifBytes, dynamic hint});

  Future<bool> resetDecoder({required String key, dynamic hint});

  Future<bool> disposeDecoder({required String key, dynamic hint});

  Future<Frame> getNextFrame({required String key, dynamic hint});

  Future<Uint8List> encodeAvif(
      {required int width,
      required int height,
      required int speed,
      required int maxThreads,
      required int timescale,
      required int maxQuantizer,
      required int minQuantizer,
      required int maxQuantizerAlpha,
      required int minQuantizerAlpha,
      required List<EncodeFrame> imageSequence,
      dynamic hint});
}

class AvifInfo {
  final int width;
  final int height;
  final int imageCount;
  final double duration;

  AvifInfo({
    required this.width,
    required this.height,
    required this.imageCount,
    required this.duration,
  });
}

class EncodeFrame {
  final Uint8List data;
  final int durationInTimescale;

  EncodeFrame({
    required this.data,
    required this.durationInTimescale,
  });
}

class Frame {
  final Uint8List data;
  final double duration;
  final int width;
  final int height;

  Frame({
    required this.data,
    required this.duration,
    required this.width,
    required this.height,
  });
}

class FlutterAvifImpl extends FlutterRustBridgeBase<FlutterAvifWire>
    implements FlutterAvif {
  factory FlutterAvifImpl(ffi.DynamicLibrary dylib) =>
      FlutterAvifImpl.raw(FlutterAvifWire(dylib));

  FlutterAvifImpl.raw(FlutterAvifWire inner) : super(inner);

  Future<Frame> decodeSingleFrameImage(
          {required Uint8List avifBytes, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_decode_single_frame_image(
            port_, _api2wire_uint_8_list(avifBytes)),
        parseSuccessData: _wire2api_frame,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "decode_single_frame_image",
          argNames: ["avifBytes"],
        ),
        argValues: [avifBytes],
        hint: hint,
      ));

  Future<AvifInfo> initMemoryDecoder(
          {required String key, required Uint8List avifBytes, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_init_memory_decoder(
            port_, _api2wire_String(key), _api2wire_uint_8_list(avifBytes)),
        parseSuccessData: _wire2api_avif_info,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "init_memory_decoder",
          argNames: ["key", "avifBytes"],
        ),
        argValues: [key, avifBytes],
        hint: hint,
      ));

  Future<bool> resetDecoder({required String key, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) =>
            inner.wire_reset_decoder(port_, _api2wire_String(key)),
        parseSuccessData: _wire2api_bool,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "reset_decoder",
          argNames: ["key"],
        ),
        argValues: [key],
        hint: hint,
      ));

  Future<bool> disposeDecoder({required String key, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) =>
            inner.wire_dispose_decoder(port_, _api2wire_String(key)),
        parseSuccessData: _wire2api_bool,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "dispose_decoder",
          argNames: ["key"],
        ),
        argValues: [key],
        hint: hint,
      ));

  Future<Frame> getNextFrame({required String key, dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) =>
            inner.wire_get_next_frame(port_, _api2wire_String(key)),
        parseSuccessData: _wire2api_frame,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "get_next_frame",
          argNames: ["key"],
        ),
        argValues: [key],
        hint: hint,
      ));

  Future<Uint8List> encodeAvif(
          {required int width,
          required int height,
          required int speed,
          required int maxThreads,
          required int timescale,
          required int maxQuantizer,
          required int minQuantizer,
          required int maxQuantizerAlpha,
          required int minQuantizerAlpha,
          required List<EncodeFrame> imageSequence,
          dynamic hint}) =>
      executeNormal(FlutterRustBridgeTask(
        callFfi: (port_) => inner.wire_encode_avif(
            port_,
            _api2wire_u32(width),
            _api2wire_u32(height),
            _api2wire_i32(speed),
            _api2wire_i32(maxThreads),
            _api2wire_u64(timescale),
            _api2wire_i32(maxQuantizer),
            _api2wire_i32(minQuantizer),
            _api2wire_i32(maxQuantizerAlpha),
            _api2wire_i32(minQuantizerAlpha),
            _api2wire_list_encode_frame(imageSequence)),
        parseSuccessData: _wire2api_ZeroCopyBuffer_Uint8List,
        constMeta: const FlutterRustBridgeTaskConstMeta(
          debugName: "encode_avif",
          argNames: [
            "width",
            "height",
            "speed",
            "maxThreads",
            "timescale",
            "maxQuantizer",
            "minQuantizer",
            "maxQuantizerAlpha",
            "minQuantizerAlpha",
            "imageSequence"
          ],
        ),
        argValues: [
          width,
          height,
          speed,
          maxThreads,
          timescale,
          maxQuantizer,
          minQuantizer,
          maxQuantizerAlpha,
          minQuantizerAlpha,
          imageSequence
        ],
        hint: hint,
      ));

  // Section: api2wire
  ffi.Pointer<wire_uint_8_list> _api2wire_String(String raw) {
    return _api2wire_uint_8_list(utf8.encoder.convert(raw));
  }

  int _api2wire_i32(int raw) {
    return raw;
  }

  ffi.Pointer<wire_list_encode_frame> _api2wire_list_encode_frame(
      List<EncodeFrame> raw) {
    final ans = inner.new_list_encode_frame(raw.length);
    for (var i = 0; i < raw.length; ++i) {
      _api_fill_to_wire_encode_frame(raw[i], ans.ref.ptr[i]);
    }
    return ans;
  }

  int _api2wire_u32(int raw) {
    return raw;
  }

  int _api2wire_u64(int raw) {
    return raw;
  }

  int _api2wire_u8(int raw) {
    return raw;
  }

  ffi.Pointer<wire_uint_8_list> _api2wire_uint_8_list(Uint8List raw) {
    final ans = inner.new_uint_8_list(raw.length);
    ans.ref.ptr.asTypedList(raw.length).setAll(0, raw);
    return ans;
  }

  // Section: api_fill_to_wire

  void _api_fill_to_wire_encode_frame(
      EncodeFrame apiObj, wire_EncodeFrame wireObj) {
    wireObj.data = _api2wire_uint_8_list(apiObj.data);
    wireObj.duration_in_timescale = _api2wire_u64(apiObj.durationInTimescale);
  }
}

// Section: wire2api
Uint8List _wire2api_ZeroCopyBuffer_Uint8List(dynamic raw) {
  return raw as Uint8List;
}

AvifInfo _wire2api_avif_info(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 4)
    throw Exception('unexpected arr length: expect 4 but see ${arr.length}');
  return AvifInfo(
    width: _wire2api_u32(arr[0]),
    height: _wire2api_u32(arr[1]),
    imageCount: _wire2api_u32(arr[2]),
    duration: _wire2api_f64(arr[3]),
  );
}

bool _wire2api_bool(dynamic raw) {
  return raw as bool;
}

double _wire2api_f64(dynamic raw) {
  return raw as double;
}

Frame _wire2api_frame(dynamic raw) {
  final arr = raw as List<dynamic>;
  if (arr.length != 4)
    throw Exception('unexpected arr length: expect 4 but see ${arr.length}');
  return Frame(
    data: _wire2api_ZeroCopyBuffer_Uint8List(arr[0]),
    duration: _wire2api_f64(arr[1]),
    width: _wire2api_u32(arr[2]),
    height: _wire2api_u32(arr[3]),
  );
}

int _wire2api_u32(dynamic raw) {
  return raw as int;
}

int _wire2api_u8(dynamic raw) {
  return raw as int;
}

Uint8List _wire2api_uint_8_list(dynamic raw) {
  return raw as Uint8List;
}

// ignore_for_file: camel_case_types, non_constant_identifier_names, avoid_positional_boolean_parameters, annotate_overrides, constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.

/// generated by flutter_rust_bridge
class FlutterAvifWire implements FlutterRustBridgeWireBase {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  FlutterAvifWire(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  FlutterAvifWire.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  void wire_decode_single_frame_image(
    int port_,
    ffi.Pointer<wire_uint_8_list> avif_bytes,
  ) {
    return _wire_decode_single_frame_image(
      port_,
      avif_bytes,
    );
  }

  late final _wire_decode_single_frame_imagePtr = _lookup<
          ffi.NativeFunction<
              ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>(
      'wire_decode_single_frame_image');
  late final _wire_decode_single_frame_image =
      _wire_decode_single_frame_imagePtr
          .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_init_memory_decoder(
    int port_,
    ffi.Pointer<wire_uint_8_list> key,
    ffi.Pointer<wire_uint_8_list> avif_bytes,
  ) {
    return _wire_init_memory_decoder(
      port_,
      key,
      avif_bytes,
    );
  }

  late final _wire_init_memory_decoderPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>>('wire_init_memory_decoder');
  late final _wire_init_memory_decoder =
      _wire_init_memory_decoderPtr.asFunction<
          void Function(int, ffi.Pointer<wire_uint_8_list>,
              ffi.Pointer<wire_uint_8_list>)>();

  void wire_reset_decoder(
    int port_,
    ffi.Pointer<wire_uint_8_list> key,
  ) {
    return _wire_reset_decoder(
      port_,
      key,
    );
  }

  late final _wire_reset_decoderPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64, ffi.Pointer<wire_uint_8_list>)>>('wire_reset_decoder');
  late final _wire_reset_decoder = _wire_reset_decoderPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_dispose_decoder(
    int port_,
    ffi.Pointer<wire_uint_8_list> key,
  ) {
    return _wire_dispose_decoder(
      port_,
      key,
    );
  }

  late final _wire_dispose_decoderPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_uint_8_list>)>>('wire_dispose_decoder');
  late final _wire_dispose_decoder = _wire_dispose_decoderPtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_get_next_frame(
    int port_,
    ffi.Pointer<wire_uint_8_list> key,
  ) {
    return _wire_get_next_frame(
      port_,
      key,
    );
  }

  late final _wire_get_next_framePtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(ffi.Int64,
              ffi.Pointer<wire_uint_8_list>)>>('wire_get_next_frame');
  late final _wire_get_next_frame = _wire_get_next_framePtr
      .asFunction<void Function(int, ffi.Pointer<wire_uint_8_list>)>();

  void wire_encode_avif(
    int port_,
    int width,
    int height,
    int speed,
    int max_threads,
    int timescale,
    int max_quantizer,
    int min_quantizer,
    int max_quantizer_alpha,
    int min_quantizer_alpha,
    ffi.Pointer<wire_list_encode_frame> image_sequence,
  ) {
    return _wire_encode_avif(
      port_,
      width,
      height,
      speed,
      max_threads,
      timescale,
      max_quantizer,
      min_quantizer,
      max_quantizer_alpha,
      min_quantizer_alpha,
      image_sequence,
    );
  }

  late final _wire_encode_avifPtr = _lookup<
      ffi.NativeFunction<
          ffi.Void Function(
              ffi.Int64,
              ffi.Uint32,
              ffi.Uint32,
              ffi.Int32,
              ffi.Int32,
              ffi.Uint64,
              ffi.Int32,
              ffi.Int32,
              ffi.Int32,
              ffi.Int32,
              ffi.Pointer<wire_list_encode_frame>)>>('wire_encode_avif');
  late final _wire_encode_avif = _wire_encode_avifPtr.asFunction<
      void Function(int, int, int, int, int, int, int, int, int, int,
          ffi.Pointer<wire_list_encode_frame>)>();

  ffi.Pointer<wire_list_encode_frame> new_list_encode_frame(
    int len,
  ) {
    return _new_list_encode_frame(
      len,
    );
  }

  late final _new_list_encode_framePtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_list_encode_frame> Function(
              ffi.Int32)>>('new_list_encode_frame');
  late final _new_list_encode_frame = _new_list_encode_framePtr
      .asFunction<ffi.Pointer<wire_list_encode_frame> Function(int)>();

  ffi.Pointer<wire_uint_8_list> new_uint_8_list(
    int len,
  ) {
    return _new_uint_8_list(
      len,
    );
  }

  late final _new_uint_8_listPtr = _lookup<
      ffi.NativeFunction<
          ffi.Pointer<wire_uint_8_list> Function(
              ffi.Int32)>>('new_uint_8_list');
  late final _new_uint_8_list = _new_uint_8_listPtr
      .asFunction<ffi.Pointer<wire_uint_8_list> Function(int)>();

  void free_WireSyncReturnStruct(
    WireSyncReturnStruct val,
  ) {
    return _free_WireSyncReturnStruct(
      val,
    );
  }

  late final _free_WireSyncReturnStructPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(WireSyncReturnStruct)>>(
          'free_WireSyncReturnStruct');
  late final _free_WireSyncReturnStruct = _free_WireSyncReturnStructPtr
      .asFunction<void Function(WireSyncReturnStruct)>();

  void store_dart_post_cobject(
    DartPostCObjectFnType ptr,
  ) {
    return _store_dart_post_cobject(
      ptr,
    );
  }

  late final _store_dart_post_cobjectPtr =
      _lookup<ffi.NativeFunction<ffi.Void Function(DartPostCObjectFnType)>>(
          'store_dart_post_cobject');
  late final _store_dart_post_cobject = _store_dart_post_cobjectPtr
      .asFunction<void Function(DartPostCObjectFnType)>();
}

class wire_uint_8_list extends ffi.Struct {
  external ffi.Pointer<ffi.Uint8> ptr;

  @ffi.Int32()
  external int len;
}

class wire_EncodeFrame extends ffi.Struct {
  external ffi.Pointer<wire_uint_8_list> data;

  @ffi.Uint64()
  external int duration_in_timescale;
}

class wire_list_encode_frame extends ffi.Struct {
  external ffi.Pointer<wire_EncodeFrame> ptr;

  @ffi.Int32()
  external int len;
}

typedef DartPostCObjectFnType = ffi.Pointer<
    ffi.NativeFunction<ffi.Uint8 Function(DartPort, ffi.Pointer<ffi.Void>)>>;
typedef DartPort = ffi.Int64;
