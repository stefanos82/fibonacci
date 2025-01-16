module fib;
import std::io;
import std::time;

fn void main()
{
    Clock startTime = time::clock::now();
    io::printfn("           Recursive version [fib(30)]: %d", recursive::fibonacci(30));
    io::printfn("                          Time elapsed: %s", startTime.to_now());
    io::printn();

    startTime = time::clock::now();
    io::printfn("      Tail recursive version [fib(30)]: %d", tailrecursive::fibonacci(30, 0, 1));
    io::printfn("                          Time elapsed: %s", startTime.to_now());
    io::printn();

    startTime = time::clock::now();
    io::printfn("           Iterative version [fib(30)]: %d", iterative::fibonacci(30));
    io::printfn("                          Time elapsed: %s", startTime.to_now());
    io::printn();

    startTime = time::clock::now();
    io::printfn("            Analytic version [fib(30)]: %d", analytic::fibonacci(30));
    io::printfn("                          Time elapsed: %s", startTime.to_now());
    io::printn();

    startTime = time::clock::now();
    io::printfn("Analytic (to double) version [fib(30)]: %d", analyticfn::fibonacci(30));
    io::printfn("                          Time elapsed: %s", startTime.to_now());
    io::printn();
}
