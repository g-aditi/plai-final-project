(define (problem driverlog-problem)
  (:domain driverlog)

  (:objects
    driver1 - driver
    driver2 - driver
    truck1 - truck
    truck2 - truck
    package1 - obj
    package2 - obj
    package3 - obj
    package4 - obj
    s0 - location
    s1 - location
    s2 - location
  )

  (:init
    (at driver1 s1)
    (at driver2 s0)
    (at truck1 s1)
    (at truck2 s2)
    (in package1 truck1)
    (in package2 truck1)
    (in package3 truck2)
    (in package4 truck2)
    (at package1 s0)
    (at package2 s0)
    (at package3 s1)
    (at package4 s1)
    (empty truck1)
    (empty truck2)
    (link s0 s1)
    (link s1 s2)
    (link s0 s2)
    (path s0 s1)
    (path s1 s2)
    (path s0 s2)
  )

  (:goal
    (and (at driver2 s2)
         (at truck1 s1)
         (at truck2 s2)
         (at package1 s1)
         (at package2 s1)
         (at package3 s2)
         (at package4 s2)
    )
  )
)