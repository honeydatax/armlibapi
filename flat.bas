#include once "execs.bi"
dim mems as integer ptr
const savemem =97
dim n as integer
dim f as integer
dim sub1 as function(as integer,as integer,as integer,as integer)as integer
dim ax as integer
dim bx as integer
dim cx as integer
dim dx as integer
dim nn as integer
color 15,5
cls
f=freefile()
open "file.api" for binary as f
n=lof(f)
mems=execss(n+savemem)
if mems <> -1 then get #f,1,*mems,n
close f
sub1=cast(function(as integer,as integer,as integer,as integer)as integer,mems)
ax=10
bx=20

if mems<>-1 then
	nn=sub1(ax,bx,cx,dx)
	print nn
else
	print "error:"
end if
uexecss(mems,n+savemem)
