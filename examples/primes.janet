# Return an array of primes. This is a trivial and extremely naive algorithm.

(defn primes
  "Returns a list of prime numbers less than n."
  [n]
  (def list @[])
  (loop [i :range [2 n]]
    (var isprime? true)
    (def len (length list))
    (loop [j :range [0 len]]
      (def trial (get list j))
      (if (zero? (% i trial)) (:= isprime? false)))
    (if isprime? (array.push list i)))
  list)