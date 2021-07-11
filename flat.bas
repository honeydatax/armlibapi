#include once "execs.bi"
dim mems as byte ptr
const savemem =97
dim n as integer
dim f as integer
dim sub1 as function(as integer,as integer,as integer,as integer)as integer
dim ax as integer
dim bx as integer
dim cx as integer
dim dx as integer
'dim pPtr as integer
'dim uLen as integer

color 15,5
cls
f=freefile()
open "file.api" for binary as f
n=lof(f)
mems=allocate(n+savemem)
get #f,1,*mems,n
close f
sub1=cast(function(as integer,as integer,as integer,as integer)as integer,mems)
ax=10
bx=20
var pPtr=cast(any ptr,(cuint(mems) and (not 4095)))
var uLen=cast(any ptr,(((cuint(mems)+(n+savemem)+4095) and(not 4095))-cuint(pPtr))) 
n=execss (cast(sub ptr,pPtr),cast(integer,ulen))
if n=0 then
	n=sub1(ax,bx,cx,dx)
	print n
end if
deallocate(mems)

