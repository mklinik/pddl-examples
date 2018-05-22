; Three actions, completely independent
(define (domain ordering)
  (:requirements :strips)

  (:predicates
    (p1)
    (p2)
    (p3)
  )

  (:action set-p1
    :parameters
      ()
    :precondition
      ()
    :effect
      (p1)
  )

  (:action set-p2
    :parameters
      ()
    :precondition
      ()
    :effect
      (p2)
  )

  (:action set-p3
    :parameters
      ()
    :precondition
      ()
    :effect
      (p3)
  )
)
