module fib::tailrecursive;

fn int fibonacci(int n, int current, int next)
{
    if (n == 0) return current;
    return fibonacci(n-1, next, current + next);
}

