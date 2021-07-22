#inclib "execs"
extern "C"
	declare function aallocate alias "execss"(lens as integer)as integer ptr
	declare function ddeallocate alias "uexecss"(ptrs as integer ptr,lens as integer)as integer
end extern

