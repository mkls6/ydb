/* This file was generated by upbc (the upb compiler) from the input 
 * file: 
 * 
 *     udpa/annotations/versioning.proto 
 * 
 * Do not edit -- your changes will be discarded when the file is 
 * regenerated. */ 
 
#ifndef UDPA_ANNOTATIONS_VERSIONING_PROTO_UPB_H_ 
#define UDPA_ANNOTATIONS_VERSIONING_PROTO_UPB_H_ 
 
#include "upb/msg.h" 
#include "upb/decode.h" 
#include "upb/encode.h" 
 
#include "upb/port_def.inc" 
 
#ifdef __cplusplus 
extern "C" { 
#endif 
 
struct udpa_annotations_VersioningAnnotation; 
typedef struct udpa_annotations_VersioningAnnotation udpa_annotations_VersioningAnnotation; 
extern const upb_msglayout udpa_annotations_VersioningAnnotation_msginit; 
 
 
/* udpa.annotations.VersioningAnnotation */ 
 
UPB_INLINE udpa_annotations_VersioningAnnotation *udpa_annotations_VersioningAnnotation_new(upb_arena *arena) { 
  return (udpa_annotations_VersioningAnnotation *)_upb_msg_new(&udpa_annotations_VersioningAnnotation_msginit, arena); 
} 
UPB_INLINE udpa_annotations_VersioningAnnotation *udpa_annotations_VersioningAnnotation_parse(const char *buf, size_t size, 
                        upb_arena *arena) { 
  udpa_annotations_VersioningAnnotation *ret = udpa_annotations_VersioningAnnotation_new(arena); 
  return (ret && upb_decode(buf, size, ret, &udpa_annotations_VersioningAnnotation_msginit, arena)) ? ret : NULL; 
} 
UPB_INLINE char *udpa_annotations_VersioningAnnotation_serialize(const udpa_annotations_VersioningAnnotation *msg, upb_arena *arena, size_t *len) { 
  return upb_encode(msg, &udpa_annotations_VersioningAnnotation_msginit, arena, len); 
} 
 
UPB_INLINE upb_strview udpa_annotations_VersioningAnnotation_previous_message_type(const udpa_annotations_VersioningAnnotation *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(0, 0), upb_strview); } 
 
UPB_INLINE void udpa_annotations_VersioningAnnotation_set_previous_message_type(udpa_annotations_VersioningAnnotation *msg, upb_strview value) { 
  *UPB_PTR_AT(msg, UPB_SIZE(0, 0), upb_strview) = value; 
} 
 
#ifdef __cplusplus 
}  /* extern "C" */ 
#endif 
 
#include "upb/port_undef.inc" 
 
#endif  /* UDPA_ANNOTATIONS_VERSIONING_PROTO_UPB_H_ */ 
