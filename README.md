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

Sample Output for first 10 primes:

```
|  | 2| 3| 5| 7| 11| 13| 17| 19| 23| 29|
| 2| 4| 6| 10| 14| 22| 26| 34| 38| 46| 58|
| 3| 6| 9| 15| 21| 33| 39| 51| 57| 69| 87|
| 5| 10| 15| 25| 35| 55| 65| 85| 95| 115| 145|
| 7| 14| 21| 35| 49| 77| 91| 119| 133| 161| 203|
| 11| 22| 33| 55| 77| 121| 143| 187| 209| 253| 319|
| 13| 26| 39| 65| 91| 143| 169| 221| 247| 299| 377|
| 17| 34| 51| 85| 119| 187| 221| 289| 323| 391| 493|
| 19| 38| 57| 95| 133| 209| 247| 323| 361| 437| 551|
| 23| 46| 69| 115| 161| 253| 299| 391| 437| 529| 667|
| 29| 58| 87| 145| 203| 319| 377| 493| 551| 667| 841|
```

Run the tests from test:

```
runghc -i../lib primes_test.hs

runghc -i../lib table_test.hs

runghc -i../lib formatting_test.hs

```

To test large prime generation, say 50 000:

```
From lib:

ghci Primes.hs

takeNPrimes 50000
```

The last prime in the list should be:

```
611953
```

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

```
The app is currently one shot, then you need to run it again.
IO in Haskell is done via Monads, and I didn't want to get too
into that at this juncture.

I wrote the driver in the interactive prompt, so there's no tests
around it. Testing around IO was again going into Monad territory.

I only skimmed HUnit; so tests run at the individual module level.
Should really be able to run them for the project.
```
