#include once "execs.bi"
public const savemem =97
dim shared ddx as integer
dim shared ddxx as integer
public sub pprint (byval aw as integer)
	dim aww as integer
	dim z0 as zstring ptr
	aww=ddxx+aw
	z0=cast(zstring ptr,aww)
	print *z0
end sub 
public sub pcls ()
	cls
end sub 
public sub messg ()
	print "system call ver 1.0"
end sub 
public sub debugs (r0 as integer,r1 as integer,r2 as integer,r3 as integer)
	print "res:",
	print r0,
	print r1,
	print r2,
	print r3
end sub 

public function syscalls cdecl(byval r0 as integer,byval r1 as integer,byval r2 as integer,byval r3 as integer)as integer
	dim rr as integer
	if r0 = 0 then messg
	if r0 = 1 then debugs(r0,r1,r2,r3)
	if r0 = 2 then pcls()
	if r0 = 3 then pprint(r1)
	return rr
end function
public function on_runs(files as string,ax as integer,bx as integer,cx as integer,dx as integer)as integer
	dim syscallss as function (as integer,as integer,as integer,as integer)as integer
	dim mems as integer ptr
	dim n as integer
	dim f as integer
	dim sub1 as function(as integer,as integer,as integer,as integer)as integer
	dim nn as integer
	f=freefile()
	open files for binary as f
	n=lof(f)
	mems=execss(n+savemem)
	if mems <> -1 then get #f,1,*mems,n
	close f

	sub1=cast(function(as integer,as integer,as integer,as integer)as integer,mems)
	ddxx=cast(integer,mems)
	syscallss=procptr(syscalls)
	ddx=cast(integer,syscallss)
	if mems<>-1 then
		nn=sub1(ax,bx,cx,ddx)
	else
		print "error:"
	end if
	uexecss(mems,n+savemem)
	return nn
end function

dim dx as integer
color 15,5
dx=on_runs (command(1),10,20,30,dx)
system()
