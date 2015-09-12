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
