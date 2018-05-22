(define (domain coffee)
  (:requirements :strips)

  (:predicates
    (has-water)
    (has-beans)
    (coffee)
  )

  (:action fill-water
    :parameters
      ()
    :precondition
      (not (has-water))
    :effect
      (has-water)
  )

  (:action fill-beans
    :parameters
      ()
    :precondition
      (not (has-beans))
    :effect
      (has-beans)
  )

  (:action make-coffee
    :parameters
      ()
    :precondition
      (and
        (has-water)
        (has-beans))
    :effect
      (coffee)
  )
)
