org 0000h
mov p1,#00001111b
scan:
jnb p1.0,use1
jnb p1.1,use2
jnb p1.2,use3
jnb p1.3,use4
use1:
lcall delay10
jnb p1.0, scan
mov p1,#00h
sjmp scan
use2:
lcall delay10
jnb p1.1, scan
mov p1,#01h
sjmp scan
use3:
lcall delay10
jnb p1.2, scan
mov p1,#10h
sjmp scan
use4:
lcall delay10
jnb p1.3, scan
mov p1,#11h
sjmp scan
delay10:
mov r4,152
jj:
mov tmod,#00000001b
mov tl0,#00h
mov th0,#00h
setb tr0
djnz r4,jj
ret




