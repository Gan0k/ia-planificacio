(define (domain travel-strips)
  (:requirements :strips :typing :fluents)
  (:types city hotel)
  (:predicates (in ?x - city) (visited ?x - city) (not-visited ?x - city)
           (connected ?x - city ?y - city)
           (hotel-in ?hotel - hotel ?city - city)
           (not-started))
  (:functions (min-days) 
              (max-days)
              (spent-days)
              (min-days-viatge)
              (num-cities)
              (sum-interest)
              (interest ?x - city))

  (:action start
    :parameters (?x - city)
    :precondition (not-started)
    :effect (and (in ?x) (not (not-started)) 
            (visited ?x) (not (not-visited ?x)) (decrease (spent-days) (spent-days))))

  (:action spend-night
    :parameters (?x - city ?h - hotel)
    :precondition (and (in ?x) (hotel-in ?h ?x) (< (spent-days) (max-days)))
    :effect (and (in ?x) (increase (spent-days) 1) (decrease (min-days-viatge) 1)))

     
  (:action go-along
    :parameters (?x - city ?y - city)
    :precondition (and (in ?x) (not-visited ?y)
               (connected ?x ?y) (>= (spent-days) (min-days)))
    :effect (and (not (in ?x)) (in ?y) (visited ?y) (not (not-visited ?y)) 
            (decrease (spent-days) (spent-days))
            (increase (num-cities) 1)
            (increase (sum-interest) (interest ?y))))

  (:action go-against
    :parameters (?x - city ?y - city)
    :precondition (and (in ?x) (not-visited ?y)
               (connected ?y ?x) (>= (spent-days) (min-days)))
    :effect (and (not (in ?x)) (in ?y) (visited ?y) (not (not-visited ?y)) 
            (decrease (spent-days) (spent-days))))

 )
