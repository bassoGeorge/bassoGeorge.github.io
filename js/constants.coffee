angular.module 'agProfile.constants', []
.constant 'agApi', {
  profile: 'http://api.jlabs.co/perkkx/deals'      # Temporary
}
.constant 'agDeferredExtender', (deferred) ->
  deferred.promise.success = (fn) ->
    deferred.promise.then(fn, null)
    return deferred
  deferred.promise.error = (fn) ->
    deferred.promise.then(null, fn)
    return deferred
  return deferred

.constant 'agStats', [
  {
    name: "Front End"
    categories: [
      {
        name: "Basics"
        description: "Essential front end technologies"
        skills: [
          {
            name: "Javascript"
            rating: 4
          },
          {
            name: "Html 5"
            rating: 5
          },
          {
            name: "CSS 3"
            rating: 3.5
          }
        ]
      },
      {
        name: "Advanced"
        description: "Frameworks and libraries"
        skills: [
          {
            name: "jQuery"
            rating: 3
          },
          {
            name: "AngularJs"
            rating: 4.5
          },
          {
            name: "Bootstrap (v.4)"
            rating: 5
          },
          {
            name: "UnderscoreJs"
            rating: 5
          }
        ]
      },

    ]
  },
  {
    name: "Back-End"
    categories: [
      {
        name: "Languages"
        description: "Proficiencies in various back-end languages"
        skills: [
          {
            name: "Scala"
            rating: 4.5
          },
          {
            name: "Java"
            rating: 2.5
          },
          {
            name: "Python"
            rating: 5
          },
          {
            name: "C++"
            rating: 2
          },
          {
            name: "C"
            rating: 4
          },
          {
            name: "Javascript (NodeJs)"
            rating: 4
          }
        ]
      },
      {
        name: "Frameworks and Technologies"
        description: "Proficiencies in web frameworks and other technologies"
        skills: [
          {
            name: "Play Framework (Scala)"
            rating: 4
          },
          {
            name: "Django"
            rating: 4.5
          },
          {
            name: "Express"
            rating: 3
          },
        ]
      }
    ]
  }
]
