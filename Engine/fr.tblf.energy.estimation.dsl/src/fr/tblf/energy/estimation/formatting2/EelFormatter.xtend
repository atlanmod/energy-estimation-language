/*
 * generated by Xtext 2.14.0
 */
package fr.tblf.energy.estimation.formatting2

import com.google.inject.Inject
import fr.tblf.energy.estimation.eel.MeasureValue
import fr.tblf.energy.estimation.eel.Platform
import fr.tblf.energy.estimation.services.EelGrammarAccess
import org.eclipse.xtext.formatting2.AbstractFormatter2
import org.eclipse.xtext.formatting2.IFormattableDocument

class EelFormatter extends AbstractFormatter2 {
	
	@Inject extension EelGrammarAccess

	def dispatch void format(Platform platform, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		for (variable : platform.variables) {
			variable.format
		}
		for (measure : platform.measures) {
			measure.format
		}
	}

	def dispatch void format(MeasureValue measureValue, extension IFormattableDocument document) {
		// TODO: format HiddenRegions around keywords, attributes, cross references, etc. 
		measureValue.uncertainty.format
	}
	
	// TODO: implement for MeasureOCL, MeasureAttribute, MeasureCast, MeasureBinaryProductOperation, MeasureBinarySumOperation, MeasurementUncertainty, Interval, Sampling, Sample, EClass, EOperation, EAnnotation, ETypeParameter, EGenericType, EAttribute, EReference, EDataType, EEnum, EEnumLiteral, EParameter
}