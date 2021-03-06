'use strict'
# import module class
Module = require 'scripts/BaseClasses/BaseModule.coffee'
# Export instance of new module
module.exports = myModule = new Module
	# module id for registering with SOCRAT
	id = 'socrat_analysis_mymodule'
	components:
		services:
			'socrat_analysis_mymodule_initService': require 'scripts/analysis/MyModule/MyModuleInit.service.coffee'
      		'socrat_analysis_mymodule_msgService': require 'scripts/analysis/MyModule/MyModuleMsgService.service.coffee'
      		'socrat_analysis_mymodule_myService': require 'scripts/analysis/MyModule/MyModuleMyService.service.coffee'
   		runBlock: require 'scripts/analysis/MyModule/MyModuleRunBlock.run.coffee'
