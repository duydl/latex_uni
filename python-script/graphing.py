
import math
import numpy as np
import matplotlib.pyplot as plt

import matplotlib as mpl
mpl.rcParams['text.usetex']=True
mpl.rcParams['text.latex.unicode']=True

def func_cos(x, n):
    cos_approx = 0 
    for i in range(n):
        coef = (-1)**i
        num = x**(2*i)
        denom = math.factorial(2*i)
        cos_approx += ( coef ) * ( (num)/(denom) )
    return cos_approx

def func_exp(x, n):
    exp_approx = 0 
    for i in range(n):
        coef = (1)**i
        num = x**(i)
        denom = math.factorial(i)
        exp_approx += ( coef ) * ( (num)/(denom) )
    return exp_approx

angles = np.arange(-2*np.pi,2*np.pi,0.1)
p_cos = np.exp(angles)


fig, ax = plt.subplots()
ax.plot(angles,p_cos)

# add lines for between 1 and 6 terms in the Taylor Series
for i in range(1, 5):
    t_cos = [func_exp(angle,i) for angle in angles]
    ax.plot(angles,t_cos)

ax.set_ylim([-7,7])



# Move left y-axis and bottim x-axis to centre, passing through (0,0)
ax.spines['left'].set_position('center')
ax.spines['bottom'].set_position('center')

# Eliminate upper and right axes
ax.spines['right'].set_color('none')
ax.spines['top'].set_color('none')

# Show ticks in the left and lower axes only
ax.xaxis.set_ticks_position('bottom')
ax.yaxis.set_ticks_position('left')


# QT backend, show windoe maximize
manager = plt.get_current_fig_manager()
manager.window.showMaximized()

ax.set_aspect('equal')
ax.grid(True, which='both')

plt.title(r"Testing Maclaurin Expansion $e^x = \sum_{n=0}^\infty\frac{x^n}{n!}$", fontsize=20)

# set up legend
legend_lst = ["Exponential Function"]
for i in range(1, 5):
    legend_lst.append(f'Maclaurin Expansion - {i} terms')
ax.legend(legend_lst, loc=3)


plt.savefig("macs.pdf")
plt.show()
