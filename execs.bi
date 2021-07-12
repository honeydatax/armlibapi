#inclib "execs"
extern "C"
	declare function execss alias "execss"(lens as integer)as integer ptr
	declare function uexecss alias "uexecss"(ptrs as integer ptr,lens as integer)as integer
end extern

