(define (problem mailProb2)
    (:domain MAIL)
    
    (:objects bob patrick p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 h1 h2 b1 m1 m2)
    
    (:init  (mailman bob) (mailman patrick) (point p1) (point p2) (point p3) (point p4)
            (point p5) (point p6) (point p7) (point p8) (point p9) (point p10)
            (point p11) (point p12) (point p13) (point p14) (box b1) (house h1) (house h2)
            (mail m1) (mail m2) (on1 h1 m1) (on1 h2 m2) 
            
            (at patrick p1) (at bob p14) (on h1 p13) (on h2 p2) (on2 b1 p7)
            
            (road p1 p2) (road p2 p3) (road p2 p11) (road p3 p4) (road p4 p5) (road p5 p12)
            (road p6 p10) (road p6 p11) (road p8 p10) (road p8 p13) (road p9 p10) (road p9 p11) 
            (road p10 p6) (road p10 p8) (road p10 p9) (road p11 p2) (road p11 p6) (road p11 p9) 
            (road p12 p5) (road p13 p8) (road p13 p14) (road p14 p13) 
            
            (metro p2 p3) (metro p3 p7) (metro p7 p8) (metro p8 p6) (metro p6 p7)
        
    )   
    
    (:goal (and 
        (in b1 m1) 
        (in b1 m2)
    ))
)