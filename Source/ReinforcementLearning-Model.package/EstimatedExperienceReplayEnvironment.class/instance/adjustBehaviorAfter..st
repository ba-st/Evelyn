processing - private
adjustBehaviorAfter: anExperience

	| updatedQuality |
	updatedQuality := self updatedQualityAfter: anExperience.
	(qualities at: anExperience previousState) at: anExperience action put: updatedQuality.

	self adjustBehaviorAfter: anExperience accordingTo: updatedQuality