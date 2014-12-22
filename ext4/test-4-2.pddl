(define (problem test-4-2)
  (:domain travel-strips)
  (:objects c1 c2 - city 
            h1 h2 - hotel)
  (:init 
         (hotel-in h1 c1) (hotel-in h2 c2)
         (not-visited c1) (not-visited c2)
         (not-started)
         (= (interest c1) 1)
         (= (interest c2) 3)
         (= (min-days) 1)
         (= (max-days) 1)
         (= (spent-days) 0)
         (= (min-days-viatge) 1)
         (= (sum-interest) 0)
         (= (cost-travel) 0)
         (= (min-cost-travel) 100)
         (= (max-cost-travel) 300)
         (= (price-hotel h1 c1) 105)
         (= (price-hotel h2 c2) 100))

  (:goal (and (>= (cost-travel) (min-cost-travel)) 
         (<= (min-days-viatge) 0)))

  (:metric minimize (+ (cost-travel) (* 100 (sum-interest))))
)
