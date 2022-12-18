set term postscript eps enhanced dashed color 'Times-Roman' 22 lw 2
set fit v4 quiet errorvariables noprescale
#et ylabel 'fit label'
set pointsize 2
unset key
f(x)=a
fit f(x) 'conn.dat' u 1:5:6 via a
print a,a_err/FIT_STDFIT
g(x)=b
fit g(x) 'disc.dat' u 1:5:6 via b
print b,b_err/FIT_STDFIT
h(x)=c
fit h(x) 'all.dat' u 1:5:6 via c
print c,c_err/FIT_STDFIT
set xtics 0.2
set size 0.5,1
set yrange[0:8]
set out 'con.eps'
set xlabel '{/Symbol a}_E-{/Symbol a}_{FW}=0.81(10)'
set ytics('c3a' 1,'c3b' 2,'c3c' 3,'cqb' 4,'cqc' 5,'ccb' 6,'ccc' 7)
set object 1 rect from  a-a_err/FIT_STDFIT,0 to a+a_err/FIT_STDFIT,15
set object 1 rect fc rgb "grey" fillstyle solid 0.6 noborder
set arrow 1 from a, graph 0 to a, graph 1 nohead lt 0 lw 2
plot 'conn3w.dat' u 5:1:6 w xe lw 2, 'conn1w.dat' u 5:1:6 w xe lw 2
set out 'dis.eps'
set yrange[7:15]
set ytics('d3a' 8,'d3b' 9,'d3c' 10,'dqb' 11,'dqc' 12,'dcb' 13,'dcc' 14)
set object 1 rect from  b-b_err/FIT_STDFIT,0 to b+b_err/FIT_STDFIT,15
set object 1 rect fc rgb "grey" fillstyle solid 0.6 noborder
set arrow 1 from b, graph 0 to b, graph 1 nohead lt 0 lw 2
set xrange[-2.2:4.2]
set xtics 1
set xlabel '{/Symbol a}_E-{/Symbol a}_{FW}=0.73(19)'
plot 'all3w.dat' u 5:1:6 w xe lw 2 lc 3 lt 3, 'all1w.dat' u 5:1:6 w xe lw 2 lc 4 lt 4
set out 'all.eps'
set yrange[0:15]
set ytics('c3a' 1,'c3b' 2,'c3c' 3,'cqb' 4,'cqc' 5,'ccb' 6,'ccc' 7,'d3a' 8,'d3b' 9,'d3c' 10,'dqb' 11,'dqc' 12,'dcb' 13,'dcc' 14)
set object 1 rect from  c-c_err/FIT_STDFIT,0 to c+c_err/FIT_STDFIT,15
set object 1 rect fc rgb "grey" fillstyle solid 0.6 noborder
set arrow 1 from c, graph 0 to c, graph 1 nohead lt 0 lw 2
set xlabel '{/Symbol a}_E-{/Symbol a}_{FW}=0.796(89)'
plot 'conn3w.dat' u 5:1:6 w xe lw 2, 'conn1w.dat' u 5:1:6 w xe lw 2, 'all3w.dat' u 5:1:6 w xe lw 2, 'all1w.dat' u 5:1:6 w xe lw 2
