(use-package exwm
	:straight t
	:config
	(require 'exwm-config)
	(exwm-config-default)
	(require 'exwm-systemtray)
	(exwm-systemtray-enable)	
	)
