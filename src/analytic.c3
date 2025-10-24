module fib::analytic;

import std::math;

fn usz fibonacci(int n)
{
    double p = (1.0 + math::sqrt(5.0)) / 2.0;
    double q = 1.0 / p;
    return (usz) math::floor(((math::pow(p,n)) + math::pow(q,n)) / math::sqrt(5.0));
}
