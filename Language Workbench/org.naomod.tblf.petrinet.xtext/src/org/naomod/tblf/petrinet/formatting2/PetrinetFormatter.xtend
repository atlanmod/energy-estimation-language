/*
 * generated by Xtext 2.12.0
 */
package org.naomod.tblf.petrinet.formatting2

import com.google.inject.Inject
import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.IFormattableDocument
import org.naomod.tblf.petrinet.Net
import org.naomod.tblf.petrinet.Place
import org.naomod.tblf.petrinet.Transition
import org.naomod.tblf.petrinet.services.PetrinetGrammarAccess

class PetrinetFormatter extends AbstractFormatter2 {
	
	@Inject extension PetrinetGrammarAccess

	def dispatch void format(Net net, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (Place place : net.getPlaces()) {
			place.format;
		}
		for (Transition transition : net.getTransitions()) {
			transition.format;
		}
	}
	
	// TODO: implement for 
}
