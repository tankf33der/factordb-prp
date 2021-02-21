Download random 10k probable primes from [factordb](http://factordb.com/downloads.php)
and test for primality using [libgmp](https://gmplib.org).

##### Comments about prp.txt file
- had have special unknown meaning symbols '# and 'I, deleted
- had have link to `Lucas` numbers, deleted
- Windows file format (..0d0a), converted to Linux
- cut to 1024 lines

##### Comments about main.l
- `infix` evaluation by [Shunting yard](https://en.wikipedia.org/wiki/Shunting-yard_algorithm)
- after evaluation testing number must be `odd`
- `mpz_probab_prime_p()` must always return `>0`

Have fun!
