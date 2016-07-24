accessing - private
initialProposalsFor: aComponentCollection

	| proposals |

	proposals := OrderedCollection new.

	100 timesRepeat: [proposals add: (self proposalFor: aComponentCollection)].

	^proposals