/* This file was generated by upbc (the upb compiler) from the input 
 * file: 
 * 
 *     udpa/annotations/status.proto 
 * 
 * Do not edit -- your changes will be discarded when the file is 
 * regenerated. */ 
 
#ifndef UDPA_ANNOTATIONS_STATUS_PROTO_UPB_H_ 
#define UDPA_ANNOTATIONS_STATUS_PROTO_UPB_H_ 
 
#include "upb/msg.h" 
#include "upb/decode.h" 
#include "upb/encode.h" 
 
#include "upb/port_def.inc" 
 
#ifdef __cplusplus 
extern "C" { 
#endif 
 
struct udpa_annotations_StatusAnnotation; 
typedef struct udpa_annotations_StatusAnnotation udpa_annotations_StatusAnnotation; 
extern const upb_msglayout udpa_annotations_StatusAnnotation_msginit; 
 
typedef enum { 
  udpa_annotations_UNKNOWN = 0, 
  udpa_annotations_FROZEN = 1, 
  udpa_annotations_ACTIVE = 2, 
  udpa_annotations_NEXT_MAJOR_VERSION_CANDIDATE = 3 
} udpa_annotations_PackageVersionStatus; 
 
 
/* udpa.annotations.StatusAnnotation */ 
 
UPB_INLINE udpa_annotations_StatusAnnotation *udpa_annotations_StatusAnnotation_new(upb_arena *arena) { 
  return (udpa_annotations_StatusAnnotation *)_upb_msg_new(&udpa_annotations_StatusAnnotation_msginit, arena); 
} 
UPB_INLINE udpa_annotations_StatusAnnotation *udpa_annotations_StatusAnnotation_parse(const char *buf, size_t size, 
                        upb_arena *arena) { 
  udpa_annotations_StatusAnnotation *ret = udpa_annotations_StatusAnnotation_new(arena); 
  return (ret && upb_decode(buf, size, ret, &udpa_annotations_StatusAnnotation_msginit, arena)) ? ret : NULL; 
} 
UPB_INLINE char *udpa_annotations_StatusAnnotation_serialize(const udpa_annotations_StatusAnnotation *msg, upb_arena *arena, size_t *len) { 
  return upb_encode(msg, &udpa_annotations_StatusAnnotation_msginit, arena, len); 
} 
 
UPB_INLINE bool udpa_annotations_StatusAnnotation_work_in_progress(const udpa_annotations_StatusAnnotation *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(8, 8), bool); } 
UPB_INLINE int32_t udpa_annotations_StatusAnnotation_package_version_status(const udpa_annotations_StatusAnnotation *msg) { return *UPB_PTR_AT(msg, UPB_SIZE(0, 0), int32_t); } 
 
UPB_INLINE void udpa_annotations_StatusAnnotation_set_work_in_progress(udpa_annotations_StatusAnnotation *msg, bool value) { 
  *UPB_PTR_AT(msg, UPB_SIZE(8, 8), bool) = value; 
} 
UPB_INLINE void udpa_annotations_StatusAnnotation_set_package_version_status(udpa_annotations_StatusAnnotation *msg, int32_t value) { 
  *UPB_PTR_AT(msg, UPB_SIZE(0, 0), int32_t) = value; 
} 
 
#ifdef __cplusplus 
}  /* extern "C" */ 
#endif 
 
#include "upb/port_undef.inc" 
 
#endif  /* UDPA_ANNOTATIONS_STATUS_PROTO_UPB_H_ */ 
