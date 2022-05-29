(define (domain MAIL)
    (:requirements 
        :strips
    )
    (:predicates
        (mailman ?x) (point ?x) (house ?x) (box ?x) (mail ?x) 
        (on ?house1 ?point1) (at ?mailman1 ?point1)
        (road ?point1 ?point2) (metro ?point1 ?point2)
        (holds ?mailman1 ?mail1) (in ?box1 ?mail1)
        (on1 ?house1 ?mail1) (on2 ?box1 ?point1)
    )
    
    (:action move_M_from_A_to_B_road
        :parameters (?M ?A ?B)
        
        :precondition (and
            (road ?A ?B)
            (at ?M ?A)
        )
        
        :effect (and
            (not (at ?M ?A))
            (at ?M ?B)
        )
    
    )
    
    (:action move_M_from_A_to_B_metro
        :parameters (?M ?A ?B)
        
        :precondition (and
            (metro ?A ?B)
            (at ?M ?A)
        )
        
        :effect (and
            (not (at ?M ?A))
            (at ?M ?B)
        )
    )
    
    (:action pickup
        :parameters (?M ?H ?mail1 ?A)
        
        :precondition (and
            (at ?M ?A)
            (on ?H ?A)
            (on1 ?H ?mail1)
        )
        
        :effect(and
            (holds ?M ?mail1)
            (not (on1 ?H ?mail1))
        )
    
    )
    
    (:action drop
        :parameters (?M ?mail1 ?box1 ?A)
        
        :precondition (and
            (at  ?M ?A)
            (on2 ?box1 ?A)
            (holds ?M ?mail1)
        )
        
        :effect(and
            (not (holds ?M ?mail1))
            (in ?box1 ?mail1)
        )
    )
    
)