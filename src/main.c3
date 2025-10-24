module fib;
import std::io;
import std::time;

fn void main()
{
    var $fiboNum = 45;
    Clock startTime = time::clock::now();
    io::printfn("           Recursive version [fib(%d)]: %d", $fiboNum, recursive::fibonacci($fiboNum));
    io::printfn("                          Time elapsed: %s", startTime.to_now());
    io::printn();

    startTime = time::clock::now();
    io::printfn("      Tail recursive version [fib(%d)]: %d", $fiboNum, tailrecursive::fibonacci($fiboNum, 0, 1));
    io::printfn("                          Time elapsed: %s", startTime.to_now());
    io::printn();

    startTime = time::clock::now();
    io::printfn("           Iterative version [fib(%d)]: %d", $fiboNum, iterative::fibonacci($fiboNum));
    io::printfn("                          Time elapsed: %s", startTime.to_now());
    io::printn();

    startTime = time::clock::now();
    io::printfn("            Analytic version [fib(%d)]: %d", $fiboNum, analytic::fibonacci($fiboNum));
    io::printfn("                          Time elapsed: %s", startTime.to_now());
    io::printn();

    startTime = time::clock::now();
    io::printfn("Analytic (to double) version [fib(%d)]: %d", $fiboNum, analyticfn::fibonacci($fiboNum));
    io::printfn("                          Time elapsed: %s", startTime.to_now());
    io::printn();
}
