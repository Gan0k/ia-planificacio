; El maxim cost es 60, i el minim de dies 1, per tant l'unic lloc que es pot
; hospedar es al hotel 3.

; step    0: START C3
;         1: SPEND-NIGHT C3 H3

(define (problem test-3-1)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2 c3 - city
              h1 h2 h3  - hotel)
    (:init  (connected c1 c2) 
            (connected c1 c3)
            (connected c2 c3)
            (hotel-in h1 c1)
            (hotel-in h2 c2)
            (hotel-in h3 c3) 
            (not-visited c1)
            (not-visited c2)
            (not-visited c3) 
            (= (price c1 c2) 100)
            (= (price c1 c3) 200)
            (= (price c2 c3) 50) 
            (= (price-hotel h1 c1) 100)
            (= (price-hotel h2 c2) 100)
            (= (price-hotel h3 c3) 50) 
            (not-started)
            (= (min-days) 1)
            (= (max-days) 4)
            (= (spent-days) 0)
            (= (min-days-viatge) 1)
            (= (cost-travel) 0)
            (= (min-cost-travel) 10)
            (= (max-cost-travel) 60 )
    )
    (:goal (and (>= (cost-travel) (min-cost-travel)) (<= (min-days-viatge) 0)))
    (:metric minimize (cost-travel))
)
