import numpy as np
import sympy as sp

def jacobiano(f1,f2,x0,y0):
   f1x = sp.diff(f1,x)
   f1y = sp.diff(f1,y)
 	   f2x = sp.diff(f2,x)
   f2y = sp.diff(f2,y)
   return np.array([[f1x.subs([(x,x0),(y,y0)]), f1y.subs([(x,x0),(y,y0)])],[f2x.subs([(x,x0),(y,y0)]),f2y.subs([(x,x0),(y,y0)])]],dtype='float')
def sistemaNL(expr1, expr2,x0,y0):
   i = 0
   while True:
       i += 1
       x, y = sp.symbols('x y')
       jac = jacobiano(expr1,expr2,x0,y0)
       func = np.array([[expr1.subs([(x,x0),(y,y0)])],[expr2.subs([(x,x0),(y,y0)])]],dtype='float')
       sol = np.linalg.solve(jac,func)
       x0 = x0 - sol[0]
       y0 = y0 - sol[1]
       fx0 = expr1.subs([(x,x0),(y,y0)])
       fy0 = expr2.subs([(x,x0),(y,y0)])
       if abs(max(sol[0],sol[1]))<10**-6 or abs(max(fx0,fy0))<10**-6:
           break
   print(i)
   return np.array([[x0],[y0]],dtype='float')

x,y = sp.symbols('x y')
entrada1 = input("Entre com f(x,y): ")
entrada2 = input("Entre com g(x,y): ")
expr1 = sp.sympify(entrada1)
expr2 = sp.sympify(entrada2)
x0 = 1
y0 = -1
print(sistemaNL(expr1,expr2,x0,y0))

