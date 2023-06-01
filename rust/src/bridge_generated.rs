#![allow(
    non_camel_case_types,
    unused,
    clippy::redundant_closure,
    clippy::useless_conversion,
    clippy::unit_arg,
    clippy::double_parens,
    non_snake_case,
    clippy::too_many_arguments
)]
// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.72.0.

use crate::api::*;
use core::panic::UnwindSafe;
use flutter_rust_bridge::*;
use std::ffi::c_void;
use std::sync::Arc;

// Section: imports

// Section: wire functions

fn wire_get_image_info_impl(port_: MessagePort, avif_bytes: impl Wire2Api<Vec<u8>> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_image_info",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_avif_bytes = avif_bytes.wire2api();
            move |task_callback| Ok(get_image_info(api_avif_bytes))
        },
    )
}
fn wire_init_memory_decoder_impl(
    port_: MessagePort,
    key: impl Wire2Api<String> + UnwindSafe,
    avif_bytes: impl Wire2Api<Vec<u8>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "init_memory_decoder",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_key = key.wire2api();
            let api_avif_bytes = avif_bytes.wire2api();
            move |task_callback| Ok(init_memory_decoder(api_key, api_avif_bytes))
        },
    )
}
fn wire_reset_decoder_impl(port_: MessagePort, key: impl Wire2Api<String> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "reset_decoder",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_key = key.wire2api();
            move |task_callback| Ok(reset_decoder(api_key))
        },
    )
}
fn wire_dispose_decoder_impl(port_: MessagePort, key: impl Wire2Api<String> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "dispose_decoder",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_key = key.wire2api();
            move |task_callback| Ok(dispose_decoder(api_key))
        },
    )
}
fn wire_get_next_frame_impl(port_: MessagePort, key: impl Wire2Api<String> + UnwindSafe) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "get_next_frame",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_key = key.wire2api();
            move |task_callback| Ok(get_next_frame(api_key))
        },
    )
}
fn wire_encode_avif_impl(
    port_: MessagePort,
    width: impl Wire2Api<u32> + UnwindSafe,
    height: impl Wire2Api<u32> + UnwindSafe,
    speed: impl Wire2Api<i32> + UnwindSafe,
    max_threads: impl Wire2Api<i32> + UnwindSafe,
    timescale: impl Wire2Api<u64> + UnwindSafe,
    max_quantizer: impl Wire2Api<i32> + UnwindSafe,
    min_quantizer: impl Wire2Api<i32> + UnwindSafe,
    max_quantizer_alpha: impl Wire2Api<i32> + UnwindSafe,
    min_quantizer_alpha: impl Wire2Api<i32> + UnwindSafe,
    image_sequence: impl Wire2Api<Vec<EncodeFrame>> + UnwindSafe,
) {
    FLUTTER_RUST_BRIDGE_HANDLER.wrap(
        WrapInfo {
            debug_name: "encode_avif",
            port: Some(port_),
            mode: FfiCallMode::Normal,
        },
        move || {
            let api_width = width.wire2api();
            let api_height = height.wire2api();
            let api_speed = speed.wire2api();
            let api_max_threads = max_threads.wire2api();
            let api_timescale = timescale.wire2api();
            let api_max_quantizer = max_quantizer.wire2api();
            let api_min_quantizer = min_quantizer.wire2api();
            let api_max_quantizer_alpha = max_quantizer_alpha.wire2api();
            let api_min_quantizer_alpha = min_quantizer_alpha.wire2api();
            let api_image_sequence = image_sequence.wire2api();
            move |task_callback| {
                Ok(encode_avif(
                    api_width,
                    api_height,
                    api_speed,
                    api_max_threads,
                    api_timescale,
                    api_max_quantizer,
                    api_min_quantizer,
                    api_max_quantizer_alpha,
                    api_min_quantizer_alpha,
                    api_image_sequence,
                ))
            }
        },
    )
}
// Section: wrapper structs

// Section: static checks

// Section: allocate functions

// Section: related functions

// Section: impl Wire2Api

pub trait Wire2Api<T> {
    fn wire2api(self) -> T;
}

impl<T, S> Wire2Api<Option<T>> for *mut S
where
    *mut S: Wire2Api<T>,
{
    fn wire2api(self) -> Option<T> {
        (!self.is_null()).then(|| self.wire2api())
    }
}

impl Wire2Api<i32> for i32 {
    fn wire2api(self) -> i32 {
        self
    }
}

impl Wire2Api<u32> for u32 {
    fn wire2api(self) -> u32 {
        self
    }
}
impl Wire2Api<u64> for u64 {
    fn wire2api(self) -> u64 {
        self
    }
}
impl Wire2Api<u8> for u8 {
    fn wire2api(self) -> u8 {
        self
    }
}

// Section: impl IntoDart

impl support::IntoDart for AvifInfo {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.width.into_dart(),
            self.height.into_dart(),
            self.image_count.into_dart(),
            self.duration.into_dart(),
            self.frame.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for AvifInfo {}

impl support::IntoDart for Frame {
    fn into_dart(self) -> support::DartAbi {
        vec![
            self.data.into_dart(),
            self.duration.into_dart(),
            self.width.into_dart(),
            self.height.into_dart(),
        ]
        .into_dart()
    }
}
impl support::IntoDartExceptPrimitive for Frame {}

// Section: executor

support::lazy_static! {
    pub static ref FLUTTER_RUST_BRIDGE_HANDLER: support::DefaultHandler = Default::default();
}

#[cfg(not(target_family = "wasm"))]
#[path = "bridge_generated.io.rs"]
mod io;
#[cfg(not(target_family = "wasm"))]
pub use io::*;
