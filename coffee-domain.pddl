; In order to make coffee, water and beans must be filled first
(define (domain coffee)
  (:requirements :strips)

  (:predicates
    (has-water)
    (has-beans)
    (coffee)
  )

  (:action fill-water
    :effect
      (has-water)
  )

  (:action fill-beans
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
