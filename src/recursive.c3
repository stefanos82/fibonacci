module fib::recursive;

fn usz fibonacci(usz n)
{
    if (n <= 2) return 1;
    return fibonacci(n-1) + fibonacci(n-2);
}

