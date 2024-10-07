#include <hanoi.oh>
#include <Out.oh>
static OOC_INT16 hanoi__DiscNum;
static void hanoi__WriteStep(OOC_INT16 Peg1, OOC_INT16 Peg2);
static void hanoi__BuildTower(OOC_INT16 DiscNum, OOC_INT16 OrigPeg, OOC_INT16 NewPeg, OOC_INT16 TempPeg);

/* run-time meta data */
static RT0__ModuleDesc _mid;
static RT0__ModuleDesc _mid = { (OOC_CHAR8*)"hanoi", (RT0__Struct[]) { NULL }, 0 };

extern void OOC_hanoi_open(RT0__Module client) {
  if (_mid.openCount == 0) {
    OOC_Out_open(&_mid);
    OOC_RT0_open(&_mid);
    OOC_Object_open(&_mid);
    OOC_Exception_open(&_mid);

    RT0__RegisterModule(&_mid);
    OOC_hanoi_init();
  }
  _mid.openCount++;
}
extern void OOC_hanoi_close(RT0__Module client) {
  _mid.openCount--;
  if (_mid.openCount == 0) { 
    OOC_hanoi_destroy();
    RT0__UnregisterModule(&_mid);

    OOC_Out_close(&_mid);
    OOC_RT0_close(&_mid);
    OOC_Object_close(&_mid);
    OOC_Exception_close(&_mid);
  }
}

/* --- */
