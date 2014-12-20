(define (problem five-cities)
  (:domain travel-strips)
  (:objects c1 c2 c3 c4 c5 - city 
            h1 h2 h3 h4 h5 - hotel)
  (:init (connected c1 c2) (connected c2 c3) (connected c3 c4)
         (connected c5 c1) (connected c4 c5)
         (hotel-in h1 c1) (hotel-in h2 c2) (hotel-in h3 c3) (hotel-in h4 c4)
         (hotel-in h5 c5)
         (not-visited c1) (not-visited c2) (not-visited c3)
         (not-visited c4) (not-visited c5)
         (not-just-landed) (not-started)
         (= (min-ciutats) 5))
  (:goal (<= (min-ciutats) 0))
)
