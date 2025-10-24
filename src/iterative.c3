module fib::iterative;

fn usz fibonacci(usz n)
{
    usz first = 0;
    usz second = 1;
    for (usz i = 0; i < n; i++) {
        @swap(first, second);
        second = second + first;
    }
    return first;
}
