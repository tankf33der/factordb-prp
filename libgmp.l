# original repo from:
# https://git.envs.net/mpech/mpz_pil

# TYPES:
# mpz_t = 16
# mp_bitcnt_t = unsigned long int

# 5.1 Initialization Functions
(de mpz_create NIL
   (%@ "malloc" 'P 16) )
(de mpz_init (P)
   (native "libgmp.so" "__gmpz_init" NIL P) )
# 5.2 Assignment Functions
(de mpz_set_str (A B Base)
   (default Base 10)
   (native "libgmp.so" "__gmpz_set_str" NIL A B Base) )
# 5.9 Number Theoretic Functions
(de mpz_probab_prime_p (A B) # B is int
   (native "libgmp.so" "__gmpz_probab_prime_p" 'I A B) )
