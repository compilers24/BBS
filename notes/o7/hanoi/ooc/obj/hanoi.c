#include <hanoi.d>
#include <__oo2c.h>
#include <setjmp.h>

static void hanoi__WriteStep(OOC_INT16 Peg1, OOC_INT16 Peg2) {
  register OOC_INT32 i0;

  i0 = Peg1;
  Out__Int(i0, 0);
  Out__String((OOC_CHAR8*)" ---> ", 7);
  i0 = Peg2;
  Out__Int(i0, 0);
  Out__Ln();
  return;
  ;
}

static void hanoi__BuildTower(OOC_INT16 DiscNum, OOC_INT16 OrigPeg, OOC_INT16 NewPeg, OOC_INT16 TempPeg) {
  register OOC_INT32 i0,i1,i2,i3;

  i0 = DiscNum;
  i1 = i0==1;
  if (i1) goto l3;
  i0 = i0-1;
  i1 = TempPeg;
  i2 = NewPeg;
  i3 = OrigPeg;
  hanoi__BuildTower(i0, i3, i1, i2);
  hanoi__WriteStep(i3, i2);
  hanoi__BuildTower(i0, i1, i2, i3);
  goto l4;
l3:
  i0 = NewPeg;
  i1 = OrigPeg;
  hanoi__WriteStep(i1, i0);
l4:
  return;
  ;
}

void OOC_hanoi_init(void) {

  hanoi__DiscNum = 15;
  hanoi__BuildTower(15, 1, 3, 2);
  return;
  ;
}

void OOC_hanoi_destroy(void) {
}

/* --- */
