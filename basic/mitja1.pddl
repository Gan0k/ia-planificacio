(define (problem mitja1)
    (:requirements :strips :fluents)
    (:domain travel-strips)
    (:objects c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20  - city
              h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14 h15 h16 h17 h18 h19 h20 h21 h22 h23 h24 h25 h26 h27 h28 h29 h30 h31 h32 h33 h34 h35 h36 h37 h38  - hotel)
    (:init  (connected c1 c2) (connected c1 c5) (connected c1 c9) 
            (connected c1 c11) (connected c1 c13) (connected c1 c16) 
            (connected c1 c19) (connected c2 c3) (connected c2 c4) 
            (connected c2 c5) (connected c2 c6) (connected c2 c7) 
            (connected c2 c9) (connected c2 c10) (connected c2 c11) 
            (connected c2 c12) (connected c2 c14) (connected c2 c18) 
            (connected c2 c19) (connected c2 c20) (connected c3 c1) 
            (connected c3 c4) (connected c3 c6) (connected c3 c15) 
            (connected c3 c18) (connected c4 c1) (connected c4 c5) 
            (connected c4 c8) (connected c4 c9) (connected c4 c11) 
            (connected c4 c12) (connected c4 c13) (connected c4 c18) 
            (connected c4 c20) (connected c5 c3) (connected c5 c7) 
            (connected c5 c8) (connected c5 c11) (connected c5 c13) 
            (connected c5 c14) (connected c5 c17) (connected c5 c18) 
            (connected c5 c20) (connected c6 c1) (connected c6 c4) 
            (connected c6 c5) (connected c6 c7) (connected c6 c8) 
            (connected c6 c9) (connected c6 c13) (connected c6 c16) 
            (connected c6 c19) (connected c7 c1) (connected c7 c3) 
            (connected c7 c4) (connected c7 c8) (connected c7 c9) 
            (connected c7 c11) (connected c7 c12) (connected c7 c13) 
            (connected c7 c14) (connected c7 c15) (connected c7 c19) 
            (connected c7 c20) (connected c8 c1) (connected c8 c2) 
            (connected c8 c3) (connected c8 c9) (connected c8 c10) 
            (connected c8 c13) (connected c8 c15) (connected c8 c17) 
            (connected c8 c20) (connected c9 c3) (connected c9 c5) 
            (connected c9 c10) (connected c9 c11) (connected c9 c12) 
            (connected c9 c14) (connected c9 c15) (connected c9 c17) 
            (connected c10 c1) (connected c10 c3) (connected c10 c4) 
            (connected c10 c5) (connected c10 c6) (connected c10 c7) 
            (connected c10 c13) (connected c10 c14) (connected c10 c15) 
            (connected c10 c16) (connected c11 c3) (connected c11 c6) 
            (connected c11 c8) (connected c11 c10) (connected c11 c14) 
            (connected c11 c15) (connected c11 c16) (connected c11 c19) 
            (connected c11 c20) (connected c12 c1) (connected c12 c3) 
            (connected c12 c5) (connected c12 c6) (connected c12 c8) 
            (connected c12 c10) (connected c12 c11) (connected c12 c13) 
            (connected c12 c14) (connected c12 c15) (connected c12 c18) 
            (connected c12 c19) (connected c12 c20) (connected c13 c2) 
            (connected c13 c3) (connected c13 c9) (connected c13 c11) 
            (connected c13 c16) (connected c13 c17) (connected c13 c19) 
            (connected c13 c20) (connected c14 c1) (connected c14 c3) 
            (connected c14 c4) (connected c14 c6) (connected c14 c8) 
            (connected c14 c13) (connected c14 c15) (connected c14 c17) 
            (connected c14 c18) (connected c14 c19) (connected c15 c1) 
            (connected c15 c2) (connected c15 c4) (connected c15 c5) 
            (connected c15 c6) (connected c15 c13) (connected c15 c18) 
            (connected c16 c2) (connected c16 c3) (connected c16 c4) 
            (connected c16 c5) (connected c16 c7) (connected c16 c8) 
            (connected c16 c9) (connected c16 c12) (connected c16 c14) 
            (connected c16 c15) (connected c16 c18) (connected c16 c19) 
            (connected c17 c1) (connected c17 c2) (connected c17 c3) 
            (connected c17 c4) (connected c17 c6) (connected c17 c7) 
            (connected c17 c10) (connected c17 c11) (connected c17 c12) 
            (connected c17 c15) (connected c17 c16) (connected c17 c18) 
            (connected c17 c20) (connected c18 c1) (connected c18 c6) 
            (connected c18 c7) (connected c18 c8) (connected c18 c9) 
            (connected c18 c10) (connected c18 c11) (connected c18 c13) 
            (connected c18 c19) (connected c18 c20) (connected c19 c3) 
            (connected c19 c4) (connected c19 c5) (connected c19 c8) 
            (connected c19 c9) (connected c19 c10) (connected c19 c15) 
            (connected c19 c17) (connected c20 c1) (connected c20 c3) 
            (connected c20 c6) (connected c20 c9) (connected c20 c10) 
            (connected c20 c14) (connected c20 c15) (connected c20 c16) 
            (connected c20 c19) (hotel-in h1 c1) (hotel-in h2 c1) (hotel-in h3 c2) 
            (hotel-in h4 c2) (hotel-in h5 c2) (hotel-in h6 c3) 
            (hotel-in h7 c4) (hotel-in h8 c5) (hotel-in h9 c5) 
            (hotel-in h10 c6) (hotel-in h11 c6) (hotel-in h12 c6) 
            (hotel-in h13 c7) (hotel-in h14 c7) (hotel-in h15 c8) 
            (hotel-in h16 c8) (hotel-in h17 c8) (hotel-in h18 c9) 
            (hotel-in h19 c9) (hotel-in h20 c9) (hotel-in h21 c10) 
            (hotel-in h22 c11) (hotel-in h23 c12) (hotel-in h24 c12) 
            (hotel-in h25 c13) (hotel-in h26 c14) (hotel-in h27 c15) 
            (hotel-in h28 c15) (hotel-in h29 c16) (hotel-in h30 c16) 
            (hotel-in h31 c17) (hotel-in h32 c18) (hotel-in h33 c19) 
            (hotel-in h34 c19) (hotel-in h35 c19) (hotel-in h36 c20) 
            (hotel-in h37 c20) (hotel-in h38 c20) (not-visited c1) (not-visited c2) (not-visited c3) 
            (not-visited c4) (not-visited c5) (not-visited c6) 
            (not-visited c7) (not-visited c8) (not-visited c9) 
            (not-visited c10) (not-visited c11) (not-visited c12) 
            (not-visited c13) (not-visited c14) (not-visited c15) 
            (not-visited c16) (not-visited c17) (not-visited c18) 
            (not-visited c19) (not-visited c20) (not-started) (not-just-landed) (= (min-ciutats) 4)

    )
    (:goal (<= (min-ciutats) 0))
)
