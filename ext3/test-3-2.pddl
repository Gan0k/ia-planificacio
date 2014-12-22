; El maxim cost es 200, i com s'han d'estar minim dos dies i a cada ciutat
; maxim un dia, l'unica solucio res anar a la ciutat 2, i de la 2 a la 3
; ja que es el viatge mes barat i passar una nit a la 3.

; step    0: START C3
;         1: SPEND-NIGHT C3 H3
;         2: GO-AGAINST C3 C2
;         3: SPEND-NIGHT C2 H2


(define (problem test-3-2)
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
            (= (max-days) 1)
            (= (spent-days) 0)
            (= (min-days-viatge) 2)
            (= (cost-travel) 0)
            (= (min-cost-travel) 10)
            (= (max-cost-travel) 200 )
    )
    (:goal (and (>= (cost-travel) (min-cost-travel)) (<= (min-days-viatge) 0)))
    (:metric minimize (cost-travel))
)
