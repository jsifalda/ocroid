module.exports = (dic, logger) ->
	
	dic.register 'DIC', dic
	dic.register 'Logger', logger

	dic.service 'Observer', require '../../lib/client/shz/src/state/Observer'
