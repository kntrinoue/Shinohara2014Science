# Shinohara2014Science
Shinohara, H. et al. Positive feedback within a kinase signaling complex functions as a switch mechanism for NF-κB activation. Science 344 6185, 760–764 (2014). https://doi.org/10.1126/science.1250020

# Mathematical model


![\begin{align*}
\frac{d[TAK1^*]}{dt} = k_{5z}[TAK1] - \frac{k_{6t}[TAK1^*]}{k_{6m}+[TAK1^*]} + \frac{k_{5ta}signal(t)[TAK1]}{k_{5ma}+[TAK1]} + \frac{k_{5tb2}[IKK2][TAK1]}{k_{5mb2}+[TAK1]} + \frac{k_{5tb3}[IKK3][TAK1]}{k_{5mb3}+[TAK1]}   (1)
\end{align*}
](https://render.githubusercontent.com/render/math?math=%5Ccolor%7Bblack%7D%5Cdisplaystyle+%5Cbegin%7Balign%2A%7D%0A%5Cfrac%7Bd%5BTAK1%5E%2A%5D%7D%7Bdt%7D+%3D+k_%7B5z%7D%5BTAK1%5D+-+%5Cfrac%7Bk_%7B6t%7D%5BTAK1%5E%2A%5D%7D%7Bk_%7B6m%7D%2B%5BTAK1%5E%2A%5D%7D+%2B+%5Cfrac%7Bk_%7B5ta%7Dsignal%28t%29%5BTAK1%5D%7D%7Bk_%7B5ma%7D%2B%5BTAK1%5D%7D+%2B+%5Cfrac%7Bk_%7B5tb2%7D%5BIKK2%5D%5BTAK1%5D%7D%7Bk_%7B5mb2%7D%2B%5BTAK1%5D%7D+%2B+%5Cfrac%7Bk_%7B5tb3%7D%5BIKK3%5D%5BTAK1%5D%7D%7Bk_%7B5mb3%7D%2B%5BTAK1%5D%7D+++%281%29%0A%5Cend%7Balign%2A%7D%0A)

![\begin{align*}
\frac{d[IKK2]}{dt} = \frac{k_{1ta}[TAK1^*][IKK1]}{k_{1ma}+[IKK1]} - \frac{k_{1tb}[IKK2]}{k_{1mb}+[IKK2]} - \frac{k_{2ta}[IKK2]}{k_{2ma}+[IKK2]} - \frac{k_{2tb}[IKK2][IKK3]}{k_{2mb}+[IKK2]} +  \frac{k_{2tc}[IKK3]}{k_{2mc}+[IKK3]}  (2)
\end{align*}
](https://render.githubusercontent.com/render/math?math=%5Ccolor%7Bblack%7D%5Cdisplaystyle+%5Cbegin%7Balign%2A%7D%0A%5Cfrac%7Bd%5BIKK2%5D%7D%7Bdt%7D+%3D+%5Cfrac%7Bk_%7B1ta%7D%5BTAK1%5E%2A%5D%5BIKK1%5D%7D%7Bk_%7B1ma%7D%2B%5BIKK1%5D%7D+-+%5Cfrac%7Bk_%7B1tb%7D%5BIKK2%5D%7D%7Bk_%7B1mb%7D%2B%5BIKK2%5D%7D+-+%5Cfrac%7Bk_%7B2ta%7D%5BIKK2%5D%7D%7Bk_%7B2ma%7D%2B%5BIKK2%5D%7D+-+%5Cfrac%7Bk_%7B2tb%7D%5BIKK2%5D%5BIKK3%5D%7D%7Bk_%7B2mb%7D%2B%5BIKK2%5D%7D+%2B++%5Cfrac%7Bk_%7B2tc%7D%5BIKK3%5D%7D%7Bk_%7B2mc%7D%2B%5BIKK3%5D%7D++%282%29%0A%5Cend%7Balign%2A%7D%0A)

![\begin{align*}
\frac{d[IKK3]}{dt} = \frac{k_{2ta}[IKK2]}{k_{2ma}+[IKK2]} + \frac{k_{2tb}[IKK2][IKK3]}{k_{2mb}+[IKK2]} - \frac{k_{2tc}[IKK3]}{k_{2mc}+[IKK3]} - \frac{k_{3t}[IKK3]}{k_{3m}+[IKK3]}  (3)
\end{align*}
](https://render.githubusercontent.com/render/math?math=%5Ccolor%7Bblack%7D%5Cdisplaystyle+%5Cbegin%7Balign%2A%7D%0A%5Cfrac%7Bd%5BIKK3%5D%7D%7Bdt%7D+%3D+%5Cfrac%7Bk_%7B2ta%7D%5BIKK2%5D%7D%7Bk_%7B2ma%7D%2B%5BIKK2%5D%7D+%2B+%5Cfrac%7Bk_%7B2tb%7D%5BIKK2%5D%5BIKK3%5D%7D%7Bk_%7B2mb%7D%2B%5BIKK2%5D%7D+-+%5Cfrac%7Bk_%7B2tc%7D%5BIKK3%5D%7D%7Bk_%7B2mc%7D%2B%5BIKK3%5D%7D+-+%5Cfrac%7Bk_%7B3t%7D%5BIKK3%5D%7D%7Bk_%7B3m%7D%2B%5BIKK3%5D%7D++%283%29%0A%5Cend%7Balign%2A%7D%0A)

![\begin{align*}
\frac{d[IKK4]}{dt} =  \frac{k_{3t}[IKK3]}{k_{3m}+[IKK3]}  -  \frac{k_{4t}[IKK4]}{k_{4m}+[IKK4]}  (4)
\end{align*}
](https://render.githubusercontent.com/render/math?math=%5Ccolor%7Bblack%7D%5Cdisplaystyle+%5Cbegin%7Balign%2A%7D%0A%5Cfrac%7Bd%5BIKK4%5D%7D%7Bdt%7D+%3D++%5Cfrac%7Bk_%7B3t%7D%5BIKK3%5D%7D%7Bk_%7B3m%7D%2B%5BIKK3%5D%7D++-++%5Cfrac%7Bk_%7B4t%7D%5BIKK4%5D%7D%7Bk_%7B4m%7D%2B%5BIKK4%5D%7D++%284%29%0A%5Cend%7Balign%2A%7D%0A)

![\begin{align*}
TAK1_{TOTAL} = 1 = [TAK1] + [TAK1^*]  (5)
\end{align*}
](https://render.githubusercontent.com/render/math?math=%5Ccolor%7Bblack%7D%5Cdisplaystyle+%5Cbegin%7Balign%2A%7D%0ATAK1_%7BTOTAL%7D+%3D+1+%3D+%5BTAK1%5D+%2B+%5BTAK1%5E%2A%5D++%285%29%0A%5Cend%7Balign%2A%7D%0A)


![\begin{align*}
IKK_{TOTAL} = 1 = [IKK1] + [IKK2] + [IKK3] + [IKK4] (6)
\end{align*}
](https://render.githubusercontent.com/render/math?math=%5Ccolor%7Bblack%7D%5Cdisplaystyle+%5Cbegin%7Balign%2A%7D%0AIKK_%7BTOTAL%7D+%3D+1+%3D+%5BIKK1%5D+%2B+%5BIKK2%5D+%2B+%5BIKK3%5D+%2B+%5BIKK4%5D+%286%29%0A%5Cend%7Balign%2A%7D%0A)
