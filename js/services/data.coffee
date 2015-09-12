angular.module('agProfile.services', [])
.provider 'agData', () ->
  useLocalData = true

  localData =
    profile:
      javascript:
        rating: 4
        text: "I'm pretty good at it"
      angular:
        rating: 4.5
        text: "Almost a master"

  useLocalData: (value) ->
    useLocalData = Boolean(value)

  $get: ($http, $q, agApi, $log, agDeferredExtender) ->
    res = {}
    createCached = (dt) ->
      obj = agDeferredExtender($q.defer())
      obj.resolve(dt)
      obj.promise

    if useLocalData
      res.get_profile = () ->
        createCached(localData)
    else
      res.get_profile = () ->
        $http.get agApi.profile

    res
