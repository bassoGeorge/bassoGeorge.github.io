angular.module('agProfile.services', [])
.provider 'agData', () ->
  useLocalData = true

  useLocalData: (value) ->
    useLocalData = Boolean(value)

  $get: ($http, $q, agApi, $log,
         agDeferredExtender, agStats) ->
    res = {}
    createCached = (dt) ->
      obj = agDeferredExtender($q.defer())
      obj.resolve(dt)
      obj.promise

    if useLocalData
      res.get_profile = () ->
        createCached(agStats)
    else
      res.get_profile = () ->
        $http.get agApi.profile

    res
