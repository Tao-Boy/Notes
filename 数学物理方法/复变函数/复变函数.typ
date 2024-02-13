#import "@preview/showybox:2.0.1": showybox
#set text(font: "SimSun",size: 12pt)
#set heading(numbering: "1.1")
#show math.equation: set text(weight: 400,font: "New Computer Modern Math")
#align(center+horizon,text(30pt,[复变函数]))
#pagebreak()
#set page(numbering: "1", number-align: center)
// #outline()
// #pagebreak()

= 复数
== 复数及其运算
#text(red,15pt)[复数几何]：
对一复数$z= x + i y <=> (x,y)$, 几何上可以用两点$z_1,z_2$表示:
$ k(z_2-z_1)+z_1 = z $
#showybox(
frame: (
title-color: gray.darken(30%),
border-color: gray.darken(30%),
body-color: gray.lighten(80%)
),
title: "补充"
)[
    求$sin i theta$,$cos i theta$:
    $ sin theta = frac(e^(i theta)-e^(-i theta),2i) $
    $ cos theta = frac(e^(i theta)+e^(-i theta),2) $
    代入$i theta$:
    $ sin i theta = frac(e^(-theta )-e^(theta),2i) = i (e^(theta)-e^(-theta))/2 = i sinh theta $
    $ cos i theta = frac(e^(-theta)+e^(theta),2) = cosh theta $
    同理有：
    $ sin(-theta) = i sinh i theta \ i sin theta = sinh(i theta) $
    $ cos(-theta)=cosh i theta \  cos theta = cosh i theta $
    在复变函数中, $sin , cos$和$sinh , cosh$属于"同一类型"函数
]
=== 复数及其运算习题
略
= 复数平面的拓扑
- 邻域
- 去心邻域
- 聚点
- 内点
- 外点
- 边界点
- 区域(没有边界，区域中任意两点都可以用全在区域中的折线连接)
- 闭区域(区域+边界的集合)
- 简单曲线(无重点且连续的曲线：“$infinity$”这种曲线不是简单曲线)
- 光滑曲线
- 单连通区域：区域的任意一条简单曲线包围的点都是区域的内点
- 多连通区域：非单连通区域
- 复球面（黎曼球）：一无限大的平面与一球相切于$O$点，并建立$x-y$坐标轴，在球上于$O$点对应的点称为#text(red,15pt)[极点]，极点-平面上点连线与球面相交，整个平面上的点都可以隐射在球面上，形成一个复球面，而#text(red,15pt)[无穷远点]对应于极点为一个点
= 复变函数的极限和连续
== 复变函数的极限和连续习题
#showybox(
frame: (
title-color: purple.darken(30%),
border-color: purple.darken(30%),
body-color: purple.lighten(80%)
),
title: "例题"
)[
    1.下列函数在原点是否连续：
    $ f(x)= cases(0","z=0, ("Re"z)/(abs(z))","z=0) $
    对于极限
    $ lim_(z arrow.r 0) ("Re"z)/(abs(z)) = lim_((x,y) arrow.r (0,0)) (x)/(sqrt(x^(2)+y^(2))) $
    当$y=k x$趋近时，极限为
    $ lim_((x,y) arrow.r (0,0)) plus.minus (1)/(sqrt(1+k^(2))) $
    极限不唯一
    \
    2.证明多项式$p(x)=a_0z^(n)+a_1z^(n-1)+...+a_(n)$($a_0 != 0$)在$z$平面上连续

    先证明函数$f(x)=z^(n)$连续，即极限$lim_(z arrow.r z_0) z^(n) = z_0^(n)$:

    先假定$abs(z-z_0)<1$，即$z<abs(z_0)+1=M$
    $ abs(z^(n)-z_0^(n)) & = abs((z-z_0)(z^(n-1)+z^(n-2)z_0+...+z_0^(n-1))) \ & <= abs(z-z_0)(abs(z^(n-1))+abs(z^(n-2)z_0)+...+abs(z_0^(n-2))) \ & < n M^(n-1) abs(z-z_0) $
    对于给定的$epsilon$，只需取$0<delta< min{1,(epsilon)/(n M^(n-1))}$
]

