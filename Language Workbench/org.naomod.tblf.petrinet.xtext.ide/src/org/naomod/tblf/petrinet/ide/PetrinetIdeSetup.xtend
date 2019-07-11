/*
 * generated by Xtext 2.12.0
 */
package org.naomod.tblf.petrinet.ide

import com.google.inject.Guice
import org.eclipse.xtext.util.Modules2
import org.naomod.tblf.petrinet.PetrinetRuntimeModule
import org.naomod.tblf.petrinet.PetrinetStandaloneSetup

/**
 * Initialization support for running Xtext languages as language servers.
 */
class PetrinetIdeSetup extends PetrinetStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new PetrinetRuntimeModule, new PetrinetIdeModule))
	}
	
}
