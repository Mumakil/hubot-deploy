###########################################################################
class Deployment
  constructor: (@id, @payload) ->
    @ref         = @payload.deployment.ref
    @sha         = @payload.deployment.sha.substring(0,7)
    @name        = @payload.repository.name
    @number      = @payload.deployment.id
    @repoName    = @payload.repository.full_name
    @environment = @payload.deployment.environment

exports.Deployment = Deployment

###########################################################################
class DeploymentStatus
  constructor: (@id, @payload) ->
    @ref         = @payload.deployment.ref
    @sha         = @payload.deployment.sha.substring(0,7)
    @name        = @payload.repository.name
    @status      = @payload.state
    @number      = @payload.deployment.id
    @repoName    = @payload.repository.full_name
    @environment = @payload.deployment.environment

exports.DeploymentStatus = DeploymentStatus
