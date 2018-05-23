; Three actions, completely independent
(define (domain ordering)
  (:requirements :strips)

  (:predicates
    (p1)
    (p2)
    (p3)
  )

  (:action set-p1
    :effect
      (p1)
  )

  (:action set-p2
    :effect
      (p2)
  )

  (:action set-p3
    :effect
      (p3)
  )
)
