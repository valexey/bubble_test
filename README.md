# bubble_test
The simple benchmark via bubble sort algo for different languages.

Tested languages:
* Ocaml (4.03.0)
* Haskell (ghc 8.0.1)
* C++ (clang 3.8.1)
* Component Pascal / Blackbox (Blackbox 1.7rc1 via Wine)
* Go (go 1.7)

Environment:
```
OS: Linux 4.7.2-1-ARCH #1 SMP PREEMPT Sat Aug 20 23:02:56 CEST 2016 x86_64 GNU/Linux
```


CPU:
```
vendor_id	: GenuineIntel
cpu family	: 6
model		  : 69
model name	  : Intel(R) Core(TM) i5-4250U CPU @ 1.30GHz
stepping	  : 1
microcode	  : 0x16
cpu MHz		    : 1900.115
cache size	    : 3072 KB
physical id	    : 0
siblings : 4
core id	   : 0
cpu cores  : 2
apicid	     : 0
initial apicid : 0
fpu	       : yes
fpu_exception  : yes
cpuid level    : 13
wp    	       : yes
flags	       	 : fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush dts acpi mmx fxsr sse sse2 ss ht tm pbe syscall nx pdpe1gb rdtscp lm constant_tsc arch_perfmon pebs bts rep_good nopl xtopology nonstop_tsc aperfmperf eagerfpu pni pclmulqdq dtes64 monitor ds_cpl vmx est tm2 ssse3 sdbg fma cx16 xtpr pdcm pcid sse4_1 sse4_2 x2apic movbe popcnt tsc_deadline_timer aes xsave avx f16c rdrand lahf_lm abm epb tpr_shadow vnmi flexpriority ept vpid fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid xsaveopt dtherm ida arat pln pts
bugs		   :
bogomips	   : 3792.01
clflush size	   : 64
cache_alignment	   : 64
address sizes	   : 39 bits physical, 48 bits virtual
```

Build options:
* Haskell: ghc -O3
* Ocaml: ocamlopt bigarray.cmxa the_source.ml -nodynlink -O3
* C++: clang++ -O3 buble.cpp
* Component Pascal: with and without boundaries check (see the source file)
* Go: go build

Results:

Language | Result (sec)
-------- | ------------
ocaml safe bigarray | 3.0
ocaml unsafe bigarray | 1.03
haskell boxed array   | 11.4
haskell unboxed array | 2.43
haskell unsafe array  | 2.14
C++ std::vector       | 0.8
Component Pascal boundaries checks on | 4.5
Component Pascal boundaries checks off | 3.4
Go | 1.63




First Header | Second Header
------------ | -------------
Content from cell 1 | Content from cell 2
Content in the first column | Content in the second column