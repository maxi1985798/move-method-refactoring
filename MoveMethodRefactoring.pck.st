'From Cuis 6.0 [latest update: #5706] on 8 June 2023 at 1:36:12 am'!
'Description '!
!provides: 'MoveMethodRefactoring' 1 23!
SystemOrganization addCategory: 'MoveMethodRefactoring'!


!classDefinition: #XXXXMethodChanger category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #XXXXMethodChanger
	instanceVariableNames: 'methodReference collectionOfMessageNodesToChange instanceVariable orderedCollection compiledMethod collectionOfNodesToChange xXXXReplacerResult shouldAddParenthesis'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXMethodChanger class' category: 'MoveMethodRefactoring'!
XXXXMethodChanger class
	instanceVariableNames: ''!

!classDefinition: #XXXXReplacerForNode category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #XXXXReplacerForNode
	instanceVariableNames: 'compiledMethod intervalsToReject node intervalsToModify nodeInterval nodeOffsetInSourceCode readAccessOnInstanceVariables writeAccessOnInstanceVariables methodHasSuperReferences readAccessOnClassVariables writeAccessOnClassVariables methodHasSelfReferences'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXReplacerForNode class' category: 'MoveMethodRefactoring'!
XXXXReplacerForNode class
	instanceVariableNames: ''!

!classDefinition: #XXXXSenderReplacer category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #XXXXSenderReplacer
	instanceVariableNames: 'selector compiledMethod instanceVariableName intervalsToModify intervalsToReject xXXXReplacerResult node nodeInterval nodeOffsetInSourceCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXSenderReplacer class' category: 'MoveMethodRefactoring'!
XXXXSenderReplacer class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodRefactoringTest category: 'MoveMethodRefactoring'!
RefactoringTest subclass: #MoveMethodRefactoringTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodRefactoringTest class' category: 'MoveMethodRefactoring'!
MoveMethodRefactoringTest class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodRefactoring category: 'MoveMethodRefactoring'!
Refactoring subclass: #MoveMethodRefactoring
	instanceVariableNames: 'methodName sourceClass targetClass collectionOfSendersToChange instanceVariable'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodRefactoring class' category: 'MoveMethodRefactoring'!
MoveMethodRefactoring class
	instanceVariableNames: ''!

!classDefinition: #XXXXReplacerResult category: 'MoveMethodRefactoring'!
Object subclass: #XXXXReplacerResult
	instanceVariableNames: 'sourceCode readAccessOnInstanceVariables writeAccessOnInstanceVariables methodWithSuperReferences readAccessOnClassVariables writeAccessOnClassVariables methodWithSelfReferences'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXReplacerResult class' category: 'MoveMethodRefactoring'!
XXXXReplacerResult class
	instanceVariableNames: ''!

!classDefinition: #XXXXSenderReplacerResult category: 'MoveMethodRefactoring'!
Object subclass: #XXXXSenderReplacerResult
	instanceVariableNames: 'sourceCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXSenderReplacerResult class' category: 'MoveMethodRefactoring'!
XXXXSenderReplacerResult class
	instanceVariableNames: ''!


!XXXXMethodChanger methodsFor: 'initialization' stamp: 'mc 6/8/2023 01:34:02'!
initializeMethod: aMethodReference nodesToChange: aCollectionOfMessageNodesToChange instanceVariable: anInstanceVariable withResult: aXXXXReplacerResult 
	methodReference := aMethodReference.
	collectionOfMessageNodesToChange := aCollectionOfMessageNodesToChange.
	instanceVariable := anInstanceVariable.
	xXXXReplacerResult := aXXXXReplacerResult.
	shouldAddParenthesis := false! !

!XXXXMethodChanger methodsFor: 'as yet unclassified' stamp: 'mc 6/8/2023 01:18:14'!
fatherOf: aMessageNodeReference 
	compiledMethod methodNode accept: self.! !

!XXXXMethodChanger methodsFor: 'as yet unclassified' stamp: 'mc 6/7/2023 02:26:28'!
firstUnseenIntervalFor: aNode 
	| completeRangesOfassigmentNode |
	completeRangesOfassigmentNode := self sourceRangesOf: aNode.
	"self removeSeenRanges: completeRangesOfassigmentNode."
	^completeRangesOfassigmentNode detectMin: [ :anInterval | anInterval first]! !

!XXXXMethodChanger methodsFor: 'as yet unclassified' stamp: 'mc 6/8/2023 01:10:00'!
newCodeFor: aMessageNodeReference 
	 | aMessageNode argumentsCode indexArgumentsCode indexNewSend newSend methodNode fatherNode |
	aMessageNode := aMessageNodeReference messageNode .
	"methodNode := aMessageNodeReference compiledMethod methodNode.
	methodNode nodesDo: [ :aNode | aNode ]."
	fatherNode := self fatherOf: aMessageNodeReference.
	aMessageNode isKeywordMessageSend 
		ifFalse: [ 
			xXXXReplacerResult methodWithSelfReferences 
				ifTrue: [
					^instanceVariable, ' ', aMessageNode selector key asString, ': ', 'self' .
					]
				ifFalse: [
					^instanceVariable, ' ', aMessageNode selector key
					]
			 ]
		ifTrue: [
			argumentsCode := OrderedCollection new.
			indexArgumentsCode := 1.
			aMessageNode selector key keywords do: [ :aKeyword | 
					argumentsCode add: (compiledMethod sourceCode 
						copyFrom: (self firstUnseenIntervalFor: (aMessageNode argumentsInEvaluationOrder at: indexArgumentsCode)) first 
						to: (self firstUnseenIntervalFor: (aMessageNode argumentsInEvaluationOrder at: indexArgumentsCode)) last).
					indexArgumentsCode := indexArgumentsCode +1].
			
			indexNewSend := 1.
			newSend := ''.
			aMessageNode selector key keywords do: [ :aKeyword | newSend := newSend, ' ', aKeyword, ' ', (argumentsCode at: indexNewSend). indexNewSend := indexNewSend +1].
			^instanceVariable, newSend.		
			]
	! !

!XXXXMethodChanger methodsFor: 'as yet unclassified' stamp: 'mc 6/7/2023 02:13:54'!
sourceRangesOf: aNode 
	
	^compiledMethod methodNode completeSourceRangesOf: aNode ifAbsent: []! !

!XXXXMethodChanger methodsFor: 'as yet unclassified' stamp: 'mc 6/8/2023 01:33:37'!
value
	| methodNode codeForSenders sourceCode newCodeForMessage |
	compiledMethod := methodReference compiledMethod.
	methodNode := 	compiledMethod methodNode.
	codeForSenders := collectionOfMessageNodesToChange collect: [ :aMessageNodeReference | 
		newCodeForMessage := self newCodeFor: aMessageNodeReference.
		shouldAddParenthesis ifTrue: [ newCodeForMessage := '(', newCodeForMessage, ')'].
		aMessageNodeReference completeSourceRange  -> newCodeForMessage
		].
		
		
		"aMessageNodeReference completeSourceRange  -> (instanceVariable, ' m1')]."
	sourceCode := methodReference compiledMethod sourceCode.
	methodReference actualClass compile: (sourceCode copyReplacing: codeForSenders).
	"self halt.
	methodNode accept: self."
	
	! !

!XXXXMethodChanger methodsFor: 'visiting' stamp: 'mc 6/8/2023 01:30:22'!
visitMessageNode: aMessageNode 
	shouldAddParenthesis := (aMessageNode receiver equivalentTo: collectionOfMessageNodesToChange first messageNode)
	! !

!XXXXMethodChanger class methodsFor: 'instance creation' stamp: 'mc 6/7/2023 02:39:48'!
method: aMethodReference nodesToChange: aCollectionOfNodesToChange instanceVariable: anInstanceVariable withResult: aXXXXReplacerResult 
	^self new initializeMethod: aMethodReference nodesToChange: aCollectionOfNodesToChange instanceVariable: anInstanceVariable withResult: aXXXXReplacerResult ! !

!XXXXReplacerForNode methodsFor: 'initialization' stamp: 'mc 6/3/2023 00:31:01'!
initializeFor: aCompiledMethod rejectingIntervals: aFewIntervalsToReject onNode: aNodeToGetCode 
	compiledMethod := aCompiledMethod.
	intervalsToReject := aFewIntervalsToReject.
	node := aNodeToGetCode.
	intervalsToModify := OrderedCollection new.
	readAccessOnInstanceVariables := Set new.
	writeAccessOnInstanceVariables := Set new.
	methodHasSuperReferences := false.
	methodHasSelfReferences := false.
	readAccessOnClassVariables := Set new.
	writeAccessOnClassVariables := Set new.! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 5/12/2023 00:29:21'!
encapsulateSuperColaboration: aMessageNode
	
	| colaborationEncapsulated indexSourceCode newSelector newSourceCode |
	newSelector := self newSelector: aMessageNode .
	indexSourceCode := 1.
	newSourceCode := ''.
	aMessageNode selector key keywords do: [:aKeyword | 
		newSourceCode := newSourceCode, ' ', aKeyword, ' ', 'arg', indexSourceCode asString. 
		indexSourceCode := indexSourceCode +1 ].
	
	newSourceCode := '^super ', (newSourceCode copyFrom: 2 to: newSourceCode size), '.'.
	colaborationEncapsulated := newSelector, String newLineString, String tab, newSourceCode.
	compiledMethod methodClass compile: colaborationEncapsulated.! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 5/12/2023 00:14:44'!
newSelector: aMessageNode
	
	| indexNewSelector newSelector |
	newSelector := ''.
	indexNewSelector := 1.
	aMessageNode selector key keywords do: [:aKeyword | newSelector := newSelector, ' ', aKeyword, ' ', 'arg', indexNewSelector asString. indexNewSelector := indexNewSelector +1 ].
	newSelector := 'CHANGE_ME_super_', (newSelector copyFrom: 2 to: newSelector size).
	^newSelector! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 5/21/2023 18:37:57'!
newSenderFor: aMessageNode
	|  newSend argumentsCode argumentIndex replacer replacerResult argumentNode |
	argumentsCode := OrderedCollection new.
	argumentIndex := 1.
	"self halt."
	aMessageNode selector key keywords do: [ :aKeyword | 
		argumentNode := aMessageNode argumentsInEvaluationOrder at: argumentIndex.
		replacer := XXXXReplacerForNode for: compiledMethod rejectingIntervals: intervalsToReject onNode: argumentNode.
		replacerResult := replacer apply.
		(self shouldAddParenthesis: argumentNode) 
			ifTrue: [argumentsCode add: '(', replacerResult sourceCode, ')'.]
			ifFalse: [argumentsCode add: replacerResult sourceCode.].
		writeAccessOnInstanceVariables addAll: replacerResult writeAccessOnInstanceVariables.
		readAccessOnInstanceVariables addAll: replacerResult readAccessOnInstanceVariables.
		argumentIndex := argumentIndex +1].
	argumentIndex := 1.
	newSend := ''.
	aMessageNode selector key keywords do: [ :aKeyword | newSend := newSend, ' ', aKeyword, ' ', (argumentsCode at: argumentIndex). argumentIndex := argumentIndex +1].
	^'sourceObject CHANGE_ME_super_', (newSend copyFrom: 2 to: newSend size).
! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 5/28/2023 04:16:23'!
visitAssignmentNode: anAssignmentNode 
	| assigmentValue completeRangesOfassigmentNode nodeXXXReplacer resultForValue setterSelectorAsString |
	"self halt."
	anAssignmentNode variable isTemp ifTrue: [anAssignmentNode value accept: self. ^self].
	completeRangesOfassigmentNode := self firstUnseenIntervalFor: anAssignmentNode.
	nodeXXXReplacer := XXXXReplacerForNode 
					for: compiledMethod
					rejectingIntervals: intervalsToReject 
					onNode: anAssignmentNode value.
					
	resultForValue :=			nodeXXXReplacer apply.
	(((anAssignmentNode value isMessageNode and: [anAssignmentNode value isKeywordMessageSend])) or: [anAssignmentNode value isAssignmentNode ])
		ifTrue: [assigmentValue := '(', resultForValue sourceCode , ')'.] 
		ifFalse: [assigmentValue := resultForValue sourceCode .].
	
	
	setterSelectorAsString := anAssignmentNode variable name, ':'.
	setterSelectorAsString := setterSelectorAsString uncapitalized.
	compiledMethod methodClass methodDict 
					at: setterSelectorAsString asSymbol 
					ifPresent: [ :setterCandidate | (self method: setterCandidate isSetterOf: anAssignmentNode variable name) 
												ifFalse: 	[setterSelectorAsString := anAssignmentNode variable name, '_SETTER_CHANGE_ME:'.]
							]
					ifAbsent: [].

	
	self registerInterval: completeRangesOfassigmentNode withModification: ('sourceObject ', setterSelectorAsString, ' ', assigmentValue).
	readAccessOnInstanceVariables addAll: resultForValue readAccessOnInstanceVariables.
	writeAccessOnInstanceVariables addAll: resultForValue writeAccessOnInstanceVariables.
	
	anAssignmentNode variable isLiteralVariableNode 
		ifTrue: [
			writeAccessOnClassVariables add: anAssignmentNode variable name.
			]
		ifFalse: [
			writeAccessOnInstanceVariables add: anAssignmentNode variable name.
			]
	
	! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/18/2023 00:40:08'!
visitInstanceVariableNode: anInstanceVariableNode 
	| sourceCodeForInterval anInterval |
	"self halt."
	anInterval := self firstUnseenIntervalFor: anInstanceVariableNode.
	sourceCodeForInterval := 'sourceObject ', anInstanceVariableNode key.
	self registerInterval: anInterval withModification: sourceCodeForInterval.
	readAccessOnInstanceVariables add: anInstanceVariableNode key.! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 5/24/2023 17:48:59'!
visitLiteralVariableNode: aLiteralVariableNode 
	| sourceCodeForInterval anInterval |
	"self halt."
	anInterval := self firstUnseenIntervalFor: aLiteralVariableNode.
	sourceCodeForInterval := 'sourceObject ', aLiteralVariableNode name uncapitalized.
	self registerInterval: anInterval withModification: sourceCodeForInterval.
	readAccessOnClassVariables add: aLiteralVariableNode name.! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 5/15/2023 23:03:39'!
visitMessageNode: aMessageNode 
	| rangeMessageNode newSend |
	"self halt."
	aMessageNode receiver referencesSuper
		ifTrue:[
			aMessageNode isKeywordMessageSend
				ifTrue: [ 
					newSend := self newSenderFor: aMessageNode.
					rangeMessageNode := self firstUnseenIntervalFor: aMessageNode.
					self registerInterval: rangeMessageNode withModification: newSend.
					self encapsulateSuperColaboration: aMessageNode.
					]
				ifFalse: [
					rangeMessageNode := self firstUnseenIntervalFor: aMessageNode .
					self registerInterval: rangeMessageNode withModification: ('sourceObject CHANGE_ME_super_', aMessageNode selector key asString).
					"self encapsulateSuperColaboration: aMessageNode."
					compiledMethod methodClass compile:'CHANGE_ME_super_', aMessageNode selector key asString, String newLineString, String tab, '^super ', aMessageNode selector key asString, '.'.
					].
			methodHasSuperReferences := true.
			
			]
		ifFalse:[
			aMessageNode receiver accept: self.
			aMessageNode selector accept: self.
			aMessageNode argumentsInEvaluationOrder do: [:argument| argument accept: self]
			].
	! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 6/3/2023 00:31:52'!
visitVariableNode: aVariableNode 
	| anInterval sourceCodeForInterval |
	"self halt."
	anInterval := self firstUnseenIntervalFor: aVariableNode ifAbsent: [^self].
	sourceCodeForInterval := 'sourceObject'.
	self registerInterval: anInterval withModification: sourceCodeForInterval.
	methodHasSelfReferences := true.! !

!XXXXReplacerForNode methodsFor: 'private' stamp: 'mc 4/14/2023 02:12:28'!
firstIntervalOn: aCollectionOfIntervals
	^aCollectionOfIntervals detectMin: [ :anInterval | anInterval first]! !

!XXXXReplacerForNode methodsFor: 'private' stamp: 'mc 4/14/2023 00:49:47'!
firstUnseenIntervalFor: aNode 
	| completeRangesOfassigmentNode |
	completeRangesOfassigmentNode := self sourceRangesOf: aNode.
	self removeSeenRanges: completeRangesOfassigmentNode.
	^completeRangesOfassigmentNode detectMin: [ :anInterval | anInterval first]! !

!XXXXReplacerForNode methodsFor: 'private' stamp: 'mc 4/28/2023 01:46:20'!
firstUnseenIntervalFor: aNode ifAbsent: anAbsentBlock 
	
	| completeRangesOfassigmentNode |
	
	completeRangesOfassigmentNode := compiledMethod methodNode completeSourceRangesOf: aNode ifAbsent: anAbsentBlock.
	self removeSeenRanges: completeRangesOfassigmentNode.
	^completeRangesOfassigmentNode detectMin: [ :anInterval | anInterval first]! !

!XXXXReplacerForNode methodsFor: 'private' stamp: 'mc 4/18/2023 01:21:54'!
initializeNodeInterval

	| posibleRangesForNode |

	node isMethodNode 
		ifTrue:[ 
			nodeInterval := 1 to: (compiledMethod sourceCode size).
			]
		ifFalse:[ 
			posibleRangesForNode := self sourceRangesOf: node.
			self removeSeenRanges: posibleRangesForNode.
			nodeInterval := self firstIntervalOn: posibleRangesForNode.
			]! !

!XXXXReplacerForNode methodsFor: 'private' stamp: 'mc 4/14/2023 02:19:49'!
initializeOffset

	^ nodeOffsetInSourceCode := nodeInterval first -1! !

!XXXXReplacerForNode methodsFor: 'private' stamp: 'mc 4/26/2023 02:33:42'!
method: setterCandidate isSetterOf: anInstVarName 
	| anInstVarIndex varIndexCode scanner |
	"self halt."
	anInstVarIndex := compiledMethod methodClass instVarNames indexOf: anInstVarName.
	"setterCandidate selector = (anInstanceVariable, ':') ifFalse: [ ^false ].
	"
	
	"^setterCandidate isSetterOf: anInstanceVariable at: varIndex."
	
	"self isQuick ifTrue: [ ^false ]."
	setterCandidate selector = (anInstVarName, ':') ifFalse: [ ^false ].
	
	"I could have use the AST of the method, but parsing the source code could generate errors
	that it is why I decided to check the bytecodes - Hernan"
	varIndexCode := anInstVarIndex - 1.
	scanner := InstructionStream on: setterCandidate.
	scanner nextByte = 16r10 ifFalse: [ ^false ].
	scanner movePcForward.
	(setterCandidate writesFieldCode: varIndexCode with: scanner nextByte using: scanner) ifFalse: [ ^false ].
	scanner movePcForward.
	^scanner nextByte = 16r7C! !

!XXXXReplacerForNode methodsFor: 'private' stamp: 'mc 4/14/2023 00:53:08'!
registerInterval: anInterval withModification: sourceCodeForInterval 
	intervalsToReject add: anInterval.
	intervalsToModify add: anInterval -> sourceCodeForInterval! !

!XXXXReplacerForNode methodsFor: 'private' stamp: 'mc 4/14/2023 00:53:08'!
removeSeenRanges: rangesOfNode 
	^rangesOfNode removeAllSuchThat: [ :aSourceInterval | intervalsToReject anySatisfy: [ :aSourceIntervalToModify | aSourceIntervalToModify includesAllOf: aSourceInterval ] ]! !

!XXXXReplacerForNode methodsFor: 'private' stamp: 'mc 5/14/2023 19:51:27'!
shouldAddParenthesis: argumentNode 
	^argumentNode isAssignmentNode! !

!XXXXReplacerForNode methodsFor: 'private' stamp: 'mc 4/14/2023 00:51:07'!
sourceRangesOf: aNode 
	^compiledMethod methodNode completeSourceRangesOf: aNode ifAbsent: []! !

!XXXXReplacerForNode methodsFor: 'accessing' stamp: 'mc 6/3/2023 00:32:21'!
apply
	| newCode newCodeForNode result |
	"self halt."
	self initializeNodeInterval.
	self initializeOffset.
	node accept: self.
	intervalsToModify := intervalsToModify collect: [ :anAssociation | (anAssociation key - nodeOffsetInSourceCode) -> anAssociation value ].
	newCodeForNode := compiledMethod sourceCode copyFrom: nodeInterval first to: nodeInterval last.
	
	(
	(node isMethodNode) 
	and: (
		(readAccessOnInstanceVariables isEmpty not) 
		or: [(methodHasSelfReferences)
		or: (writeAccessOnInstanceVariables isEmpty not) 
		or: (methodHasSuperReferences)
		or: (readAccessOnClassVariables isEmpty not) 
		or: (writeAccessOnClassVariables isEmpty not) ]
		)
	) ifTrue: [
		(compiledMethod methodNode selectorAndArgumentsAsString includes: $:) 
				ifTrue: [intervalsToModify add: (1 to: compiledMethod methodNode selectorLastPosition ) -> (compiledMethod methodNode selectorAndArgumentsAsString, ' sourceObject: sourceObject')]
				ifFalse: [intervalsToModify add: (1 to: compiledMethod methodNode selectorLastPosition ) -> (compiledMethod methodNode selectorAndArgumentsAsString, ': sourceObject')].
	].
	"self halt."
	intervalsToModify sort: [ :left :right | left key first < right key first ].
	newCode := newCodeForNode copyReplacing: intervalsToModify.
	result := XXXXReplacerResult newWith: newCode modifiedReads: readAccessOnInstanceVariables modifiedWrites: writeAccessOnInstanceVariables hasSuperReferences: methodHasSuperReferences hasSelfReferences: methodHasSelfReferences modifiedClassReads: readAccessOnClassVariables modifiedClassWrites:writeAccessOnClassVariables .
	^result! !

!XXXXReplacerForNode class methodsFor: 'instance creation' stamp: 'mc 4/17/2023 01:19:56'!
for: aCompiledMethod 
	
	^self for: aCompiledMethod rejectingIntervals: OrderedCollection new onNode: aCompiledMethod methodNode! !

!XXXXReplacerForNode class methodsFor: 'instance creation' stamp: 'mc 4/14/2023 00:00:15'!
for: aCompiledMethod rejectingIntervals: aFewIntervalsToReject onNode: aNodeToGetCode 
	^self new initializeFor: aCompiledMethod rejectingIntervals: aFewIntervalsToReject onNode: aNodeToGetCode ! !

!XXXXSenderReplacer methodsFor: 'initialization' stamp: 'mc 6/4/2023 19:08:29'!
initializeOf: aSelector in: aCompiledMethod withReceiver: anInstanceVariableName andResult: aXXXXReplacerResult onNode: aNode
	node := aNode .
	selector := aSelector.
	compiledMethod := aCompiledMethod.
	instanceVariableName := anInstanceVariableName.
	xXXXReplacerResult := aXXXXReplacerResult.
	intervalsToModify := OrderedCollection new.
	intervalsToReject := OrderedCollection new.! !

!XXXXSenderReplacer methodsFor: 'as yet unclassified' stamp: 'mc 6/4/2023 22:30:26'!
firstIntervalOn: aCollectionOfIntervals
	^aCollectionOfIntervals detectMin: [ :anInterval | anInterval first]! !

!XXXXSenderReplacer methodsFor: 'as yet unclassified' stamp: 'mc 5/31/2023 05:13:39'!
firstUnseenIntervalFor: aNode 
	| completeRangesOfassigmentNode |
	completeRangesOfassigmentNode := self sourceRangesOf: aNode.
	"self removeSeenRanges: completeRangesOfassigmentNode."
	^completeRangesOfassigmentNode detectMin: [ :anInterval | anInterval first]! !

!XXXXSenderReplacer methodsFor: 'as yet unclassified' stamp: 'mc 6/4/2023 14:56:10'!
initializeNodeInterval

	| posibleRangesForNode |

	node isMethodNode 
		ifTrue:[ 
			nodeInterval := 1 to: (compiledMethod sourceCode size).
			]
		ifFalse:[ 
			posibleRangesForNode := self sourceRangesOf: node.
			self removeSeenRanges: posibleRangesForNode.
			nodeInterval := self firstIntervalOn: posibleRangesForNode.
			]! !

!XXXXSenderReplacer methodsFor: 'as yet unclassified' stamp: 'mc 6/4/2023 14:57:59'!
initializeOffset

	^ nodeOffsetInSourceCode := nodeInterval first -1! !

!XXXXSenderReplacer methodsFor: 'as yet unclassified' stamp: 'mc 6/5/2023 01:30:36'!
value
	| newCodeForNode newSourceCode |
	"self halt."
	self initializeNodeInterval.
	self initializeOffset.
	node accept: self.
	intervalsToModify := intervalsToModify collect: [ :anAssociation | (anAssociation key - nodeOffsetInSourceCode) -> anAssociation value ].
	newCodeForNode := compiledMethod sourceCode copyFrom: nodeInterval first to: nodeInterval last.
	intervalsToModify sort: [ :left :right | left key first < right key first ].
	
	newSourceCode := newCodeForNode copyReplacing: intervalsToModify.
	^XXXXSenderReplacerResult newWith: newSourceCode
	! !

!XXXXSenderReplacer methodsFor: 'visiting' stamp: 'mc 6/5/2023 01:37:46'!
visitMessageNode: aMessageNode 
	| newSend range replacer result |
	"self halt."
	
	(aMessageNode selector key = selector and: (xXXXReplacerResult methodWithSelfReferences ))
		ifTrue: [
			range := self firstUnseenIntervalFor: aMessageNode ifAbsent: [].
			newSend := instanceVariableName, ' ', aMessageNode selector key asString, ': ', 'self' .
			self registerInterval: range withModification: newSend.
			]
		ifFalse: [
			(aMessageNode receiver isMessageNode 
			and: [(aMessageNode receiver selector key = selector) 
			and: (xXXXReplacerResult methodWithSelfReferences )])
				ifFalse: [
					aMessageNode receiver accept: self.
					aMessageNode selector accept: self.
					aMessageNode argumentsInEvaluationOrder do: [:argument| argument accept: self]
					]
				ifTrue: [
					replacer := XXXXSenderReplacer of: selector in: compiledMethod withReceiver: instanceVariableName andResult: xXXXReplacerResult onNode: aMessageNode receiver.
					result := replacer value.
					range := self firstUnseenIntervalFor: aMessageNode receiver ifAbsent: [].
					self registerInterval: range withModification: '(', result sourceCode, ')' .
					]
		]
		
	! !

!XXXXSenderReplacer methodsFor: 'visiting' stamp: 'mc 5/31/2023 22:09:20'!
visitVariableNode: aVariableNode 
	| anInterval sourceCodeForInterval |
	"self halt."
	anInterval := self firstUnseenIntervalFor: aVariableNode ifAbsent: [^self].
	sourceCodeForInterval := instanceVariableName .
	self registerInterval: anInterval withModification: sourceCodeForInterval.! !

!XXXXSenderReplacer methodsFor: 'private' stamp: 'mc 5/31/2023 22:04:31'!
firstUnseenIntervalFor: aNode ifAbsent: anAbsentBlock 
	
	| completeRangesOfassigmentNode |
	
	completeRangesOfassigmentNode := compiledMethod methodNode completeSourceRangesOf: aNode ifAbsent: anAbsentBlock.
	self removeSeenRanges: completeRangesOfassigmentNode.
	^completeRangesOfassigmentNode detectMin: [ :anInterval | anInterval first]! !

!XXXXSenderReplacer methodsFor: 'private' stamp: 'mc 6/3/2023 23:57:35'!
newSenderFor: aMessageNode
! !

!XXXXSenderReplacer methodsFor: 'private' stamp: 'mc 5/31/2023 22:07:07'!
registerInterval: anInterval withModification: sourceCodeForInterval 
	intervalsToReject add: anInterval.
	intervalsToModify add: anInterval -> sourceCodeForInterval! !

!XXXXSenderReplacer methodsFor: 'private' stamp: 'mc 5/31/2023 22:05:06'!
removeSeenRanges: rangesOfNode 
	^rangesOfNode removeAllSuchThat: [ :aSourceInterval | intervalsToReject anySatisfy: [ :aSourceIntervalToModify | aSourceIntervalToModify includesAllOf: aSourceInterval ] ]! !

!XXXXSenderReplacer methodsFor: 'private' stamp: 'mc 6/4/2023 22:29:39'!
sourceRangesOf: aNode 
	^compiledMethod methodNode completeSourceRangesOf: aNode ifAbsent: []! !

!XXXXSenderReplacer class methodsFor: 'instance creation' stamp: 'mc 6/4/2023 19:07:52'!
of: aSelector in: aCompiledMethod withReceiver: anInstanceVariableName andResult: aXXXXReplacerResult 
	^self of: aSelector in: aCompiledMethod withReceiver: anInstanceVariableName  andResult: aXXXXReplacerResult onNode: aCompiledMethod methodNode ! !

!XXXXSenderReplacer class methodsFor: 'instance creation' stamp: 'mc 6/4/2023 19:08:01'!
of: aSelector in: aCompiledMethod withReceiver: anInstanceVariableName andResult: aXXXXReplacerResult onNode: aNode
	^self new initializeOf: aSelector in: aCompiledMethod withReceiver: anInstanceVariableName  andResult: aXXXXReplacerResult onNode: aNode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/5/2023 22:29:35'!
messageNodeReferenceOf: anImplementor inMethod: aMethodName atIndex: aSourceCodeIndex

	| nodeToInline methodNode sourceCodeRange nodeAndRange |
	
	methodNode := (anImplementor >> aMethodName asSymbol) methodNode.
	nodeAndRange := (methodNode
		parseNodesPathAt: aSourceCodeIndex ifAbsent: [self fail]) first.
	nodeToInline := nodeAndRange key.
	(nodeToInline isKindOf: MessageNode ) ifFalse: [self failWith: 'There is no message node at the selected
		class, method and index'].
	sourceCodeRange := nodeAndRange value.
	
	^MessageNodeReference messageNode: nodeToInline selector: methodNode selector
		class: anImplementor completeSourceRange: sourceCodeRange .! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test001MethodShouldExistsOnSourceClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	
	
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new] 
		failsWith: [MoveMethodRefactoring methodShouldExistsOnSourceClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test002MethodShouldNotExistsOnTargetClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	targetClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new] 
		failsWith: [MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test003TargetClassShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := nil.
	sourceClass compile: 'm1 ^1' .
	
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new] 
		failsWith: [MoveMethodRefactoring targetClassShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test004SourceClassShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := nil.
	targetClass := self createClassNamed: #TargetClass.
	
	
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new] 
		failsWith: [MoveMethodRefactoring sourceClassShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test005MethodShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: nil from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new] 
		failsWith: [MoveMethodRefactoring methodShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test006InstanceVariableToAccessingThroughShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: nil changingSenders: Set new] 
		failsWith: [MoveMethodRefactoring instanceVariableToAccessingThroughShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test007InstanceVariableToAccessingThroughShouldExistsInSourceClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv2' changingSenders: Set new] 
		failsWith: [MoveMethodRefactoring instanceVariableToAccessingThroughShouldExistsInSourceClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test100CanMoveMethodWithoutReferences
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1.' .
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass compiledMethodAt: #m1) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test101CanMoveMethodWithoutReferences
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^2.' .
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1 ^2.' equals: (targetClass compiledMethodAt: #m1) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test102CanMoveMethodWhenReferencesAnInstanceVariable
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv2.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv2.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	self assert: 'iv2', String newLineString, String tab, '^iv2.' equals: (sourceClass compiledMethodAt: #iv2) sourceCode.
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test103CanMoveMethodWhenReferencesAnInstanceVariableForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	self assert: 'iv3', String newLineString, String tab, '^iv3.' equals: (sourceClass compiledMethodAt: #iv3) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test104CanMoveMethodWhenReferencesTwoInstanceVariableForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3 + iv4.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3 + sourceObject iv4.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	self assert: 'iv3', String newLineString, String tab, '^iv3.' equals: (sourceClass compiledMethodAt: #iv3) sourceCode.
	self assert: 'iv4', String newLineString, String tab, '^iv4.' equals: (sourceClass compiledMethodAt: #iv4) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test105CanMoveMethodWhenReferencesAnInstanceVariableForWriting
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3 := 1.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3: 1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	self assert: 'iv3: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass compiledMethodAt: #iv3:) sourceCode.
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test106CanMoveMethodWhenReferencesTwoInstanceVariableForWriting
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 iv3 := iv4 := 1.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject sourceObject iv3: (sourceObject iv4: 1).' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	self assert: 'iv3: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass compiledMethodAt: #iv3:) sourceCode.
	self assert: 'iv4: anObject', String newLineString, String tab, '^iv4 := anObject.' equals: (sourceClass compiledMethodAt: #iv4:) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test107CanMoveMethodWhenReferencesTwoInstanceVariableForWritingAndOneForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4 iv5'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 iv3 := iv4 := iv5.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject sourceObject iv3: (sourceObject iv4: sourceObject iv5).' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test108CanMoveMethodWhenReferencesAnInstanceVariableAndHasAParameter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1: anObject ^iv2.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: anObject sourceObject: sourceObject ^sourceObject iv2.' equals: (targetClass compiledMethodAt: #m1:sourceObject:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test109AfterMovingMethodWhichReferencesAnInstanceVariableForReadingShouldUseTheExistentGetter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3 ^iv3.'.
	sourceClass compile: 'm1 ^iv3 + 1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'iv3 ^iv3.' equals: (sourceClass compiledMethodAt: #iv3) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test110AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter___wip
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3: anObject ^iv3 := anObject.'.
	sourceClass compile: 'm1 ^iv3 := 1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'iv3: anObject ^iv3 := anObject.' equals: (sourceClass compiledMethodAt: #iv3:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test111AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter___wip2
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3: anObject iv3 := anObject.'.
	sourceClass compile: 'm1 ^iv3 := 1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3_SETTER_CHANGE_ME: 1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'iv3_SETTER_CHANGE_ME: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass compiledMethodAt: #iv3_SETTER_CHANGE_ME:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test112AfterMovingMethodWhichReferencesAnClassVariableForReadingShouldCreateGetter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^Icv1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject icv1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'icv1', String newLineString, String tab, '^Icv1.' equals: (sourceClass compiledMethodAt: #icv1) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test113AfterMovingMethodWhichReferencesAnClassVariableForReadingShouldCreateSetter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^Icv1 := 1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject icv1: 1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'icv1: anObject', String newLineString, String tab, '^Icv1 := anObject.' equals: (sourceClass compiledMethodAt: #icv1:) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test199TmpVariablesShoulNotBeAffected
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 |tmp| ^tmp:=1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1 |tmp| ^tmp:=1.' equals: (targetClass compiledMethodAt: #m1) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test200CanMoveMethodWhenSendsMessageToSelf
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'justOne ^1.'.
	sourceClass compile: 'm1 ^self justOne.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject justOne.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test200CanMoveMethodWhenSendsUnaryMessageToSuper
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'justOne ^1.'.
	sourceClass compile: 'justOne ^2.'.
	sourceClass compile: 'm1 ^super justOne.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_justOne.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'CHANGE_ME_super_justOne', String newLineString, String tab, '^super justOne.' equals: (sourceClass compiledMethodAt: #CHANGE_ME_super_justOne) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test201CanMoveMethodWhenSendsKeywordMessageToSuperWithOneColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger ^2+aSmallinteger.'.
	sourceClass compile: 'm1 ^super increment: 1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_increment: 1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass compiledMethodAt: #CHANGE_ME_super_increment:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test202CanMoveMethodWhenSendsKeywordMessageToSuperWithTwoColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger andIncrement: anotherSmallinteger ^1+aSmallinteger+anotherSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger andIncrement: anotherSmallinteger ^2+aSmallinteger+anotherSmallinteger.'.
	sourceClass compile: 'm1 ^super increment: 1 andIncrement: 2.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_increment: 1 andIncrement: 2.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'CHANGE_ME_super_increment: arg1 andIncrement: arg2', String newLineString, String tab, '^super increment: arg1 andIncrement: arg2.' equals: (sourceClass compiledMethodAt: #CHANGE_ME_super_increment:andIncrement:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test203CanMoveMethodWhenSendsKeywordMessageToSuperWithOneInstVarAsColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv2 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger ^2+aSmallinteger.'.
	sourceClass compile: 'm1 ^super increment: iv2.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_increment: sourceObject iv2.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass compiledMethodAt: #CHANGE_ME_super_increment:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test204CanMoveMethodWhenSendsKeywordMessageToSuperWithOneInstVarAsColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv2 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger ^2+aSmallinteger.'.
	sourceClass compile: 'm1 ^super increment: (iv2 := 1).'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_increment: (sourceObject iv2: 1).' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass compiledMethodAt: #CHANGE_ME_super_increment:) sourceCode.
	self assert: 'iv2: anObject', String newLineString, String tab, '^iv2 := anObject.' equals: (sourceClass compiledMethodAt: #iv2:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 5/30/2023 02:47:15'!
test205CanMoveMethodWhenSendsKeywordMessageToSuperWithOneTmpVarAsColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger ^2+aSmallinteger.'.
	sourceClass compile: 'm1 |asd| ^super increment: asd.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: Set new.
	refactoring apply.
	
	self assert: 'm1: sourceObject |asd| ^sourceObject CHANGE_ME_super_increment: asd.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass compiledMethodAt: #CHANGE_ME_super_increment:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/5/2023 22:50:50'!
test300MoveMethodShouldChangeSenders
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^self m1.'.
	sourceClass compile: 'm1 ^1.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 22).
	.
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass >> #m1) sourceCode.
	self assert: 'senderToChange ^iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/6/2023 12:45:55'!
test301MoveMethodShouldChangeSenders
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange1 ^self m1.'.
	sourceClass compile: 'senderToChange2 ^self m1.'.
	sourceClass compile: 'm1 ^1.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange1 atIndex: 22).
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange2 atIndex: 22).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass >> #m1) sourceCode.
	self assert: 'senderToChange1 ^iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange1).
	self assert: 'senderToChange2 ^iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange2).	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/6/2023 12:49:51'!
test301MoveMethodShouldChangeSenders2
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange1 ^self m1.'.
	sourceClass compile: 'senderToChange2 ^self m1.'.
	sourceClass compile: 'm1 ^1.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange1 atIndex: 22).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass >> #m1) sourceCode.
	self assert: 'senderToChange1 ^iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange1).
	self assert: 'senderToChange2 ^self m1.' equals: (sourceClass sourceCodeAt: #senderToChange2).	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/6/2023 12:47:09'!
test302MoveMethodShouldChangeSendersTwoSends
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange self m1.^self m1.'.
	sourceClass compile: 'm1 ^1.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 21).
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 30).
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass >> #m1) sourceCode.
	self assert: 'senderToChange iv1 m1.^iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/6/2023 12:50:27'!
test302MoveMethodShouldChangeSendersTwoSends2
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange self m1.^self m1.'.
	sourceClass compile: 'm1 ^1.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 30).
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass >> #m1) sourceCode.
	self assert: 'senderToChange self m1.^iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/6/2023 12:47:41'!
test303MoveMethodShouldChangeSendersWithOneColaborator
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^self m1: 1 other: 1.'.
	sourceClass compile: 'm1: anInt1 other: anInt2 ^1+anInt1+anInt2.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 21).
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1:other: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt1 other: anInt2 ^1+anInt1+anInt2.' equals: (targetClass >> #m1:other:) sourceCode.
	self assert: 'senderToChange ^iv1 m1: 1 other: 1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/6/2023 12:48:13'!
test304MoveMethodShouldChangeSendersAndPassSelf
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^self m1.'.
	sourceClass compile: 'm1 ^self.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 21).
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject.' equals: (targetClass >> #m1:) sourceCode.
	self assert: 'senderToChange ^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/6/2023 12:48:28'!
test305MoveMethodShouldChangeSendersAndPassSelfAndAddOne
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^self m1 + 1.'.
	sourceClass compile: 'm1 ^self.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 21).
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject.' equals: (targetClass >> #m1:) sourceCode.
	self assert: 'senderToChange ^(iv1 m1: self) + 1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoring methodsFor: 'initialization' stamp: 'mc 5/30/2023 02:52:27'!
initializeMethodNamed: aMethodName from: aSourceClass to: aTargetClass accessingThrough: anInstanceVariable  changingSenders: aCollectionOfSendersToChange
	methodName := aMethodName.
	sourceClass := aSourceClass.
	targetClass := aTargetClass.
	instanceVariable := anInstanceVariable.
	collectionOfSendersToChange := aCollectionOfSendersToChange
	! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/6/2023 18:31:19'!
apply
	| compiledMethodToMove xxxxreplacerResult |
	compiledMethodToMove := sourceClass methodDict at: methodName.
	xxxxreplacerResult := self replaceDependenciesFromSource: compiledMethodToMove.
	
	xxxxreplacerResult readAccessOnInstanceVariables do: [ :anInstanceVariable | self createGetterIfNotExistsFor: anInstanceVariable ].
	xxxxreplacerResult writeAccessOnInstanceVariables do: [ :anInstanceVariable | self createSetterIfNotExistsFor: anInstanceVariable ].
	xxxxreplacerResult readAccessOnClassVariables do: [ :aClassVariable | self createClassVariableGetterIfNotExistsFor: aClassVariable on: sourceClass ].
	xxxxreplacerResult writeAccessOnClassVariables do: [ :aClassVariable | self createClassVariableSetterIfNotExistsFor: aClassVariable on: sourceClass].
	targetClass compile: xxxxreplacerResult sourceCode.
	self replaceSendersWithResult: xxxxreplacerResult.
	"collectionOfSendersToChange do: [ :aMessageNodeReference | self replaceMessageSend: aMessageNodeReference withResult: xxxxreplacerResult ]."
	sourceClass removeSelector: methodName ! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/3/2023 00:21:53'!
createClassVariableGetterIfNotExistsFor: aClassVariable on: aClass
	^ aClass compile: aClassVariable uncapitalized, String newLineString, String tab, '^', aClassVariable capitalized, '.'! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/3/2023 00:23:58'!
createClassVariableSetterIfNotExistsFor: aClassVariable on: aClass
"sourceClass compile: anInstanceVariable, ': anObject', String newLineString, String tab, '^', anInstanceVariable, ' := anObject.'"
	^aClass compile: aClassVariable uncapitalized, ': anObject', String newLineString, String tab, '^', aClassVariable capitalized, ' := anObject.'! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/3/2023 00:20:32'!
createGetterFor: anInstanceVariable on: aClass

	^aClass compile: anInstanceVariable, String newLineString, String tab, '^', anInstanceVariable, '.'! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/3/2023 00:21:02'!
createGetterIfNotExistsFor: anInstanceVariable
	
	| getterCandidate |
	getterCandidate := sourceClass methodDict at: anInstanceVariable asSymbol ifAbsent:[^self createGetterFor: anInstanceVariable on: sourceClass].
	(getterCandidate isGetterOf: anInstanceVariable at: (sourceClass instVarNames indexOf: anInstanceVariable)) 
		ifFalse: 	[self createGetterFor: anInstanceVariable on: sourceClass]! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/24/2023 23:50:24'!
createSetterChangeMeFor: anInstanceVariable 
	^ sourceClass compile: anInstanceVariable, '_SETTER_CHANGE_ME: anObject', String newLineString, String tab, '^', anInstanceVariable, ' := anObject.'! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/3/2023 00:25:25'!
createSetterFor: anInstanceVariable on: aClass

	^aClass compile: anInstanceVariable, ': anObject', String newLineString, String tab, '^', anInstanceVariable, ' := anObject.'! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/3/2023 00:25:40'!
createSetterIfNotExistsFor: anInstanceVariable
	
	| setterCandidate |
	setterCandidate := sourceClass methodDict at: (anInstanceVariable, ':') asSymbol ifAbsent:[^self createSetterFor: anInstanceVariable on: sourceClass].
	(self method: setterCandidate isSetterOf: anInstanceVariable)
	"(setterCandidate isSetterOf: anInstanceVariable at: (sourceClass instVarNames indexOf: anInstanceVariable)) "
		ifFalse: 	[self createSetterChangeMeFor: anInstanceVariable]! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/24/2023 01:05:36'!
method: setterCandidate isSetterOf: anInstVarName 
	
	| anInstVarIndex varIndexCode scanner |
	"self halt."
	anInstVarIndex := sourceClass instVarNames indexOf: anInstVarName.
	"setterCandidate selector = (anInstanceVariable, ':') ifFalse: [ ^false ].
	"
	
	"^setterCandidate isSetterOf: anInstanceVariable at: varIndex."
	
	"self isQuick ifTrue: [ ^false ]."
	setterCandidate selector = (anInstVarName, ':') ifFalse: [ ^false ].
	
	"I could have use the AST of the method, but parsing the source code could generate errors
	that it is why I decided to check the bytecodes - Hernan"
	varIndexCode := anInstVarIndex - 1.
	scanner := InstructionStream on: setterCandidate.
	scanner nextByte = 16r10 ifFalse: [ ^false ].
	scanner movePcForward.
	(setterCandidate writesFieldCode: varIndexCode with: scanner nextByte using: scanner) ifFalse: [ ^false ].
	scanner movePcForward.
	^scanner nextByte = 16r7C! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/6/2023 12:55:24'!
replace: aCollectionOfMessageNodeToReplace on: aCompiledMethod withResult: xxxxreplacerResult
	| replacer newCode |
	replacer := XXXXSenderReplacer of: methodName in: aCompiledMethod withReceiver: instanceVariable andResult: xxxxreplacerResult nodesToBeRepalced: aCollectionOfMessageNodeToReplace.
	newCode := replacer value.
	aCompiledMethod methodClass compile: newCode sourceCode! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/3/2023 00:28:23'!
replaceDependenciesFromSource: compiledMethod
	| replacer |
	replacer := XXXXReplacerForNode for: compiledMethod.
	^replacer apply.! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/6/2023 13:26:01'!
replaceMessageSend: aMessageNodeReference withResult: xxxxreplacerResult 
	| replacer newCode |
	replacer := XXXXSenderReplacer of: methodName in: aMessageNodeReference compiledMethod withReceiver: instanceVariable andResult: xxxxreplacerResult.
	newCode := replacer value.
	aMessageNodeReference compiledMethod methodClass compile: newCode sourceCode! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/4/2023 14:49:42'!
replaceMessageSends: aCompiledMethod withResult: xxxxreplacerResult 
	| replacer newCode |
	replacer := XXXXSenderReplacer of: methodName in: aCompiledMethod withReceiver: instanceVariable andResult: xxxxreplacerResult.
	newCode := replacer value.
	aCompiledMethod methodClass compile: newCode sourceCode! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/7/2023 02:38:30'!
replaceSendersWithResult: xxxxreplacerResult 
	| methodsToChange |
	methodsToChange := collectionOfSendersToChange groupBy: [ :aMessageNodeReference | aMessageNodeReference methodReference].
	methodsToChange keysAndValuesDo: [ :aMethodReference :aCollectionOfMessageNodesToChange |
			(XXXXMethodChanger 
				method: aMethodReference 
				nodesToChange: aCollectionOfMessageNodesToChange 
				instanceVariable: instanceVariable
				withResult: xxxxreplacerResult) value.
			
			 ].
	! !

!MoveMethodRefactoring class methodsFor: 'instance creation' stamp: 'mc 5/30/2023 02:50:36'!
methodNamed: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable changingSenders: aCollectionOfSendersToChange   

	
	(targetClass isNil) ifTrue: [ self refactoringError: self targetClassShouldNotBeNilErrorMessage ].
	(sourceClass isNil) ifTrue: [ self refactoringError: self sourceClassShouldNotBeNilErrorMessage].
	(methodName isNil) ifTrue: [ self refactoringError: self methodShouldNotBeNilErrorMessage ].
	(instanceVariable isNil) ifTrue: [ self refactoringError: self instanceVariableToAccessingThroughShouldNotBeNilErrorMessage ].
	(sourceClass includesSelector: methodName) ifFalse: [ self refactoringError: self methodShouldExistsOnSourceClassErrorMessage ].
	(sourceClass allInstVarNames includes: instanceVariable) ifFalse: [ self refactoringError: self instanceVariableToAccessingThroughShouldExistsInSourceClassErrorMessage ].
	(targetClass includesSelector: methodName) ifTrue: [ self refactoringError: self methodShouldNotExistsOnTargertClassErrorMessage ].
	^self new initializeMethodNamed: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable  changingSenders: aCollectionOfSendersToChange   ! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 4/5/2023 02:12:56'!
instanceVariableToAccessingThroughShouldExistsInSourceClassErrorMessage
	^'InstanceVariable to accessing through should exists in source class'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 4/5/2023 02:09:17'!
instanceVariableToAccessingThroughShouldNotBeNilErrorMessage
	^'InstanceVariable to accessing through should not be nil'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 4/4/2023 00:28:01'!
methodShouldExistsOnSourceClassErrorMessage
	^'Method should exists on source class'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 4/4/2023 18:59:52'!
methodShouldNotBeNilErrorMessage
	^'Method should not be nil'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 4/4/2023 01:27:48'!
methodShouldNotExistsOnTargertClassErrorMessage
	^'Method should not exists on targert class'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 4/4/2023 18:26:41'!
sourceClassShouldNotBeNilErrorMessage
	^'Source class should not be nil'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 4/4/2023 18:23:46'!
targetClassShouldNotBeNilErrorMessage
	^'Target class should not be nil'! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 6/3/2023 23:57:49'!
methodWithSelfReferences
	^methodWithSelfReferences! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 5/24/2023 17:43:48'!
readAccessOnClassVariables
	^readAccessOnClassVariables ! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 4/17/2023 23:02:43'!
readAccessOnInstanceVariables
	^readAccessOnInstanceVariables ! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 6/3/2023 02:14:42'!
replaceMessageSendsOf: aMethodName in: aCompiledMethod withReceiver: anInstanceVariable 
	| replacer newCode |
	replacer := XXXXSenderReplacer of: aMethodName in: aCompiledMethod withReceiver: anInstanceVariable .
	newCode := replacer value.
	aCompiledMethod methodClass compile: newCode! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 4/17/2023 23:03:43'!
sourceCode
	^sourceCode ! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 5/28/2023 04:19:34'!
writeAccessOnClassVariables
	^writeAccessOnClassVariables ! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 4/17/2023 23:03:25'!
writeAccessOnInstanceVariables
	^writeAccessOnInstanceVariables! !

!XXXXReplacerResult methodsFor: 'initialization' stamp: 'mc 6/3/2023 00:34:55'!
initializeNewWith: newCode modifiedReads: modifiedReads modifiedWrites: modifiedWrites hasSuperReferences: aBoolean hasSelfReferences: aBoolean2 modifiedClassReads: modifiedClassReads modifiedClassWrites: modifiedClassWrites 
	sourceCode := newCode.
	readAccessOnInstanceVariables := modifiedReads.
	writeAccessOnInstanceVariables := modifiedWrites.
	methodWithSuperReferences := aBoolean.
	readAccessOnClassVariables := modifiedClassReads.
	writeAccessOnClassVariables := modifiedClassWrites.
	methodWithSelfReferences := aBoolean2.! !

!XXXXReplacerResult class methodsFor: 'instance creation' stamp: 'mc 6/3/2023 00:33:17'!
newWith: newCode modifiedReads: modifiedReads modifiedWrites: modifiedWrites hasSuperReferences: aBoolean hasSelfReferences: aBoolean2 modifiedClassReads: modifiedClassReads modifiedClassWrites: modifiedClassWrites 
	^self new initializeNewWith: newCode modifiedReads: modifiedReads modifiedWrites: modifiedWrites hasSuperReferences: aBoolean hasSelfReferences: aBoolean2 modifiedClassReads: modifiedClassReads modifiedClassWrites: modifiedClassWrites ! !

!XXXXSenderReplacerResult methodsFor: 'initialization' stamp: 'mc 6/4/2023 14:49:20'!
initializeNewWith: aSourceCode 
	sourceCode := aSourceCode.! !

!XXXXSenderReplacerResult methodsFor: 'public' stamp: 'mc 6/4/2023 14:50:19'!
sourceCode
	^sourceCode! !

!XXXXSenderReplacerResult class methodsFor: 'instance creation' stamp: 'mc 6/4/2023 14:48:58'!
newWith: aSourceCode 
	^self new initializeNewWith: aSourceCode  ! !
