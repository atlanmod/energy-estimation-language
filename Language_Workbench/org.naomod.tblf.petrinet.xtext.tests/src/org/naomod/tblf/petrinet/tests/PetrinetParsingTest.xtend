/*
 * generated by Xtext 2.12.0
 */
package org.naomod.tblf.petrinet.tests

import com.google.inject.Inject
import org.eclipse.xtext.testing.InjectWith
import org.eclipse.xtext.testing.XtextRunner
import org.eclipse.xtext.testing.util.ParseHelper
import org.junit.Assert
import org.junit.Test
import org.junit.runner.RunWith
import org.naomod.tblf.petrinet.Net

@RunWith(XtextRunner)
@InjectWith(PetrinetInjectorProvider)
class PetrinetParsingTest {
	@Inject
	ParseHelper<Net> parseHelper
	
	@Test
	def void loadModel() {
		val result = parseHelper.parse('''
			Hello Xtext!
		''')
		Assert.assertNotNull(result)
		Assert.assertTrue(result.eResource.errors.isEmpty)
	}
}