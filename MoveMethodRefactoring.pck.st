'From Cuis 6.0 [latest update: #5962] on 6 September 2023 at 2:10:46 am'!
'Description '!
!provides: 'MoveMethodRefactoring' 1 54!
SystemOrganization addCategory: 'MoveMethodRefactoring'!


!classDefinition: #XXXXNeedParameterName category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #XXXXNeedParameterName
	instanceVariableNames: 'needParameterName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXNeedParameterName class' category: 'MoveMethodRefactoring'!
XXXXNeedParameterName class
	instanceVariableNames: ''!

!classDefinition: #XXXXReplacerForNode category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #XXXXReplacerForNode
	instanceVariableNames: 'compiledMethod intervalsToReject node intervalsToModify nodeInterval nodeOffsetInSourceCode readAccessOnInstanceVariables writeAccessOnInstanceVariables methodHasSuperReferences readAccessOnClassVariables writeAccessOnClassVariables methodHasSelfReferences parameterNeeded'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXReplacerForNode class' category: 'MoveMethodRefactoring'!
XXXXReplacerForNode class
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
	instanceVariableNames: 'methodName sourceClass targetClass collectionOfSendersToChange instanceVariable parameterKeyword parameterNeeded'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodRefactoring class' category: 'MoveMethodRefactoring'!
MoveMethodRefactoring class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodApplier category: 'MoveMethodRefactoring'!
RefactoringApplier subclass: #MoveMethodApplier
	instanceVariableNames: 'model methodReference methodToMove sourceClass accessingThroughinstanceVariableName targetClass scopeChoice sendsToChange shouldShowChanges wizardStepWindow extraParameter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodApplier class' category: 'MoveMethodRefactoring'!
MoveMethodApplier class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodExtraParameterNeeded category: 'MoveMethodRefactoring'!
Object subclass: #MoveMethodExtraParameterNeeded
	instanceVariableNames: 'parameterName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodExtraParameterNeeded class' category: 'MoveMethodRefactoring'!
MoveMethodExtraParameterNeeded class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodExtraParameterNeededAndExtraKeyword category: 'MoveMethodRefactoring'!
Object subclass: #MoveMethodExtraParameterNeededAndExtraKeyword
	instanceVariableNames: 'parameterName extraKeyword'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodExtraParameterNeededAndExtraKeyword class' category: 'MoveMethodRefactoring'!
MoveMethodExtraParameterNeededAndExtraKeyword class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodNonExtraParameterNeeded category: 'MoveMethodRefactoring'!
Object subclass: #MoveMethodNonExtraParameterNeeded
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodNonExtraParameterNeeded class' category: 'MoveMethodRefactoring'!
MoveMethodNonExtraParameterNeeded class
	instanceVariableNames: ''!

!classDefinition: #TesisMoveMethodRefactoringMenu category: 'MoveMethodRefactoring'!
Object subclass: #TesisMoveMethodRefactoringMenu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'TesisMoveMethodRefactoringMenu class' category: 'MoveMethodRefactoring'!
TesisMoveMethodRefactoringMenu class
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


!XXXXNeedParameterName methodsFor: 'as yet unclassified' stamp: 'mc 8/24/2023 23:50:36'!
initialize
	needParameterName := false.
	super initialize.! !

!XXXXNeedParameterName methodsFor: 'as yet unclassified' stamp: 'mc 8/24/2023 23:53:43'!
needParameterName
	^needParameterName! !

!XXXXNeedParameterName methodsFor: 'visiting' stamp: 'mc 8/29/2023 01:27:53'!
visitInstanceVariableNode: anInstanceVariableNode 
	needParameterName := true.! !

!XXXXNeedParameterName methodsFor: 'visiting' stamp: 'mc 8/31/2023 23:56:17'!
visitLiteralVariableNode: aLiteralVariableNode 
	needParameterName := true! !

!XXXXNeedParameterName methodsFor: 'visiting' stamp: 'mc 8/24/2023 23:53:27'!
visitVariableNode: aVariableNode 
	needParameterName := true.! !

!XXXXReplacerForNode methodsFor: 'initialization' stamp: 'mc 9/3/2023 02:54:00'!
initializeFor: aCompiledMethod rejectingIntervals: aFewIntervalsToReject onNode: aNodeToGetCode parameterNeeded: aParameterNeeded 
	compiledMethod := aCompiledMethod.
	intervalsToReject := aFewIntervalsToReject.
	node := aNodeToGetCode.
	intervalsToModify := OrderedCollection new.
	readAccessOnInstanceVariables := Set new.
	writeAccessOnInstanceVariables := Set new.
	methodHasSuperReferences := false.
	methodHasSelfReferences := false.
	readAccessOnClassVariables := Set new.
	writeAccessOnClassVariables := Set new.
	parameterNeeded := aParameterNeeded ! !

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

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 9/3/2023 02:54:45'!
newSenderFor: aMessageNode
	|  newSend argumentsCode argumentIndex replacer replacerResult argumentNode |
	argumentsCode := OrderedCollection new.
	argumentIndex := 1.
	"self halt."
	aMessageNode selector key keywords do: [ :aKeyword | 
		argumentNode := aMessageNode argumentsInEvaluationOrder at: argumentIndex.
		replacer := XXXXReplacerForNode 
					for: compiledMethod
					rejectingIntervals: intervalsToReject
					onNode: argumentNode
					parameterNeeded: parameterNeeded.
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

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 9/3/2023 02:54:45'!
visitAssignmentNode: anAssignmentNode 
	| assigmentValue completeRangesOfassigmentNode nodeXXXReplacer resultForValue setterSelectorAsString |
	"self halt."
	anAssignmentNode variable isTemp ifTrue: [anAssignmentNode value accept: self. ^self].
	completeRangesOfassigmentNode := self firstUnseenIntervalFor: anAssignmentNode.
	nodeXXXReplacer := XXXXReplacerForNode 
					for: compiledMethod
					rejectingIntervals: intervalsToReject 
					onNode: anAssignmentNode value
					parameterNeeded: parameterNeeded.
					
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

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 9/1/2023 00:35:54'!
visitInstanceVariableNode: anInstanceVariableNode 
	| sourceCodeForInterval anInterval |
	"self halt."
	anInterval := self firstUnseenIntervalFor: anInstanceVariableNode.
	sourceCodeForInterval := parameterNeeded parameterName, ' ', anInstanceVariableNode key.
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

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 9/5/2023 00:50:44'!
visitVariableNode: aVariableNode 
	| anInterval sourceCodeForInterval |
	"self halt."
	anInterval := self firstUnseenIntervalFor: aVariableNode ifAbsent: [^self].
	sourceCodeForInterval := parameterNeeded parameterName.
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

!XXXXReplacerForNode methodsFor: 'accessing' stamp: 'mc 9/1/2023 01:01:06'!
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
		intervalsToModify add: (parameterNeeded associationToModifySelectorAndArgumentsOn: compiledMethod)
	].
	"self halt."
	intervalsToModify sort: [ :left :right | left key first < right key first ].
	newCode := newCodeForNode copyReplacing: intervalsToModify.
	result := XXXXReplacerResult newWith: newCode modifiedReads: readAccessOnInstanceVariables modifiedWrites: writeAccessOnInstanceVariables hasSuperReferences: methodHasSuperReferences hasSelfReferences: methodHasSelfReferences modifiedClassReads: readAccessOnClassVariables modifiedClassWrites:writeAccessOnClassVariables .
	^result! !

!XXXXReplacerForNode class methodsFor: 'instance creation' stamp: 'mc 9/3/2023 02:55:12'!
for: compiledMethod parameterNeeded: parameterNeeded
	^self 
		for: compiledMethod
		rejectingIntervals: OrderedCollection new
		onNode: compiledMethod methodNode
		parameterNeeded: parameterNeeded.
	! !

!XXXXReplacerForNode class methodsFor: 'instance creation' stamp: 'mc 9/3/2023 02:54:45'!
for: aCompiledMethod rejectingIntervals: aFewIntervalsToReject onNode: aNodeToGetCode parameterNeeded: parameterNeeded
	^self new 
		initializeFor: aCompiledMethod
		rejectingIntervals: aFewIntervalsToReject
		onNode: aNodeToGetCode
		parameterNeeded: parameterNeeded! !

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

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/14/2023 23:49:44'!
test001MethodShouldExistsOnSourceClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	
	
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring methodShouldExistsOnSourceClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/14/2023 23:49:43'!
test002MethodShouldNotExistsOnTargetClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	targetClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/5/2023 01:02:48'!
test002MethodWithNewParameterShouldNotExistsOnTargetClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv2' .
	targetClass compile: 'm1: anObject ^1' .
	
	self
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1 
				from: sourceClass 
				to: targetClass 
				accessingThrough: 'iv1'
				parameterNeeded: (MoveMethodExtraParameterNeeded 
									parameterName: 'originalObject') ] 
		failsWith: [
			MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/6/2023 02:07:38'!
test002MethodWithNewParameterShouldNotExistsOnTargetClass2
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1: anInt ^iv2'.
	targetClass compile: 'm1: anInt originalObject: originalObject ^originalObject + anInt' .
	
	self
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1: 
				from: sourceClass 
				to: targetClass 
				accessingThrough: 'iv1'
				parameterNeeded: (MoveMethodExtraParameterNeededAndExtraKeyword
									parameterName: 'originalObject'
									extraKeyword: 'originalObject') ] 
		failsWith: [
			MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/14/2023 23:49:43'!
test003TargetClassShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := nil.
	sourceClass compile: 'm1 ^1' .
	
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring targetClassShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/14/2023 23:49:44'!
test004SourceClassShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := nil.
	targetClass := self createClassNamed: #TargetClass.
	
	
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring sourceClassShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/14/2023 23:49:43'!
test005MethodShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: nil from: sourceClass to: targetClass accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring methodShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/14/2023 23:49:44'!
test006InstanceVariableToAccessingThroughShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: nil ] 
		failsWith: [MoveMethodRefactoring instanceVariableToAccessingThroughShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/22/2023 22:55:18'!
test007InstanceVariableToAccessingThroughShouldExistsInSourceClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	self
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1 
				from: sourceClass 
				to: targetClass 
				accessingThrough: 'iv2' ] 
		failsWith: [
			MoveMethodRefactoring instanceVariableToAccessingThroughShouldExistsInSourceClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/22/2023 23:25:11'!
test008NameForANewParameterShouldBeAsserted
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^self' .
	
	self
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1 
				from: sourceClass 
				to: targetClass 
				accessingThrough: 'iv1' ] 
		failsWith: [
			MoveMethodRefactoring nameForNewParameterShouldBeProvidedClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test009NameForANewParameterKeywordShouldBeAsserted
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1: anInt ^self' .
	
	self
		assertCreation: [
			MoveMethodRefactoring 
		methodNamed: #m1: 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject') ] 
		failsWith: [
			MoveMethodRefactoring nameForNewParameterKeywordShouldBeProvidedClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/29/2023 01:26:24'!
test010NameForNewParameterWhenInstanceVariable
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv2.' .
	
	self
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1
				from: sourceClass
				to: targetClass
				accessingThrough: 'iv1'. ] 
		failsWith: [
			MoveMethodRefactoring nameForNewParameterShouldBeProvidedClassErrorMessage].
! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test011NoNameForNewParameter01
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1.' .
	
	self
		assertCreation: [
			MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'extraParameterName'). ] 
		failsWith: [
			MoveMethodRefactoring nameForNewParameterShouldNotBeProvidedClassErrorMessage].
! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 02:59:28'!
test012NoNameForNewParameter01
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv2.' .
	
	self
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1
				from: sourceClass
				to: targetClass
				accessingThrough: 'iv1'
				parameterNeeded: (MoveMethodExtraParameterNeededAndExtraKeyword 
								parameterName: 'extraParameterName' 
								extraKeyword: 'extraKeywordName'). ] 
		failsWith: [
			MoveMethodRefactoring nameForNewParameterKeywordShouldNotBeProvidedClassErrorMessage].
! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/14/2023 23:49:44'!
test100CanMoveMethodWithoutReferences
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1.' .
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' .
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass compiledMethodAt: #m1) sourceCode.
	self assert: 'm1
	^iv1 m1.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/14/2023 23:49:43'!
test101CanMoveMethodWithoutReferences
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^2.' .
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' .
	refactoring apply.
	
	self assert: 'm1 ^2.' equals: (targetClass compiledMethodAt: #m1) sourceCode.
	self assert: 'm1
	^iv1 m1.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test102CanMoveMethodWhenReferencesAnInstanceVariable
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv2.' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: #iv1 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject') .
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv2.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv2', String newLineString, String tab, '^iv2.' equals: (sourceClass compiledMethodAt: #iv2) sourceCode.
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test103CanMoveMethodWhenReferencesAnInstanceVariableForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3.' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject') .
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv3', String newLineString, String tab, '^iv3.' equals: (sourceClass compiledMethodAt: #iv3) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test104CanMoveMethodWhenReferencesTwoInstanceVariableForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3 + iv4.' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3 + sourceObject iv4.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv3', String newLineString, String tab, '^iv3.' equals: (sourceClass compiledMethodAt: #iv3) sourceCode.
	self assert: 'iv4', String newLineString, String tab, '^iv4.' equals: (sourceClass compiledMethodAt: #iv4) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test105CanMoveMethodWhenReferencesAnInstanceVariableForWriting
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3 := 1.' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3: 1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv3: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass compiledMethodAt: #iv3:) sourceCode.
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 02:59:28'!
test106CanMoveMethodWhenReferencesTwoInstanceVariableForWriting
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 iv3 := iv4 := 1.' .
	
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1 
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'iv1' 
					parameterNeeded: (MoveMethodExtraParameterNeeded 
										parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject sourceObject iv3: (sourceObject iv4: 1).' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv3: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass compiledMethodAt: #iv3:) sourceCode.
	self assert: 'iv4: anObject', String newLineString, String tab, '^iv4 := anObject.' equals: (sourceClass compiledMethodAt: #iv4:) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test107CanMoveMethodWhenReferencesTwoInstanceVariableForWritingAndOneForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4 iv5'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 iv3 := iv4 := iv5.' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: #iv1 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject') .
	refactoring apply.
	
	self assert: 'm1: sourceObject sourceObject iv3: (sourceObject iv4: sourceObject iv5).' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 02:59:28'!
test108CanMoveMethodWhenReferencesAnInstanceVariableAndHasAParameter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1: anObject ^iv2.' .
	
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1:
					from: sourceClass
					to: targetClass
					accessingThrough: 'iv1'
					parameterNeeded: (MoveMethodExtraParameterNeededAndExtraKeyword 
										parameterName: 'sourceObject' 
										extraKeyword: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: anObject sourceObject: sourceObject ^sourceObject iv2.' equals: (targetClass compiledMethodAt: #m1:sourceObject:) sourceCode.
	self assert: 'm1: anObject
	^iv1 m1: anObject sourceObject: self.' equals: (sourceClass sourceCodeAt: #m1:).
	self deny: (sourceClass includesSelector: #iv1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test109AfterMovingMethodWhichReferencesAnInstanceVariableForReadingShouldUseTheExistentGetter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3 ^iv3.'.
	sourceClass compile: 'm1 ^iv3 + 1.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'iv3 ^iv3.' equals: (sourceClass compiledMethodAt: #iv3) sourceCode.
	self assert: 'm1: sourceObject ^sourceObject iv3 + 1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test110AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter___wip
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3: anObject ^iv3 := anObject.'.
	sourceClass compile: 'm1 ^iv3 := 1.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'iv3: anObject ^iv3 := anObject.' equals: (sourceClass compiledMethodAt: #iv3:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test111AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter___wip2
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3: anObject iv3 := anObject.'.
	sourceClass compile: 'm1 ^iv3 := 1.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3_SETTER_CHANGE_ME: 1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'iv3_SETTER_CHANGE_ME: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass compiledMethodAt: #iv3_SETTER_CHANGE_ME:) sourceCode.
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test112AfterMovingMethodWhichReferencesAnClassVariableForReadingShouldCreateGetter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^Icv1.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject icv1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'icv1', String newLineString, String tab, '^Icv1.' equals: (sourceClass compiledMethodAt: #icv1) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test113AfterMovingMethodWhichReferencesAnClassVariableForReadingShouldCreateSetter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^Icv1 := 1.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject icv1: 1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'icv1: anObject', String newLineString, String tab, '^Icv1 := anObject.' equals: (sourceClass compiledMethodAt: #icv1:) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/5/2023 00:45:57'!
test114ParameterNameShouldBeRespected
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3 ^iv3.'.
	sourceClass compile: 'm1: anInt ^iv3 + anInt.'.
	
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1:
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'iv1'
					parameterNeeded: (MoveMethodExtraParameterNeededAndExtraKeyword 
										parameterName: 'originalObject' 
										extraKeyword: 'extractIv3From').
	refactoring apply.
	
	self assert: 'iv3 ^iv3.' equals: (sourceClass compiledMethodAt: #iv3) sourceCode.
	self assert: 'm1: anInt extractIv3From: originalObject ^originalObject iv3 + anInt.' equals: (targetClass sourceCodeAt: #m1:extractIv3From:).
	self assert: 'm1: anInt
	^iv1 m1: anInt extractIv3From: self.' equals: (sourceClass sourceCodeAt: #m1:).
	self deny: (sourceClass includesSelector: #iv1).! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test115ParameterNameShouldBeRespected
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3 ^iv3.'.
	sourceClass compile: 'm1 ^iv3 + 1.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'originalObject').
	refactoring apply.
	
	self assert: 'iv3 ^iv3.' equals: (sourceClass compiledMethodAt: #iv3) sourceCode.
	self assert: 'm1: originalObject ^originalObject iv3 + 1.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/5/2023 00:48:11'!
test116ParameterNameShouldBeRespectedWithSelf
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'justOne ^1.'.
	sourceClass compile: 'm1 ^self justOne.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'originalObject').
	refactoring apply.
	
	self assert: 'm1: originalObject ^originalObject justOne.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/14/2023 23:49:43'!
test199TmpVariablesShoulNotBeAffected
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 |tmp| ^tmp:=1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' .
	refactoring apply.
	
	self assert: 'm1 |tmp| ^tmp:=1.' equals: (targetClass compiledMethodAt: #m1) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test200CanMoveMethodWhenSendsMessageToSelf
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'justOne ^1.'.
	sourceClass compile: 'm1 ^self justOne.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject justOne.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test200CanMoveMethodWhenSendsUnaryMessageToSuper
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'justOne ^1.'.
	sourceClass compile: 'justOne ^2.'.
	sourceClass compile: 'm1 ^super justOne.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_justOne.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'CHANGE_ME_super_justOne', String newLineString, String tab, '^super justOne.' equals: (sourceClass compiledMethodAt: #CHANGE_ME_super_justOne) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test201CanMoveMethodWhenSendsKeywordMessageToSuperWithOneColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger ^2+aSmallinteger.'.
	sourceClass compile: 'm1 ^super increment: 1.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_increment: 1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass compiledMethodAt: #CHANGE_ME_super_increment:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test202CanMoveMethodWhenSendsKeywordMessageToSuperWithTwoColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger andIncrement: anotherSmallinteger ^1+aSmallinteger+anotherSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger andIncrement: anotherSmallinteger ^2+aSmallinteger+anotherSmallinteger.'.
	sourceClass compile: 'm1 ^super increment: 1 andIncrement: 2.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_increment: 1 andIncrement: 2.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'CHANGE_ME_super_increment: arg1 andIncrement: arg2', String newLineString, String tab, '^super increment: arg1 andIncrement: arg2.' equals: (sourceClass compiledMethodAt: #CHANGE_ME_super_increment:andIncrement:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test203CanMoveMethodWhenSendsKeywordMessageToSuperWithOneInstVarAsColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv2 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger ^2+aSmallinteger.'.
	sourceClass compile: 'm1 ^super increment: iv2.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_increment: sourceObject iv2.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass compiledMethodAt: #CHANGE_ME_super_increment:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test204CanMoveMethodWhenSendsKeywordMessageToSuperWithOneInstVarAsColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv2 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger ^2+aSmallinteger.'.
	sourceClass compile: 'm1 ^super increment: (iv2 := 1).'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_increment: (sourceObject iv2: 1).' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass compiledMethodAt: #CHANGE_ME_super_increment:) sourceCode.
	self assert: 'iv2: anObject', String newLineString, String tab, '^iv2 := anObject.' equals: (sourceClass compiledMethodAt: #iv2:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 9/3/2023 04:00:35'!
test205CanMoveMethodWhenSendsKeywordMessageToSuperWithOneTmpVarAsColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger ^2+aSmallinteger.'.
	sourceClass compile: 'm1 |asd| ^super increment: asd.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (MoveMethodExtraParameterNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject |asd| ^sourceObject CHANGE_ME_super_increment: asd.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass compiledMethodAt: #CHANGE_ME_super_increment:) sourceCode! !

!MoveMethodRefactoring methodsFor: 'initialization' stamp: 'mc 9/3/2023 02:57:54'!
initializeMethodNamed: aMethodName from: aSourceClass to: aTargetClass accessingThrough: anInstanceVariable changingSenders: aCollectionOfSendersToChange parameterNeeded: anExtraParameterNeeded 
	methodName := aMethodName.
	sourceClass := aSourceClass.
	targetClass := aTargetClass.
	instanceVariable := anInstanceVariable.
	collectionOfSendersToChange := aCollectionOfSendersToChange.
	parameterNeeded := anExtraParameterNeeded ! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 9/3/2023 02:50:25'!
apply
	| compiledMethodToMove xxxxreplacerResult selectorInCode |
	compiledMethodToMove := sourceClass methodDict at: methodName.
	xxxxreplacerResult := self replaceDependenciesFromSource: compiledMethodToMove.
	
	
	targetClass compile: xxxxreplacerResult sourceCode.
	xxxxreplacerResult readAccessOnInstanceVariables do: [ :anInstanceVariable | self createGetterIfNotExistsFor: anInstanceVariable ].
	xxxxreplacerResult writeAccessOnInstanceVariables do: [ :anInstanceVariable | self createSetterIfNotExistsFor: anInstanceVariable ].
	xxxxreplacerResult readAccessOnClassVariables do: [ :aClassVariable | self createClassVariableGetterIfNotExistsFor: aClassVariable on: sourceClass ].
	xxxxreplacerResult writeAccessOnClassVariables do: [ :aClassVariable | self createClassVariableSetterIfNotExistsFor: aClassVariable on: sourceClass].
	selectorInCode := parameterNeeded newSenderFor: compiledMethodToMove.
	
	sourceClass compile: compiledMethodToMove selectorAndArgumentsAsString, String newLineString, String tab,'^', instanceVariable, ' ', selectorInCode, '.'.! !

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

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 9/3/2023 02:55:12'!
replaceDependenciesFromSource: compiledMethod
	| replacer |
	replacer := XXXXReplacerForNode for: compiledMethod parameterNeeded: parameterNeeded .
	^replacer apply.! !

!MoveMethodRefactoring class methodsFor: 'instance creation' stamp: 'mc 9/3/2023 02:59:28'!
methodNamed: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable    

	^self 
		methodNamed: methodName 
		from: sourceClass
		to: targetClass
		accessingThrough: instanceVariable
		parameterNeeded: MoveMethodNonExtraParameterNeeded new
		! !

!MoveMethodRefactoring class methodsFor: 'instance creation' stamp: 'mc 9/6/2023 01:47:03'!
methodNamed: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable parameterNeeded: anExtraParameterNeeded  
	
	
	(targetClass isNil) ifTrue: [ self refactoringError: self targetClassShouldNotBeNilErrorMessage ].
	(sourceClass isNil) ifTrue: [ self refactoringError: self sourceClassShouldNotBeNilErrorMessage].
	(methodName isNil) ifTrue: [ self refactoringError: self methodShouldNotBeNilErrorMessage ].
	(instanceVariable isNil) ifTrue: [ self refactoringError: self instanceVariableToAccessingThroughShouldNotBeNilErrorMessage ].
	(sourceClass includesSelector: methodName) ifFalse: [ self refactoringError: self methodShouldExistsOnSourceClassErrorMessage ].
	(sourceClass allInstVarNames includes: instanceVariable) ifFalse: [ self refactoringError: self instanceVariableToAccessingThroughShouldExistsInSourceClassErrorMessage ].
	(targetClass includesSelector: methodName) ifTrue: [ self refactoringError: self methodShouldNotExistsOnTargertClassErrorMessage ].
	
	anExtraParameterNeeded assertIfCanMove: methodName from: sourceClass to: targetClass.
	
	^self new 
		initializeMethodNamed: methodName 
		from: sourceClass 
		to: targetClass 
		accessingThrough: instanceVariable 
		changingSenders: OrderedCollection new 
		parameterNeeded: anExtraParameterNeeded 
		! !

!MoveMethodRefactoring class methodsFor: 'instance creation' stamp: 'mc 8/24/2023 23:51:57'!
needParameterNameToMove: methodName from: sourceClass 
	| compiledMethod methodNode needParameterName needParameterNameVisitor |
	compiledMethod := sourceClass compiledMethodAt: methodName.
	methodNode := compiledMethod methodNode.
	needParameterName := false.
	needParameterNameVisitor := XXXXNeedParameterName new.
	methodNode accept: needParameterNameVisitor.
	^needParameterNameVisitor needParameterName! !

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

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 8/25/2023 00:23:07'!
nameForNewParameterKeywordShouldBeProvidedClassErrorMessage
	^'name for new parameter keyword should be provided'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 9/1/2023 00:16:41'!
nameForNewParameterKeywordShouldNotBeProvidedClassErrorMessage
	^'name for new parameter keyword should not be provided'.! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 8/24/2023 23:10:27'!
nameForNewParameterShouldBeProvidedClassErrorMessage
	^'name for new parameter should be provided.'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 8/31/2023 23:47:27'!
nameForNewParameterShouldNotBeProvidedClassErrorMessage
	^'name for new parameter should not be provided.'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 4/4/2023 18:26:41'!
sourceClassShouldNotBeNilErrorMessage
	^'Source class should not be nil'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 4/4/2023 18:23:46'!
targetClassShouldNotBeNilErrorMessage
	^'Target class should not be nil'! !

!MoveMethodApplier methodsFor: 'initialization' stamp: 'mc 8/9/2023 02:08:55'!
initializeInitializeOn: aModel forMethod: aMethodReference 
	model := aModel.
	methodReference := aMethodReference.
	shouldShowChanges := true.! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 17:50:02'!
askTargetClassName
	| targetClassNameTmp |
	targetClassNameTmp := ClassNameRequestMorph request: 'Enter target class name:' initialAnswer: '' orCancel: requestExitBlock.
	"self halt."
	targetClassNameTmp := targetClassNameTmp withoutSeparators.
	targetClass := Smalltalk at: targetClassNameTmp asSymbol ifAbsent: [Refactoring refactoringErrorClass signal: 'Cant find the target class'].! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 18:17:56'!
calculateImplementorsAndMessageSends
	self isActualScopeChoice 
		ifTrue: [ self actualImplementorsAndMessageSends ]
		ifFalse: [ 
			scopeChoice = 1 ifTrue: [ ^self implementorsAndMessageSendsForClass ].
			scopeChoice = 2 ifTrue: [ ^self implementorsAndMessageSendsForHierarchy ].
			scopeChoice = 3 ifTrue: [ ^self implementorsAndMessageSendsInCategory ].
			scopeChoice = 4 ifTrue: [ ^self implementorsAndMessageSendsInCategoryAndHierarchy ].
			scopeChoice = 5 ifTrue: [ ^self implementorsAndMessageSendsInSystem ].

			self error: 'Unknown scope option'
			]! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 17:46:55'!
chooseInstanceVariableToAccessThrough
	| vars index |
	"self halt."
	vars := sourceClass allInstVarNames sorted.
	"vars := vars reject: [ :anInstanceVariable | anInstanceVariable = instanceVariableName ]."
	vars isEmpty ifTrue: [Refactoring refactoringErrorClass signal: 'There is no instance variable to access through' ].
	
	index := (PopUpMenu labelArray: vars lines: #()) startUpWithCaption: self selectVariableLabel.
	index = 0 ifTrue: [^self endRequest].
	accessingThroughinstanceVariableName := vars at: index.! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 17:42:37'!
chooseMethodToMove
	methodToMove := methodReference selector! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 22:56:12'!
findReferencesToSelector: aMethodToMove in: aMethodReference 
	| references |

	references := Set new.
	aMethodReference notOptimizedMethodNode completeSourceRangesDo: [:aNode :ranges |
		(aNode isMessageNode and: [aNode selector key = aMethodToMove]) ifTrue: [
			ranges do: [:range  | references add: (MessageNodeReference messageNode: aNode
				selector: aMethodReference methodSymbol class: aMethodReference methodClass completeSourceRange: range)]
		]
	].

	^references.! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 22:43:16'!
implementorsAndMessageSendsForClass
	sendsToChange := OrderedCollection new.
	(sourceClass whichSelectorsReferTo: methodToMove) do: [ :aSelector |
		sendsToChange addAll: (self findReferencesToSelector: methodToMove in: (MethodReference class: sourceClass selector: aSelector))]! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/10/2023 00:55:44'!
implementorsAndMessageSendsForHierarchy
	| highestClassImplementingOldSelector |
	sendsToChange := OrderedCollection new.
	highestClassImplementingOldSelector := sourceClass highestClassImplementing: methodToMove ifNone: [ sourceClass ].
	highestClassImplementingOldSelector theNonMetaClass withAllSubclassesDo: [ :aPotentialClassToRefactor |
		aPotentialClassToRefactor isMeta ifFalse: [
			(sourceClass whichSelectorsReferTo: methodToMove) do: [ :aSelector |
				sendsToChange addAll: (self findReferencesToSelector: methodToMove in: (MethodReference class: aPotentialClassToRefactor selector: aSelector))] ]]! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/10/2023 22:46:03'!
implementorsAndMessageSendsInCategory
	| classesInCategory |
	sendsToChange := OrderedCollection new.

	classesInCategory := SystemOrganization classesAt: sourceClass category.
	classesInCategory do: [ :aPotentialClassToRefactor |
		(aPotentialClassToRefactor whichSelectorsReferTo: methodToMove) do: [ :aSelector |
			sendsToChange addAll: (self findReferencesToSelector: methodToMove in: (MethodReference class: aPotentialClassToRefactor selector: aSelector))].
	].! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/11/2023 01:24:52'!
implementorsAndMessageSendsInCategoryAndHierarchy
	| highestClassImplementingOldSelector categories classesInCategory |
	sendsToChange := OrderedCollection new.
	categories := Set new.
	highestClassImplementingOldSelector := sourceClass highestClassImplementing: methodToMove ifNone: [ sourceClass ].
	highestClassImplementingOldSelector theNonMetaClass withAllSubclassesDo: [ :aPotentialClassToRefactor |
		aPotentialClassToRefactor isMeta ifFalse: [categories add: aPotentialClassToRefactor category.]].
	
	categories do: [ :aCategory |
		classesInCategory := SystemOrganization classesAt: aCategory.
		classesInCategory do: [ :aPotentialClassToRefactor |
			(aPotentialClassToRefactor whichSelectorsReferTo: methodToMove) do: [ :aSelector |
				sendsToChange addAll: (self findReferencesToSelector: methodToMove in: (MethodReference class: aPotentialClassToRefactor selector: aSelector))].
		]]! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 18:16:04'!
isActualScopeChoice
	"TODO: Duplicated code"
	^scopeChoice isNil or: [ scopeChoice >= 6 ]! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/9/2023 18:08:50'!
messageSends: aCollectionOfMessageSends 
	sendsToChange := aCollectionOfMessageSends reject: [:aMessageNodeReference | aMessageNodeReference isMessageListTitle ]! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/9/2023 15:30:27'!
messageSetWindowClass

	^MessageSetWindow! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/8/2023 01:38:09'!
methodToMove
	^methodToMove! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/30/2023 01:38:48'!
requestRefactoringParameters
	self 
		chooseMethodToMove;
		selectClassWichMethodIsDefined;
		chooseInstanceVariableToAccessThrough;
		askTargetClassName;
		askExtraParameterIfNeeded.
		! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 17:52:53'!
scopeOptionLabels

	^{'In Class'. 'In Hierarchy'. 'In Category'. 'In Hierarchy and its Categories'. 'In System'}! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 17:44:36'!
selectClassWichMethodIsDefined
	sourceClass := methodReference actualClass ! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 17:48:35'!
selectVariableLabel
	^'Select variable to access through'! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/8/2023 01:37:48'!
sendsToChange
	^sendsToChange! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/15/2023 00:58:08'!
showChanges

	"self showChangesInMessageSetWindow"! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/9/2023 17:11:38'!
showChangesInMessageSetWindow
	"self halt."
	self messageSetWindowClass openMessageList: (sendsToChange collect: [:aMethodNodeReference | aMethodNodeReference methodReference]) label: 'Changed methods' ! !

!MoveMethodApplier methodsFor: 'as yet unclassified' stamp: 'mc 9/4/2023 00:39:30'!
askExtraParameterIfNeeded
	
	| parameterKeyword parameterName |
	(MoveMethodRefactoring needParameterNameToMove: methodToMove from: sourceClass)
		ifTrue: [
			methodToMove isKeyword 
				ifTrue: [
					parameterName := self request: 'Enter new parameter name' initialAnswer: 'a', sourceClass name asString.
					parameterKeyword := self request: 'Enter new parameter keyword' initialAnswer: 'a', sourceClass name asString.
					extraParameter := MoveMethodExtraParameterNeededAndExtraKeyword 
										parameterName: parameterName 
										extraKeyword: parameterKeyword.
					]
				ifFalse: [
					parameterName := self request: 'Enter new parameter name' initialAnswer: 'a', sourceClass name asString.
					extraParameter := MoveMethodExtraParameterNeeded parameterName: parameterName.
					].
			]
		ifFalse: [
			extraParameter := MoveMethodNonExtraParameterNeeded new.
			]! !

!MoveMethodApplier methodsFor: 'as yet unclassified' stamp: 'mc 8/9/2023 02:24:16'!
closeBrowser

	wizardStepWindow delete.! !

!MoveMethodApplier methodsFor: 'as yet unclassified' stamp: 'mc 8/9/2023 02:57:19'!
createAndApplyRefactoring
	self 
		createRefactoringHandlingRefactoringExceptions;
		applyRefactoring.
		
	shouldShowChanges ifTrue: [ self showChanges ]! !

!MoveMethodApplier methodsFor: 'as yet unclassified' stamp: 'mc 9/5/2023 00:03:10'!
createRefactoring
	^MoveMethodRefactoring 
		methodNamed: methodToMove 
		from: sourceClass 
		to: targetClass 
		accessingThrough: accessingThroughinstanceVariableName 
		parameterNeeded: extraParameter . ! !

!MoveMethodApplier methodsFor: 'as yet unclassified' stamp: 'mc 8/9/2023 02:09:21'!
doNotShowChanges

	shouldShowChanges := false! !

!MoveMethodApplier methodsFor: 'as yet unclassified' stamp: 'mc 8/9/2023 02:23:53'!
wizardEnded

	requestExitBlock := [ ^self ].

	self
		closeBrowser;
		createAndApplyRefactoring.! !

!MoveMethodApplier methodsFor: 'as yet unclassified' stamp: 'mc 8/9/2023 02:15:41'!
wizardStepWindow: aWizarStepWindow

	wizardStepWindow := aWizarStepWindow ! !

!MoveMethodApplier class methodsFor: 'instance creation' stamp: 'mc 7/6/2023 23:09:15'!
createAndValueHandlingExceptionsOn: aModel forMethod: aMethodReference 
	self createAndValueHandlingExceptions: [ self initializeOn: aModel forMethod: aMethodReference ].! !

!MoveMethodApplier class methodsFor: 'instance creation' stamp: 'mc 8/6/2023 15:35:52'!
initialize

	RefactoringApplier 
		registerMoveMethodApplier: MoveMethodApplier.! !

!MoveMethodApplier class methodsFor: 'instance creation' stamp: 'mc 8/6/2023 16:51:50'!
initializeOn: aModel forMethod: aMethodReference 
	^self new initializeInitializeOn: aModel forMethod: aMethodReference ! !

!MoveMethodExtraParameterNeeded methodsFor: 'initialization' stamp: 'mc 8/31/2023 02:03:56'!
initializeParameterName: aParameterName 
	parameterName := aParameterName.! !

!MoveMethodExtraParameterNeeded methodsFor: 'accessing' stamp: 'mc 9/6/2023 01:52:15'!
assertIfCanMove: methodName from: sourceClass to: targetClass 
	| needParameter |
	
	needParameter := MoveMethodRefactoring needParameterNameToMove: methodName from: sourceClass.
	
	needParameter ifFalse: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterShouldNotBeProvidedClassErrorMessage].
	
	methodName isUnary ifFalse: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterKeywordShouldBeProvidedClassErrorMessage].
	
	(targetClass includesSelector: (methodName asString, ':') asSymbol ) ifTrue: [Refactoring refactoringError: MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage]! !

!MoveMethodExtraParameterNeeded methodsFor: 'accessing' stamp: 'mc 9/1/2023 01:01:06'!
associationToModifySelectorAndArgumentsOn: aCompiledMethod 
	^(1 to: aCompiledMethod methodNode selectorLastPosition ) -> (aCompiledMethod methodNode selectorAndArgumentsAsString, ': ', parameterName)! !

!MoveMethodExtraParameterNeeded methodsFor: 'accessing' stamp: 'mc 9/3/2023 02:45:04'!
newSenderFor: compiledMethodToMove 
	^compiledMethodToMove methodNode selectorAndArgumentsAsString, ': self'! !

!MoveMethodExtraParameterNeeded methodsFor: 'accessing' stamp: 'mc 9/1/2023 00:36:55'!
parameterName
	^parameterName! !

!MoveMethodExtraParameterNeeded class methodsFor: 'instance creation' stamp: 'mc 8/31/2023 02:03:38'!
parameterName: aParameterName 
	^self new initializeParameterName: aParameterName ! !

!MoveMethodExtraParameterNeededAndExtraKeyword methodsFor: 'initialization' stamp: 'mc 8/31/2023 01:56:19'!
initializeParameterName: aParameterName extraKeyword: anExtraKeyword 
	parameterName := aParameterName.
	extraKeyword := anExtraKeyword.! !

!MoveMethodExtraParameterNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 9/6/2023 02:09:37'!
assertIfCanMove: methodName from: sourceClass to: targetClass 
	| needParameter |
	needParameter := MoveMethodRefactoring needParameterNameToMove: methodName from: sourceClass.
	needParameter ifFalse:[Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterShouldNotBeProvidedClassErrorMessage].
	
	methodName isKeyword
		ifFalse:[Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterKeywordShouldNotBeProvidedClassErrorMessage].
	
	(targetClass includesSelector: (methodName asString, extraKeyword, ':') asSymbol ) ifTrue: [Refactoring refactoringError: MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage]! !

!MoveMethodExtraParameterNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 9/1/2023 01:01:06'!
associationToModifySelectorAndArgumentsOn: aCompiledMethod 
	^(1 to: aCompiledMethod methodNode selectorLastPosition ) -> (aCompiledMethod methodNode selectorAndArgumentsAsString, ' ', extraKeyword , ': ',  parameterName)! !

!MoveMethodExtraParameterNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 9/3/2023 02:49:35'!
newSenderFor: compiledMethodToMove 
	^compiledMethodToMove methodNode selectorAndArgumentsAsString, ' ', extraKeyword, ': self'! !

!MoveMethodExtraParameterNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 9/1/2023 00:37:56'!
parameterName
	^parameterName! !

!MoveMethodExtraParameterNeededAndExtraKeyword class methodsFor: 'instance creation' stamp: 'mc 8/31/2023 01:55:50'!
parameterName: aParameterName extraKeyword: anExtraKeyword 
	
	^self new initializeParameterName: aParameterName extraKeyword: anExtraKeyword! !

!MoveMethodNonExtraParameterNeeded methodsFor: 'accessing' stamp: 'mc 9/6/2023 02:00:07'!
assertIfCanMove: methodName from: sourceClass to: targetClass 
	| needParameter |
	needParameter := MoveMethodRefactoring needParameterNameToMove: methodName from: sourceClass.
	needParameter ifTrue: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterShouldBeProvidedClassErrorMessage]! !

!MoveMethodNonExtraParameterNeeded methodsFor: 'accessing' stamp: 'mc 9/3/2023 02:43:47'!
newSenderFor: compiledMethodToMove 
	^compiledMethodToMove methodNode selectorAndArgumentsAsString.! !

!TesisMoveMethodRefactoringMenu class methodsFor: 'as yet unclassified' stamp: 'mc 8/30/2023 01:25:29'!
messageListMenuOptions

	self flag: #assumesKeyboardShortcuts.
	^ `{
			{
				#submenuOf -> 					RefactoringMenues refactoringsLabel.
				#itemGroup 			-> 		20.
				#itemOrder 			-> 		80.
				#label 			-> 		'move method...'.
				#selector 			-> 		#moveMethod.
				#icon 			-> 		#saveAsIcon
			} asDictionary.
		}`.
	! !

!TesisMoveMethodRefactoringMenu class methodsFor: 'as yet unclassified' stamp: 'mc 8/6/2023 13:13:16'!
smalltalkEditorCmdShortcutsSpec
	"
	SmalltalkEditor initializeCmdShortcuts
	"
	^#(
		#($7	 #contextualMoveMethod:  'Move Method what is under cursor')
	)! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 7/16/2023 02:46:47'!
methodMovedHasExternalDependencies
	^readAccessOnInstanceVariables isEmpty not 
		or: [
			writeAccessOnInstanceVariables isEmpty not 
			or: [
				readAccessOnClassVariables isEmpty not 
				or: [
					writeAccessOnClassVariables isEmpty not
					or: [
						methodWithSelfReferences 
						or: [
							methodWithSuperReferences 
							]
						]
					]
				]
			]! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 6/3/2023 23:57:49'!
methodWithSelfReferences
	^methodWithSelfReferences! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 5/24/2023 17:43:48'!
readAccessOnClassVariables
	^readAccessOnClassVariables ! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 4/17/2023 23:02:43'!
readAccessOnInstanceVariables
	^readAccessOnInstanceVariables ! !

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

!SmalltalkEditor methodsFor: '*MoveMethodRefactoring' stamp: 'mc 8/9/2023 15:14:57'!
contextualMoveMethod
	"self halt."
	self isEditingClassDefinition ifTrue: [ ^morph flash ].
	self ifSourceCodeRefactoringCanBeAppliedDo: [
		self
			withMethodNodeAndClassDo: [ :methodNode :selectedClass | self contextualMoveMethodOf: methodNode in: selectedClass ]
			ifErrorsParsing: [ :anError | morph flash ]	]	
	! !

!SmalltalkEditor methodsFor: '*MoveMethodRefactoring' stamp: 'mc 8/6/2023 14:13:38'!
contextualMoveMethod: aKeyboardEvent
"self halt."
	self contextualMoveMethod.
	^true
	! !

!SmalltalkEditor methodsFor: '*MoveMethodRefactoring' stamp: 'mc 8/8/2023 01:05:07'!
contextualMoveMethodOf: aMethodNode in: aSelectedClass
	| aReference |
	aMethodNode
		withParseNodeIncluding: self startIndex
		do: [ :nodeUnderCursor |
			nodeUnderCursor isMessageNode ifFalse: [^morph flash].

			((aMethodNode completeSourceRangesOf: nodeUnderCursor ifAbsent: [self shouldNotHappen])
				detect: [ :aSourceRange | aSourceRange includes: self startIndex]
					ifFound: [ :aSourceRange | | messageNodeReference |
						messageNodeReference := MessageNodeReference
							messageNode: nodeUnderCursor
							selector: aMethodNode selector
							class: aSelectedClass
							completeSourceRange: aSourceRange.
						self inlineMethodInUsage: messageNodeReference.	]
					ifNone: [self shouldNotHappen ])]
		ifAbsent: [
			self startIndex <= aMethodNode selectorLastPosition ifFalse: [ ^ morph flash ].
			aReference := MethodReference class: aSelectedClass selector: aMethodNode selector.
			RefactoringApplier moveMethodApplier
				createAndValueHandlingExceptionsOn: model textProvider
				forMethod: aReference]

! !

!SmalltalkEditor methodsFor: '*MoveMethodRefactoring' stamp: 'mc 7/4/2023 00:17:55'!
ifSourceCodeRefactoringCanBeAppliedDo: aBlock

	^(self hasUnacceptedEdits or: [morph hasEditingConflicts ])
		ifTrue: [ self inform: 'This refactoring can not be applied when there are unsaved changes' ]
		ifFalse: aBlock! !

!BrowserWindow methodsFor: '*MoveMethodRefactoring' stamp: 'mc 9/5/2023 00:43:10'!
moveMethod
	
	
	"self halt."
	model selectedMessageName ifNotNil: [ :selectorToInline |
		RefactoringApplier moveMethodApplier
			createAndValueHandlingExceptionsOn: model
			forMethod: (MethodReference class: model selectedClassOrMetaClass selector: selectorToInline )]! !

!RefactoringApplier class methodsFor: '*MoveMethodRefactoring' stamp: 'mc 8/6/2023 14:28:20'!
moveMethodApplier

	^self applierAt: self moveMethodApplierId ifAbsent: [ MoveMethodApplier ]! !

!RefactoringApplier class methodsFor: '*MoveMethodRefactoring' stamp: 'mc 8/6/2023 15:07:01'!
moveMethodApplierId
	^#moveMethodApplier! !

!RefactoringApplier class methodsFor: '*MoveMethodRefactoring' stamp: 'mc 8/6/2023 15:13:19'!
registerMoveMethodApplier: aMoveMethodApplierClass

	self registerApplierAt: self moveMethodApplierId with: aMoveMethodApplierClass
! !
MoveMethodApplier initialize!
