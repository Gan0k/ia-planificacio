(define (problem unsat)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2  - city
              h1 h2  - hotel)
    (:init  (connected c1 c2) (hotel-in h1 c1) (hotel-in h2 c2) (not-visited c1) (not-visited c2) (not-started) (= (min-days) 1) (= (max-days) 1) (= (spent-days) 0) (= (min-days-viatge) 5)

    )
    (:goal (<= (min-days-viatge) 0))
)
