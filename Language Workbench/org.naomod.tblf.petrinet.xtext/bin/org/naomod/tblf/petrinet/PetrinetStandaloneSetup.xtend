/*
 * generated by Xtext 2.12.0
 */
package org.naomod.tblf.petrinet


/**
 * Initialization support for running Xtext languages without Equinox extension registry.
 */
class PetrinetStandaloneSetup extends PetrinetStandaloneSetupGenerated {

	def static void doSetup() {
		new PetrinetStandaloneSetup().createInjectorAndDoEMFRegistration()
	}
}
