/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_605(char*, char *);
extern void execute_606(char*, char *);
extern void execute_49(char*, char *);
extern void execute_50(char*, char *);
extern void execute_51(char*, char *);
extern void execute_52(char*, char *);
extern void execute_53(char*, char *);
extern void execute_54(char*, char *);
extern void execute_55(char*, char *);
extern void execute_56(char*, char *);
extern void execute_57(char*, char *);
extern void execute_58(char*, char *);
extern void execute_59(char*, char *);
extern void execute_602(char*, char *);
extern void execute_603(char*, char *);
extern void execute_604(char*, char *);
extern void execute_48(char*, char *);
extern void execute_61(char*, char *);
extern void execute_62(char*, char *);
extern void execute_63(char*, char *);
extern void execute_64(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_154(char*, char *);
extern void execute_216(char*, char *);
extern void execute_563(char*, char *);
extern void execute_564(char*, char *);
extern void execute_572(char*, char *);
extern void execute_580(char*, char *);
extern void execute_581(char*, char *);
extern void execute_221(char*, char *);
extern void execute_223(char*, char *);
extern void execute_248(char*, char *);
extern void execute_226(char*, char *);
extern void execute_227(char*, char *);
extern void execute_251(char*, char *);
extern void execute_570(char*, char *);
extern void execute_567(char*, char *);
extern void execute_568(char*, char *);
extern void execute_576(char*, char *);
extern void execute_577(char*, char *);
extern void execute_578(char*, char *);
extern void execute_172(char*, char *);
extern void execute_173(char*, char *);
extern void execute_185(char*, char *);
extern void execute_163(char*, char *);
extern void execute_169(char*, char *);
extern void execute_170(char*, char *);
extern void execute_167(char*, char *);
extern void execute_175(char*, char *);
extern void execute_177(char*, char *);
extern void execute_179(char*, char *);
extern void execute_181(char*, char *);
extern void execute_183(char*, char *);
extern void execute_244(char*, char *);
extern void execute_245(char*, char *);
extern void execute_247(char*, char *);
extern void execute_236(char*, char *);
extern void execute_241(char*, char *);
extern void execute_242(char*, char *);
extern void execute_239(char*, char *);
extern void execute_257(char*, char *);
extern void execute_556(char*, char *);
extern void execute_557(char*, char *);
extern void execute_261(char*, char *);
extern void execute_263(char*, char *);
extern void execute_302(char*, char *);
extern void execute_303(char*, char *);
extern void execute_306(char*, char *);
extern void execute_531(char*, char *);
extern void execute_532(char*, char *);
extern void execute_547(char*, char *);
extern void execute_530(char*, char *);
extern void execute_535(char*, char *);
extern void execute_536(char*, char *);
extern void execute_269(char*, char *);
extern void execute_270(char*, char *);
extern void execute_271(char*, char *);
extern void execute_277(char*, char *);
extern void execute_295(char*, char *);
extern void execute_296(char*, char *);
extern void execute_298(char*, char *);
extern void execute_286(char*, char *);
extern void execute_292(char*, char *);
extern void execute_293(char*, char *);
extern void execute_290(char*, char *);
extern void execute_540(char*, char *);
extern void execute_319(char*, char *);
extern void execute_322(char*, char *);
extern void execute_376(char*, char *);
extern void execute_413(char*, char *);
extern void execute_414(char*, char *);
extern void execute_330(char*, char *);
extern void execute_331(char*, char *);
extern void execute_348(char*, char *);
extern void execute_349(char*, char *);
extern void execute_333(char*, char *);
extern void execute_334(char*, char *);
extern void execute_335(char*, char *);
extern void execute_336(char*, char *);
extern void execute_338(char*, char *);
extern void execute_339(char*, char *);
extern void execute_340(char*, char *);
extern void execute_341(char*, char *);
extern void execute_343(char*, char *);
extern void execute_344(char*, char *);
extern void execute_345(char*, char *);
extern void execute_346(char*, char *);
extern void execute_380(char*, char *);
extern void execute_381(char*, char *);
extern void execute_382(char*, char *);
extern void execute_385(char*, char *);
extern void execute_418(char*, char *);
extern void execute_419(char*, char *);
extern void execute_423(char*, char *);
extern void execute_466(char*, char *);
extern void execute_467(char*, char *);
extern void execute_471(char*, char *);
extern void execute_472(char*, char *);
extern void execute_477(char*, char *);
extern void execute_478(char*, char *);
extern void execute_479(char*, char *);
extern void execute_366(char*, char *);
extern void execute_367(char*, char *);
extern void execute_375(char*, char *);
extern void execute_357(char*, char *);
extern void execute_363(char*, char *);
extern void execute_364(char*, char *);
extern void execute_361(char*, char *);
extern void execute_369(char*, char *);
extern void execute_371(char*, char *);
extern void execute_373(char*, char *);
extern void execute_440(char*, char *);
extern void execute_441(char*, char *);
extern void execute_443(char*, char *);
extern void execute_431(char*, char *);
extern void execute_437(char*, char *);
extern void execute_438(char*, char *);
extern void execute_435(char*, char *);
extern void execute_498(char*, char *);
extern void execute_499(char*, char *);
extern void execute_503(char*, char *);
extern void execute_489(char*, char *);
extern void execute_495(char*, char *);
extern void execute_496(char*, char *);
extern void execute_493(char*, char *);
extern void execute_501(char*, char *);
extern void execute_553(char*, char *);
extern void execute_597(char*, char *);
extern void execute_598(char*, char *);
extern void execute_599(char*, char *);
extern void execute_600(char*, char *);
extern void execute_601(char*, char *);
extern void transaction_28(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_56(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_112(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_113(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_117(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_123(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_124(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_127(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_128(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_129(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_136(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_150(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_154(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_161(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_170(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_263(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[172] = {(funcp)execute_605, (funcp)execute_606, (funcp)execute_49, (funcp)execute_50, (funcp)execute_51, (funcp)execute_52, (funcp)execute_53, (funcp)execute_54, (funcp)execute_55, (funcp)execute_56, (funcp)execute_57, (funcp)execute_58, (funcp)execute_59, (funcp)execute_602, (funcp)execute_603, (funcp)execute_604, (funcp)execute_48, (funcp)execute_61, (funcp)execute_62, (funcp)execute_63, (funcp)execute_64, (funcp)execute_65, (funcp)execute_66, (funcp)execute_154, (funcp)execute_216, (funcp)execute_563, (funcp)execute_564, (funcp)execute_572, (funcp)execute_580, (funcp)execute_581, (funcp)execute_221, (funcp)execute_223, (funcp)execute_248, (funcp)execute_226, (funcp)execute_227, (funcp)execute_251, (funcp)execute_570, (funcp)execute_567, (funcp)execute_568, (funcp)execute_576, (funcp)execute_577, (funcp)execute_578, (funcp)execute_172, (funcp)execute_173, (funcp)execute_185, (funcp)execute_163, (funcp)execute_169, (funcp)execute_170, (funcp)execute_167, (funcp)execute_175, (funcp)execute_177, (funcp)execute_179, (funcp)execute_181, (funcp)execute_183, (funcp)execute_244, (funcp)execute_245, (funcp)execute_247, (funcp)execute_236, (funcp)execute_241, (funcp)execute_242, (funcp)execute_239, (funcp)execute_257, (funcp)execute_556, (funcp)execute_557, (funcp)execute_261, (funcp)execute_263, (funcp)execute_302, (funcp)execute_303, (funcp)execute_306, (funcp)execute_531, (funcp)execute_532, (funcp)execute_547, (funcp)execute_530, (funcp)execute_535, (funcp)execute_536, (funcp)execute_269, (funcp)execute_270, (funcp)execute_271, (funcp)execute_277, (funcp)execute_295, (funcp)execute_296, (funcp)execute_298, (funcp)execute_286, (funcp)execute_292, (funcp)execute_293, (funcp)execute_290, (funcp)execute_540, (funcp)execute_319, (funcp)execute_322, (funcp)execute_376, (funcp)execute_413, (funcp)execute_414, (funcp)execute_330, (funcp)execute_331, (funcp)execute_348, (funcp)execute_349, (funcp)execute_333, (funcp)execute_334, (funcp)execute_335, (funcp)execute_336, (funcp)execute_338, (funcp)execute_339, (funcp)execute_340, (funcp)execute_341, (funcp)execute_343, (funcp)execute_344, (funcp)execute_345, (funcp)execute_346, (funcp)execute_380, (funcp)execute_381, (funcp)execute_382, (funcp)execute_385, (funcp)execute_418, (funcp)execute_419, (funcp)execute_423, (funcp)execute_466, (funcp)execute_467, (funcp)execute_471, (funcp)execute_472, (funcp)execute_477, (funcp)execute_478, (funcp)execute_479, (funcp)execute_366, (funcp)execute_367, (funcp)execute_375, (funcp)execute_357, (funcp)execute_363, (funcp)execute_364, (funcp)execute_361, (funcp)execute_369, (funcp)execute_371, (funcp)execute_373, (funcp)execute_440, (funcp)execute_441, (funcp)execute_443, (funcp)execute_431, (funcp)execute_437, (funcp)execute_438, (funcp)execute_435, (funcp)execute_498, (funcp)execute_499, (funcp)execute_503, (funcp)execute_489, (funcp)execute_495, (funcp)execute_496, (funcp)execute_493, (funcp)execute_501, (funcp)execute_553, (funcp)execute_597, (funcp)execute_598, (funcp)execute_599, (funcp)execute_600, (funcp)execute_601, (funcp)transaction_28, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_41, (funcp)transaction_56, (funcp)transaction_112, (funcp)transaction_113, (funcp)transaction_116, (funcp)transaction_117, (funcp)transaction_123, (funcp)transaction_124, (funcp)transaction_127, (funcp)transaction_128, (funcp)transaction_129, (funcp)transaction_136, (funcp)transaction_150, (funcp)transaction_154, (funcp)transaction_161, (funcp)transaction_170, (funcp)transaction_263};
const int NumRelocateId= 172;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/instrument_shellTB_behav/xsim.reloc",  (void **)funcTab, 172);
	iki_vhdl_file_variable_register(dp + 106968);
	iki_vhdl_file_variable_register(dp + 107024);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/instrument_shellTB_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/instrument_shellTB_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 10485760) ;
    iki_set_sv_type_file_path_name("xsim.dir/instrument_shellTB_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/instrument_shellTB_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/instrument_shellTB_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}
