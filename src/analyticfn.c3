module fib::analyticfn;

import std::math;

fn int fibonacci(int n)
{
    double fln = n;
    double p = (1.0 + math::sqrt(5.0)) / 2.0;
    double q = 1.0 / p;
    return (int) math::floor(((math::pow(p,fln)) + math::pow(q,fln)) / math::sqrt(5.0));
}
