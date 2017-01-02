#include <stdarg.h>
#include "monitor.h"

int xatoi (char **str, long *res)
{
  unsigned long val;
  unsigned char c, radix, s = 0;


  while ((c = **str) == ' ') (*str)++;
  if (c == '-') {
    s = 1;
    c = *(++(*str));
  }
  if (c == '0') {
    c = *(++(*str));
    if (c <= ' ') {
      *res = 0; return 1;
    }
    if (c == 'x') {
      radix = 16;
      c = *(++(*str));
    } else {
      if (c == 'b') {
        radix = 2;
        c = *(++(*str));
      } else {
        if ((c >= '0')&&(c <= '9'))
          radix = 8;
        else
          return 0;
      }
    }
  } else {
    if ((c < '1')||(c > '9'))
      return 0;
    radix = 10;
  }
  val = 0;
  while (c > ' ') {
    if (c >= 'a') c -= 0x20;
    c -= '0';
    if (c >= 17) {
      c -= 7;
      if (c <= 9) return 0;
    }
    if (c >= radix) return 0;
    val = val * radix + c;
    c = *(++(*str));
  }
  if (s) val = -val;
  *res = val;
  return 1;
}


void xitoa (signed long val, signed char radix, signed char len)
{
  unsigned char c, r, sgn = 0, pad = ' ';
  unsigned char s[20], i = 0;
  unsigned long v;


  if (radix < 0) {
    radix = -radix;
    if (val < 0) {
      val = -val;
      sgn = '-';
    }
  }
  v = val;
  r = radix;
  if (len < 0) {
    len = -len;
    pad = '0';
  }
  if (len > 20) return;
  do {
    c = (unsigned char)(v % r);
    if (c >= 10) c += 7;
    c += '0';
    s[i++] = c;
    v /= r;
  } while (v);
  if (sgn) s[i++] = sgn;
  while (i < len)
    s[i++] = pad;
  do
    printf("%c",s[--i]);
  while (i);
}



void put_dump (const unsigned char *buff, unsigned long ofs, int cnt)
{
  unsigned char n;


  printf("%08lX ", ofs);
  for(n = 0; n < cnt; n++)
    printf(" %02X", buff[n]);
  printf(" ");
  for(n = 0; n < cnt; n++) {
    if ((buff[n] < 0x20)||(buff[n] >= 0x7F))
      printf(".");
    else
      printf("%c",buff[n]);
  }
  printf("\n");
}



