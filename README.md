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

```
Enter the number.
```

```
Enter either primes or fibs for the sequence.
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

Sample Output for first 10 fibs:

```
|  | 1| 1| 2| 3| 5| 8| 13| 21| 34| 55|
| 1| 1| 1| 2| 3| 5| 8| 13| 21| 34| 55|
| 1| 1| 1| 2| 3| 5| 8| 13| 21| 34| 55|
| 2| 2| 2| 4| 6| 10| 16| 26| 42| 68| 110|
| 3| 3| 3| 6| 9| 15| 24| 39| 63| 102| 165|
| 5| 5| 5| 10| 15| 25| 40| 65| 105| 170| 275|
| 8| 8| 8| 16| 24| 40| 64| 104| 168| 272| 440|
| 13| 13| 13| 26| 39| 65| 104| 169| 273| 442| 715|
| 21| 21| 21| 42| 63| 105| 168| 273| 441| 714| 1155|
| 34| 34| 34| 68| 102| 170| 272| 442| 714| 1156| 1870|
| 55| 55| 55| 110| 165| 275| 440| 715| 1155| 1870| 3025|
```
Run the tests from test:

```
runghc -i../lib primes_test.hs

runghc -i../lib fibs_test.hs

runghc -i../lib table_test.hs

runghc -i../lib formatting_test.hs

runghc -i../lib maths_test.hs

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

### Fibonacci and other work

```
The app has been extended work with a Fibonacci sequence.
Introducing this change was relatively straight forward in
terms of design.

There was some discussion around the set difference operator
(\\) used by primes; namely a lack of testing and where this
operator should reside. As everyting is a function in Haskell
it dawned on me to simply export the operator (as with any 
function in Haskell) to enable testing.

The difference operator now resides in the Maths module.
```
