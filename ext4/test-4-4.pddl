; En aquest cas, tot i que c1 i c2 son mes interesants que c3, comprovem que
; al no arribar els diners pels dos, haura d'agafar c2 per complir la 
; restriccio del minim de dies, ja que l'hotel seu es mes barat, i tot seguit
; anar a C1 que es el que te l'interes mes alt que c2.

; step    0: START C2
;         1: SPEND-NIGHT C2 H2
;         2: GO-AGAINST C2 C1
;         3: SPEND-NIGHT C1 H1


(define (problem test-4-4)
  (:domain travel-strips)
  (:objects c1 c2 c3 - city 
            h1 h2 h3 - hotel)
  (:init (connected c1 c2) (connected c1 c3) (connected c2 c3)
         (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3)
         (not-visited c1) (not-visited c2) (not-visited c3)
         (not-started)
         (= (interest c1) 1)
         (= (interest c2) 3)
         (= (interest c3) 3)
         (= (min-days) 1)
         (= (max-days) 1)
         (= (spent-days) 0)
         (= (min-days-viatge) 2)
         (= (sum-interest) 0)
         (= (cost-travel) 0)
         (= (min-cost-travel) 0)
         (= (max-cost-travel) 1000)
         (= (price c1 c2) 100)
         (= (price c1 c3) 100)
         (= (price c2 c3) 100)
         (= (price-hotel h1 c1) 100)
         (= (price-hotel h2 c2) 50)
         (= (price-hotel h3 c3) 100))

  (:goal (and (>= (cost-travel) (min-cost-travel)) 
         (<= (min-days-viatge) 0)))

  (:metric minimize (+ (cost-travel) (* 100 (sum-interest))))
)
