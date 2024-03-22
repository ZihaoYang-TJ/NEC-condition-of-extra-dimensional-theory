# NEC-condition-of-extra-dimensional-theory
These codes are used to test whether the extra-dimensional theory is consistent with observations of the universe. Related topics can be found at https://arxiv.org/abs/2005.01143v2.
We use k=6, which is 10-dimensional space-time. The current change of Newton's constant is 0.00614, and the dark energy density ratio is 0.7. If you want to check other situations, you can change it directly in the code.


When we consider the CPL model：
ode.m
You can use `ode.m` to check the NEC violation for all points in the $w_0w_a$ plane in 10-dimensional spacetime.
Select the point you want to check and just modify the values of $w_0$ and wa in the first line of code.

checkallpoints.m
Here you can directly inspect and observe the NEC compliant areas on the $w_0w_a$ plane. You just need to adjust the range in the first line of code. By the way, if the range is too large, the dark energy density is no longer approximately $0.7$

loading.....
