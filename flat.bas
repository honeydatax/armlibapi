#include once "execs.bi"
public sub syscalls cdecl()
	print "system call ver 1.0"
end sub
public function on_runs(files as string,r0 as integer,r1 as integer,r2 as integer)as integer
	dim syscallss as sub 
	dim mems as integer ptr
	const savemem =97
	dim n as integer
	dim f as integer
	dim sub1 as function(as integer,as integer,as integer,as integer)as integer
	dim r3 as integer
	dim nn as integer
	f=freefile()
	open files for binary as f
	n=lof(f)
	mems=execss(n+savemem)
	if mems <> -1 then get #f,1,*mems,n
	close f
	sub1=cast(function(as integer,as integer,as integer,as integer)as integer,mems)
	syscallss=procptr(syscalls)
	r3=cast(integer,syscallss)
	if mems<>-1 then
		nn=sub1(r0,r1,r2,r3)
	else
		print "error:"
	end if
	uexecss(mems,n+savemem)
	return nn
end function

dim rets as integer
dim rr0 as integer
dim rr1 as integer
dim rr2 as integer
color 15,5
cls

print on_runs ("file.api",rr0,rr1,rr2)
