(define (domain travel-strips)
  (:requirements :strips :fluents)
  (:types city hotel)
  (:predicates (in ?x - city) (visited ?x - city) (not-visited ?x - city)
           (just-landed)
           (not-just-landed)
           (connected ?x - city ?y - city)
           (hotel-in ?hotel - hotel ?city - city))
  (:functions (min-ciutats))

  (:action spend-night
    :parameters (?x - city ?h - hotel)
    :precondition (and (in ?x) (hotel-in ?h ?x) (just-landed))
    :effect (and (in ?x) (not-just-landed) (not (just-landed)) (decrease (min-ciutats) 1)))

     
  (:action go-along
    :parameters (?x - city ?y - city)
    :precondition (and (in ?x) (not-visited ?y)
               (connected ?x ?y) (not-just-landed))
    :effect (and (not (in ?x)) (in ?y) (visited ?y) (not (not-visited ?y)) 
            (not (not-just-landed)) (just-landed)))

  (:action go-against
    :parameters (?x - city ?y - city)
    :precondition (and (in ?x) (not-visited ?y)
               (connected ?y ?x) (not-just-landed))
    :effect (and (not (in ?x)) (in ?y) (visited ?y) (not (not-visited ?y)) 
            (not (not-just-landed)) (just-landed)))

 )
