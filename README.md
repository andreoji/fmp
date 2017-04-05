# fmp
### How to run it

Download the [Haskell Platform](https://www.haskell.org/platform/).

Build the app in lib:

```
ghc --make sieve.hs
```

Run the app from lib:

```
./sieve
```

Run the tests from test:

```
runghc -i../lib primes_test.hs

runghc -i../lib table_test.hs

runghc -i../lib formatting_test.hs

```

To test large prime geneartion, say 50 000

```
gchi Primes.hs

takeNPrimes 50000
```

Answer: 611953
[50, 000 prime numbers](https://www2.cs.arizona.edu/icon/oddsends/primes.htm)

### What I'm pleased with

```
I used the following for definitions of Brute Force / Trial Division:
https://trans4mind.com/personal_development/mathematics/numberTheory/divisibilityBruteForce.htm

The Sieve is an Incremental Sieve as defined by the list comprehension here:
https://en.m.wikipedia.org/wiki/Sieve_of_Eratosthenes

The Sieve is 'Genuine':
https://www.cs.hmc.edu/~oneill/papers/Sieve-JFP.pdf

My intention was to do this in a language I know; Elixir / Ruby,
but lazy generation of an infinite list of Primes is more suited
to a pure functional language; hence Haskell.

I learned just enough to get this going, mainly from:
http://learnyouahaskell.com/
https://learnxinyminutes.com/docs/haskell/
https://prajitr.github.io/quick-haskell-syntax/
http://www.cantab.net/users/antoni.diller/haskell/haskell.html

I enjoyed working in Haskell. It's very different and is something
I'll be pursuing.
```

### What I'd do with it if I had more time
