module fib::tailrecursive;

fn usz fibonacci(usz n, usz current, usz next)
{
    if (n == 0) return current;
    return fibonacci(n-1, next, current + next);
}

