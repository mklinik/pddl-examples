(define (problem coffee-prob01)
  (:domain coffee)
  (:objects)
  (:init
    (not (has-water))
    (not (has-beans))
  )
  (:goal (coffee))
)
