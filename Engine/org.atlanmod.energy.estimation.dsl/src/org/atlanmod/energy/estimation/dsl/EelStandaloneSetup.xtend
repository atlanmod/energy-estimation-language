/*
 * generated by Xtext 2.14.0
 */
package org.atlanmod.energy.estimation.dsl


/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
class EelStandaloneSetup extends EelStandaloneSetupGenerated {

	def static void doSetup() {
		new EelStandaloneSetup().createInjectorAndDoEMFRegistration()
	}
}
