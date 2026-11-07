#pragma once
#include <time.h>
struct tms { long tms_utime, tms_stime, tms_cutime, tms_cstime; };
static inline clock_t times(struct tms *b) { (void)b; return clock(); }
