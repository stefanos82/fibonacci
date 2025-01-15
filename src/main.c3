module fib;
import std::io;
import std::time;
import fib::recursive;
import fib::tailrecursive;
import fib::iterative;
import fib::analyticfn;
import fib::analytic;

fn void main()
{
    Clock startTime = time::clock::now();
    io::printfn("Recursive version: %d", recursive::fibonacci(30));
    io::printn();
    io::printfn("Time elapsed: %s", startTime.to_now());
    io::printn();

    startTime = time::clock::now();
    io::printfn("Tail recursive version: %d", tailrecursive::fibonacci(30, 0, 1));
    io::printn();
    io::printfn("Time elapsed: %s", startTime.to_now());
    io::printn();

    startTime = time::clock::now();
    io::printfn("Iterative version: %d", iterative::fibonacci(30));
    io::printn();
    io::printfn("Time elapsed: %s", startTime.to_now());
    io::printn();

    startTime = time::clock::now();
    io::printfn("Analytic version: %d", analytic::fibonacci(30));
    io::printn();
    io::printfn("Time elapsed: %s", startTime.to_now());
    io::printn();

    startTime = time::clock::now();
    io::printfn("Analytic (to double) version: %d", analyticfn::fibonacci(30));
    io::printn();
    io::printfn("Time elapsed: %s", startTime.to_now());
    io::printn();
}
