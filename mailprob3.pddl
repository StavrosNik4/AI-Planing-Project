(define (problem mailProb3)
    (:domain MAIL)
    
    (:objects bob patrick p1 p2 p3 p4 p5 p6 p7 p8 p9 p10 p11 p12 p13 p14 p15 p16 p17 h1 h2 h3 b2 m1 m2 m3)
    
    (:init  (mailman bob) (mailman patrick)
            (point p1) (point p2) (point p3) (point p4) (point p5) (point p6) (point p7) (point p8) (point p9) (point p10)
            (point p11) (point p12) (point p13) (point p14) (point p15) (point p16) (point p17) 
            (box b2) 
            (house h1) (house h2) (house h3)
            (mail m1) (mail m2) (mail m3)
            (on1 h1 m1) (on1 h2 m2) (on1 h3 m3)
            
            (at patrick p2) (at bob p14)
            (on h1 p13) (on h2 p17) (on h3 p16)
            (on2 b2 p11)
            
            (road p1 p2)
            (road p2 p1) (road p2 p3) (road p2 p11) (road p2 p17)
            (road p3 p2) (road p3 p4)
            (road p4 p3) (road p4 p5) (road p4 p16)
            (road p5 p4) (road p5 p12)
            (road p6 p10) (road p6 p11) 
            (road p8 p10) (road p8 p13) 
            (road p9 p10) (road p9 p11) 
            (road p10 p6) (road p10 p8) (road p10 p9) 
            (road p11 p2) (road p11 p6) (road p11 p9) 
            (road p12 p5) 
            (road p13 p8) (road p13 p14) 
            (road p14 p13) 
            (road p15 p16) 
            (road p16 p15) (road p16 p4) 
            (road p17 p2)
          
            
            (metro p2 p3) (metro p3 p7) (metro p7 p8) (metro p8 p6) (metro p6 p2)
            (metro p6 p7)
			(metro p11 p7) (metro p7 p15) (metro p15 p4) (metro p4 p11)
			
        
    )   
    
    (:goal (and
        (in b2 m1)
        (in b2 m2)
        (in b2 m3)
    ))
)