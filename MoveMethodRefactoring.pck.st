'From Cuis 6.0 [latest update: #5981] on 13 November 2023 at 10:37:05 pm'!
'Description '!
!provides: 'MoveMethodRefactoring' 1 63!
SystemOrganization addCategory: 'MoveMethodRefactoring'!


!classDefinition: #CodeForNodeToMove category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #CodeForNodeToMove
	instanceVariableNames: 'compiledMethod intervalsToReject node intervalsToModify nodeInterval nodeOffsetInSourceCode readAccessOnInstanceVariables writeAccessOnInstanceVariables readAccessOnClassVariables writeAccessOnClassVariables parameterNeeded variableToAccesThrough'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'CodeForNodeToMove class' category: 'MoveMethodRefactoring'!
CodeForNodeToMove class
	instanceVariableNames: ''!

!classDefinition: #NeedParameterName category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #NeedParameterName
	instanceVariableNames: 'needParameterName instanceVariable_CHANGE_ME instanceVariableNameToAccessThrough'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'NeedParameterName class' category: 'MoveMethodRefactoring'!
NeedParameterName class
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
TransferMethod subclass: #MoveMethodRefactoring
	instanceVariableNames: 'methodName sourceClass targetClass collectionOfSendersToChange instanceVariable parameterKeyword parameterNeeded'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodRefactoring class' category: 'MoveMethodRefactoring'!
MoveMethodRefactoring class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodApplier category: 'MoveMethodRefactoring'!
TransferMethodApplier subclass: #MoveMethodApplier
	instanceVariableNames: 'model methodReference methodToMove sourceClass accessingThroughinstanceVariableName targetClass extraParameter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodApplier class' category: 'MoveMethodRefactoring'!
MoveMethodApplier class
	instanceVariableNames: ''!

!classDefinition: #CodeForNodeToMoveResult category: 'MoveMethodRefactoring'!
Object subclass: #CodeForNodeToMoveResult
	instanceVariableNames: 'sourceCode readAccessOnInstanceVariables writeAccessOnInstanceVariables readAccessOnClassVariables writeAccessOnClassVariables'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'CodeForNodeToMoveResult class' category: 'MoveMethodRefactoring'!
CodeForNodeToMoveResult class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodExtraParameterName category: 'MoveMethodRefactoring'!
Object subclass: #MoveMethodExtraParameterName
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodExtraParameterName class' category: 'MoveMethodRefactoring'!
MoveMethodExtraParameterName class
	instanceVariableNames: ''!

!classDefinition: #ExtraParameterNameNeeded category: 'MoveMethodRefactoring'!
MoveMethodExtraParameterName subclass: #ExtraParameterNameNeeded
	instanceVariableNames: 'parameterName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'ExtraParameterNameNeeded class' category: 'MoveMethodRefactoring'!
ExtraParameterNameNeeded class
	instanceVariableNames: ''!

!classDefinition: #ExtraParameterNameNeededAndExtraKeyword category: 'MoveMethodRefactoring'!
MoveMethodExtraParameterName subclass: #ExtraParameterNameNeededAndExtraKeyword
	instanceVariableNames: 'parameterName extraKeyword'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'ExtraParameterNameNeededAndExtraKeyword class' category: 'MoveMethodRefactoring'!
ExtraParameterNameNeededAndExtraKeyword class
	instanceVariableNames: ''!

!classDefinition: #NonExtraParameterNameNeeded category: 'MoveMethodRefactoring'!
MoveMethodExtraParameterName subclass: #NonExtraParameterNameNeeded
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'NonExtraParameterNameNeeded class' category: 'MoveMethodRefactoring'!
NonExtraParameterNameNeeded class
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


!CodeForNodeToMove methodsFor: 'initialization' stamp: 'mc 10/8/2023 02:36:42'!
initializeFor: aCompiledMethod variableToAcessThrough: aVariableToAccesoThroughName rejectingIntervals: aFewIntervalsToReject onNode: aNodeToGetCode parameterNeeded: aParameterNeeded 
	compiledMethod := aCompiledMethod.
	intervalsToReject := aFewIntervalsToReject.
	node := aNodeToGetCode.
	intervalsToModify := OrderedCollection new.
	readAccessOnInstanceVariables := Set new.
	writeAccessOnInstanceVariables := Set new.
	readAccessOnClassVariables := Set new.
	writeAccessOnClassVariables := Set new.
	parameterNeeded := aParameterNeeded.
	variableToAccesThrough := aVariableToAccesoThroughName! !

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 10/8/2023 02:35:18'!
visitAssignmentNode: anAssignmentNode 
	| assigmentValue completeRangesOfassigmentNode nodeXXXReplacer resultForValue setterSelectorAsString |
	"self halt."
	anAssignmentNode variable isTemp ifTrue: [anAssignmentNode value accept: self. ^self].
	completeRangesOfassigmentNode := self firstUnseenIntervalFor: anAssignmentNode.
	nodeXXXReplacer := CodeForNodeToMove 
					for: compiledMethod
					variableToAcessThrough: instanceVariable rejectingIntervals: intervalsToReject 
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

	
	self registerInterval: completeRangesOfassigmentNode withModification: (parameterNeeded parameterName , ' ', setterSelectorAsString, ' ', assigmentValue).
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

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 10/8/2023 03:01:50'!
visitInstanceVariableNode: anInstanceVariableNode 
	| sourceCodeForInterval anInterval |
	"self halt."
	anInterval := self firstUnseenIntervalFor: anInstanceVariableNode.
	(anInstanceVariableNode name = variableToAccesThrough)
		ifTrue: [sourceCodeForInterval := 'self'.]
		ifFalse: [
			sourceCodeForInterval := parameterNeeded parameterName, ' ', anInstanceVariableNode key.
			readAccessOnInstanceVariables add: anInstanceVariableNode key.].
	self registerInterval: anInterval withModification: sourceCodeForInterval.
	! !

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 9/10/2023 00:22:43'!
visitLiteralVariableNode: aLiteralVariableNode 
	| sourceCodeForInterval anInterval |
	"self halt."
	anInterval := self firstUnseenIntervalFor: aLiteralVariableNode.
	sourceCodeForInterval := parameterNeeded parameterName, ' ', aLiteralVariableNode name uncapitalized.
	self registerInterval: anInterval withModification: sourceCodeForInterval.
	readAccessOnClassVariables add: aLiteralVariableNode name.! !

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 9/14/2023 01:24:30'!
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
					self registerInterval: rangeMessageNode withModification: (parameterNeeded parameterName, ' CHANGE_ME_super_', aMessageNode selector key asString).
					"self encapsulateSuperColaboration: aMessageNode."
					compiledMethod methodClass compile:'CHANGE_ME_super_', aMessageNode selector key asString, String newLineString, String tab, '^super ', aMessageNode selector key asString, '.'.
					].
			
			]
		ifFalse:[
			aMessageNode receiver accept: self.
			aMessageNode selector accept: self.
			aMessageNode argumentsInEvaluationOrder do: [:argument| argument accept: self]
			].
	! !

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 9/14/2023 01:21:49'!
visitVariableNode: aVariableNode 
	| anInterval sourceCodeForInterval |
	"self halt."
	anInterval := self firstUnseenIntervalFor: aVariableNode ifAbsent: [^self].
	sourceCodeForInterval := parameterNeeded parameterName.
	self registerInterval: anInterval withModification: sourceCodeForInterval.! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 5/12/2023 00:29:21'!
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

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 9/10/2023 00:28:47'!
filterRangesThatDoNotBelongToTheCurrentNodeIn: aCollectionOfRanges

	^ self firstIntervalOn: (aCollectionOfRanges select: [ :anInterval | nodeInterval includesAllOf: anInterval ])! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 4/14/2023 02:12:28'!
firstIntervalOn: aCollectionOfIntervals
	^aCollectionOfIntervals detectMin: [ :anInterval | anInterval first]! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 9/14/2023 01:52:37'!
firstUnseenIntervalFor: aNode 
	^self firstUnseenIntervalFor: aNode ifAbsent: [] ! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 9/14/2023 01:26:21'!
firstUnseenIntervalFor: aNode ifAbsent: anAbsentBlock 
	
	| completeRangesOfassigmentNode |
	
	completeRangesOfassigmentNode := compiledMethod methodNode completeSourceRangesOf: aNode ifAbsent: anAbsentBlock.
	self removeSeenRanges: completeRangesOfassigmentNode.
	^self filterRangesThatDoNotBelongToTheCurrentNodeIn: completeRangesOfassigmentNode.! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 9/14/2023 00:55:51'!
initializeNodeInterval

	| posibleRangesForNode |

	node isMethodNode 
		ifTrue:[ 
			nodeInterval := 1 to: (compiledMethod sourceCode size).
			]
		ifFalse:[ 
			posibleRangesForNode := (compiledMethod methodNode completeSourceRangesOf: node ifAbsent: []).
			self removeSeenRanges: posibleRangesForNode.
			nodeInterval := self firstIntervalOn: posibleRangesForNode.
			]! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 4/14/2023 02:19:49'!
initializeOffset

	^ nodeOffsetInSourceCode := nodeInterval first -1! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 4/26/2023 02:33:42'!
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

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 5/12/2023 00:14:44'!
newSelector: aMessageNode
	
	| indexNewSelector newSelector |
	newSelector := ''.
	indexNewSelector := 1.
	aMessageNode selector key keywords do: [:aKeyword | newSelector := newSelector, ' ', aKeyword, ' ', 'arg', indexNewSelector asString. indexNewSelector := indexNewSelector +1 ].
	newSelector := 'CHANGE_ME_super_', (newSelector copyFrom: 2 to: newSelector size).
	^newSelector! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 10/8/2023 02:35:18'!
newSenderFor: aMessageNode
	|  newSend argumentsCode argumentIndex replacer replacerResult argumentNode |
	argumentsCode := OrderedCollection new.
	argumentIndex := 1.
	"self halt."
	aMessageNode selector key keywords do: [ :aKeyword | 
		argumentNode := aMessageNode argumentsInEvaluationOrder at: argumentIndex.
		replacer := CodeForNodeToMove 
					for: compiledMethod
					variableToAcessThrough: instanceVariable rejectingIntervals: intervalsToReject
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

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 4/14/2023 00:53:08'!
registerInterval: anInterval withModification: sourceCodeForInterval 
	intervalsToReject add: anInterval.
	intervalsToModify add: anInterval -> sourceCodeForInterval! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 4/14/2023 00:53:08'!
removeSeenRanges: rangesOfNode 
	^rangesOfNode removeAllSuchThat: [ :aSourceInterval | intervalsToReject anySatisfy: [ :aSourceIntervalToModify | aSourceIntervalToModify includesAllOf: aSourceInterval ] ]! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 5/14/2023 19:51:27'!
shouldAddParenthesis: argumentNode 
	^argumentNode isAssignmentNode! !

!CodeForNodeToMove methodsFor: 'accessing' stamp: 'mc 9/16/2023 01:25:06'!
apply
	| newCode newCodeForNode result |
	"self halt."
	self initializeNodeInterval.
	self initializeOffset.
	node accept: self.
	intervalsToModify := intervalsToModify collect: [ :anAssociation | (anAssociation key - nodeOffsetInSourceCode) -> anAssociation value ].
	newCodeForNode := compiledMethod sourceCode copyFrom: nodeInterval first to: nodeInterval last.
	
	(node isMethodNode) ifTrue: [
		parameterNeeded associationToModifySelectorAndArgumentsOn: compiledMethod addOn: intervalsToModify
		].
	"self halt."
	intervalsToModify sort: [ :left :right | left key first < right key first ].
	newCode := newCodeForNode copyReplacing: intervalsToModify.
	result := CodeForNodeToMoveResult newWith: newCode modifiedReads: readAccessOnInstanceVariables modifiedWrites: writeAccessOnInstanceVariables modifiedClassReads: readAccessOnClassVariables modifiedClassWrites:writeAccessOnClassVariables .
	^result! !

!CodeForNodeToMove class methodsFor: 'instance creation' stamp: 'mc 10/8/2023 02:35:30'!
for: compiledMethod variableToAccesThrough: aVariableToAccesoThroughName parameterNeeded: parameterNeeded
	^self 
		for: compiledMethod
		variableToAcessThrough: aVariableToAccesoThroughName 
		rejectingIntervals: OrderedCollection new
		onNode: compiledMethod methodNode
		parameterNeeded: parameterNeeded.
	! !

!CodeForNodeToMove class methodsFor: 'instance creation' stamp: 'mc 10/8/2023 02:36:59'!
for: aCompiledMethod variableToAcessThrough: aVariableToAccesoThroughName rejectingIntervals: aFewIntervalsToReject onNode: aNodeToGetCode parameterNeeded: parameterNeeded
	^self new 
		initializeFor: aCompiledMethod
		variableToAcessThrough: aVariableToAccesoThroughName
		rejectingIntervals: aFewIntervalsToReject
		onNode: aNodeToGetCode
		parameterNeeded: parameterNeeded! !

!NeedParameterName methodsFor: 'public' stamp: 'mc 8/24/2023 23:53:43'!
needParameterName
	^needParameterName! !

!NeedParameterName methodsFor: 'visiting' stamp: 'mc 11/13/2023 02:01:02'!
visitInstanceVariableNode: anInstanceVariableNode 
	
	needParameterName := needParameterName or: [instanceVariableNameToAccessThrough ~= anInstanceVariableNode name].! !

!NeedParameterName methodsFor: 'visiting' stamp: 'mc 8/31/2023 23:56:17'!
visitLiteralVariableNode: aLiteralVariableNode 
	needParameterName := true! !

!NeedParameterName methodsFor: 'visiting' stamp: 'mc 8/24/2023 23:53:27'!
visitVariableNode: aVariableNode 
	needParameterName := true.! !

!NeedParameterName methodsFor: 'initialization' stamp: 'mc 8/24/2023 23:50:36'!
initialize
	needParameterName := false.
	super initialize.! !

!NeedParameterName methodsFor: 'initialization' stamp: 'mc 11/13/2023 01:49:05'!
initializeNewAccessingThrough: instanceVariable 
	instanceVariableNameToAccessThrough := instanceVariable.
	needParameterName := false.! !

!NeedParameterName class methodsFor: 'instance creation' stamp: 'mc 11/13/2023 01:48:07'!
newAccessingThrough: instanceVariable 
	
	^self new initializeNewAccessingThrough: instanceVariable ! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/13/2023 21:53:19'!
test001SelectorShouldExistsOnSourceClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	
	
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring methodShouldExistsOnSourceClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/13/2023 21:53:28'!
test002SelectorShouldNotExistsOnTargetClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	targetClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:30:48'!
test003SelectorWithNewParameterShouldNotExistsOnTargetClass
	
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
				parameterNeeded: (ExtraParameterNameNeeded 
									parameterName: 'originalObject') ] 
		failsWith: [
			MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:30:41'!
test004SelectorWithNewParameterAndKeywordShouldNotExistsOnTargetClass
	
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
				parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword
									parameterName: 'originalObject'
									extraKeyword: 'originalObject') ] 
		failsWith: [
			MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:30:37'!
test005TargetClassShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := nil.
	sourceClass compile: 'm1 ^1' .
	
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring targetClassShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:30:30'!
test006SourceClassShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := nil.
	targetClass := self createClassNamed: #TargetClass.
	
	
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring sourceClassShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:30:23'!
test007SelectorShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: nil from: sourceClass to: targetClass accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring methodShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:30:05'!
test008InstanceVariableToAccessingThroughShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: nil ] 
		failsWith: [MoveMethodRefactoring instanceVariableToAccessingThroughShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:29:58'!
test009InstanceVariableToAccessingThroughShouldExistsInSourceClass
	
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:29:52'!
test010NameForANewParameterShouldBeProvidedIfNeeded
	
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:29:46'!
test011NameForANewParameterKeywordShouldBeProvidedIfNeeded
	
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject') ] 
		failsWith: [
			MoveMethodRefactoring nameForNewParameterKeywordShouldBeProvidedClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:29:40'!
test012NameForNewParameterWhenClassVariable
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'CV1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^CV1.' .
	
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:29:35'!
test013NameForNewParameterWhenInstanceVariable
	
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:29:29'!
test014NameForNewParameterWhenSelfReference
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^self.' .
	
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:29:23'!
test015NameForNewParameterWhenSuperReference
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^super.' .
	
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:29:17'!
test016ShouldNotPassNameForNewParameterWhenIsNotNeeded
	
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
				parameterNeeded: (ExtraParameterNameNeeded 
									parameterName: 'extraParameterName'). ] 
		failsWith: [
			MoveMethodRefactoring nameForNewParameterShouldNotBeProvidedClassErrorMessage].
! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 9/16/2023 01:29:10'!
test017ShouldNotPassNameForNewParameterWhenIsNotNeeded
	
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
				parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword 
								parameterName: 'extraParameterName' 
								extraKeyword: 'extraKeywordName'). ] 
		failsWith: [
			MoveMethodRefactoring nameForNewParameterKeywordShouldNotBeProvidedClassErrorMessage].
! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:32:26'!
test100CanMoveMethodWithoutReferences
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1.' .
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' .
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'm1
	^iv1 m1.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:35:08'!
test101CanMoveMethodWithoutReferences
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^2.' .
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' .
	refactoring apply.
	
	self assert: 'm1 ^2.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'm1
	^iv1 m1.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:35:29'!
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
				parameterNeeded: (ExtraParameterNameNeeded 
									parameterName: 'sourceObject') .
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv2.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv2', String newLineString, String tab, '^iv2.' equals: (sourceClass sourceCodeAt: #iv2).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:35:50'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject') .
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv3', String newLineString, String tab, '^iv3.' equals: (sourceClass sourceCodeAt: #iv3).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:36:18'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3 + sourceObject iv4.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv3', String newLineString, String tab, '^iv3.' equals: (sourceClass sourceCodeAt: #iv3).
	self assert: 'iv4', String newLineString, String tab, '^iv4.' equals: (sourceClass sourceCodeAt: #iv4).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:36:33'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3: 1.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv3: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass sourceCodeAt: #iv3:).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:38:07'!
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
					parameterNeeded: (ExtraParameterNameNeeded 
										parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject sourceObject iv3: (sourceObject iv4: 1).' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv3: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass sourceCodeAt: #iv3:).
	self assert: 'iv4: anObject', String newLineString, String tab, '^iv4 := anObject.' equals: (sourceClass sourceCodeAt: #iv4:).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/10/2023 00:33:33'!
test107CanMoveMethodWhenReferencesInstanceVariableAnd2Params
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1: anInt param: anInt2 ^iv2 := anInt + anInt2 + iv2.' .
	
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1:param:
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'iv1' 
					parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword 
										parameterName: 'anIv2Object' 
										extraKeyword: 'iv2Object' ).
	refactoring apply.
	
	self assert: 'm1: anInt param: anInt2 iv2Object: anIv2Object ^anIv2Object iv2: anInt + anInt2 + anIv2Object iv2.' equals: (targetClass sourceCodeAt: #m1:param:iv2Object:).
	self assert: 'm1: anInt param: anInt2
	^iv1 m1: anInt param: anInt2 iv2Object: self.' equals: (sourceClass sourceCodeAt: #m1:param:).
	self deny: (sourceClass includesSelector: #iv1).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:38:40'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject') .
	refactoring apply.
	
	self assert: 'm1: sourceObject sourceObject iv3: (sourceObject iv4: sourceObject iv5).' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:39:09'!
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
					parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword 
										parameterName: 'sourceObject' 
										extraKeyword: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: anObject sourceObject: sourceObject ^sourceObject iv2.' equals: (targetClass sourceCodeAt: #m1:sourceObject:).
	self assert: 'm1: anObject
	^iv1 m1: anObject sourceObject: self.' equals: (sourceClass sourceCodeAt: #m1:).
	self deny: (sourceClass includesSelector: #iv1).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:39:21'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'iv3 ^iv3.' equals: (sourceClass sourceCodeAt: #iv3).
	self assert: 'm1: sourceObject ^sourceObject iv3 + 1.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/14/2023 00:21:55'!
test110AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter
	
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'iv3: anObject ^iv3 := anObject.' equals: (sourceClass sourceCodeAt: #iv3:)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/14/2023 00:22:05'!
test111AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter
	
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3_SETTER_CHANGE_ME: 1.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'iv3_SETTER_CHANGE_ME: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass sourceCodeAt: #iv3_SETTER_CHANGE_ME:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:40:06'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject icv1.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'icv1', String newLineString, String tab, '^Icv1.' equals: (sourceClass sourceCodeAt: #icv1).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:40:19'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject icv1: 1.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'icv1: anObject', String newLineString, String tab, '^Icv1 := anObject.' equals: (sourceClass sourceCodeAt: #icv1:).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:40:35'!
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
					parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword 
										parameterName: 'originalObject' 
										extraKeyword: 'extractIv3From').
	refactoring apply.
	
	self assert: 'iv3 ^iv3.' equals: (sourceClass sourceCodeAt: #iv3).
	self assert: 'm1: anInt extractIv3From: originalObject ^originalObject iv3 + anInt.' equals: (targetClass sourceCodeAt: #m1:extractIv3From:).
	self assert: 'm1: anInt
	^iv1 m1: anInt extractIv3From: self.' equals: (sourceClass sourceCodeAt: #m1:).
	self deny: (sourceClass includesSelector: #iv1).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:41:00'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'originalObject').
	refactoring apply.
	
	self assert: 'iv3 ^iv3.' equals: (sourceClass sourceCodeAt: #iv3).
	self assert: 'm1: originalObject ^originalObject iv3 + 1.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:41:06'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'originalObject').
	refactoring apply.
	
	self assert: 'm1: originalObject ^originalObject justOne.' equals: (targetClass sourceCodeAt: #m1:).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:41:13'!
test199TmpVariablesShoulNotBeAffected
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 |tmp| ^tmp:=1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' .
	refactoring apply.
	
	self assert: 'm1 |tmp| ^tmp:=1.' equals: (targetClass sourceCodeAt: #m1).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:41:21'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject justOne.' equals: (targetClass sourceCodeAt: #m1:).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:41:36'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_justOne.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'CHANGE_ME_super_justOne', String newLineString, String tab, '^super justOne.' equals: (sourceClass sourceCodeAt: #CHANGE_ME_super_justOne)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:41:52'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_increment: 1.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass sourceCodeAt: #CHANGE_ME_super_increment:)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:42:09'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_increment: 1 andIncrement: 2.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'CHANGE_ME_super_increment: arg1 andIncrement: arg2', String newLineString, String tab, '^super increment: arg1 andIncrement: arg2.' equals: (sourceClass sourceCodeAt: #CHANGE_ME_super_increment:andIncrement:)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:42:21'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_increment: sourceObject iv2.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass sourceCodeAt: #CHANGE_ME_super_increment:)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:42:41'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject CHANGE_ME_super_increment: (sourceObject iv2: 1).' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass sourceCodeAt: #CHANGE_ME_super_increment:).
	self assert: 'iv2: anObject', String newLineString, String tab, '^iv2 := anObject.' equals: (sourceClass sourceCodeAt: #iv2:)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/13/2023 23:42:54'!
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
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject |asd| ^sourceObject CHANGE_ME_super_increment: asd.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass sourceCodeAt: #CHANGE_ME_super_increment:)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 10/8/2023 01:45:15'!
test300MovingMethodWichUsesAccesingThroughVariableShouldBeRepalcedForSelf
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3 + iv1 number.' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3 + self number.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv3', String newLineString, String tab, '^iv3.' equals: (sourceClass sourceCodeAt: #iv3).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 11/13/2023 01:37:37'!
test301MovingMethodWichUsesAccesingThroughVariableShouldBeRepalcedForSelf
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv1 number.' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (NonExtraParameterNameNeeded new).
	refactoring apply.
	
	self assert: 'm1 ^self number.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'm1
	^iv1 m1.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).! !

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

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 6/3/2023 00:21:53'!
createClassVariableGetterIfNotExistsFor: aClassVariable on: aClass
	^ aClass compile: aClassVariable uncapitalized, String newLineString, String tab, '^', aClassVariable capitalized, '.'! !

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 11/13/2023 22:35:36'!
createClassVariableSetterIfNotExistsFor: aClassVariable on: aClass

	^aClass compile: aClassVariable uncapitalized, ': anObject', String newLineString, String tab, '^', aClassVariable capitalized, ' := anObject.'! !

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 6/3/2023 00:20:32'!
createGetterFor: anInstanceVariable on: aClass

	^aClass compile: anInstanceVariable, String newLineString, String tab, '^', anInstanceVariable, '.'! !

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 6/3/2023 00:21:02'!
createGetterIfNotExistsFor: anInstanceVariable
	
	| getterCandidate |
	getterCandidate := sourceClass methodDict at: anInstanceVariable asSymbol ifAbsent:[^self createGetterFor: anInstanceVariable on: sourceClass].
	(getterCandidate isGetterOf: anInstanceVariable at: (sourceClass instVarNames indexOf: anInstanceVariable)) 
		ifFalse: 	[self createGetterFor: anInstanceVariable on: sourceClass]! !

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 4/24/2023 23:50:24'!
createSetterChangeMeFor: anInstanceVariable 
	^ sourceClass compile: anInstanceVariable, '_SETTER_CHANGE_ME: anObject', String newLineString, String tab, '^', anInstanceVariable, ' := anObject.'! !

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 6/3/2023 00:25:25'!
createSetterFor: anInstanceVariable on: aClass

	^aClass compile: anInstanceVariable, ': anObject', String newLineString, String tab, '^', anInstanceVariable, ' := anObject.'! !

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 11/13/2023 22:36:10'!
createSetterIfNotExistsFor: anInstanceVariable
	
	| setterCandidate |
	setterCandidate := sourceClass methodDict at: (anInstanceVariable, ':') asSymbol ifAbsent:[^self createSetterFor: anInstanceVariable on: sourceClass].
	(self method: setterCandidate isSetterOf: anInstanceVariable)
		ifFalse: 	[self createSetterChangeMeFor: anInstanceVariable]! !

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 4/24/2023 01:05:36'!
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

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 10/8/2023 02:33:32'!
replaceDependenciesFromSource: compiledMethod
	| replacer |
	replacer := CodeForNodeToMove for: compiledMethod variableToAccesThrough: instanceVariable parameterNeeded: parameterNeeded .
	^replacer apply.! !

!MoveMethodRefactoring class methodsFor: 'instance creation' stamp: 'mc 9/7/2023 22:56:57'!
methodNamed: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable    

	^self 
		methodNamed: methodName 
		from: sourceClass
		to: targetClass
		accessingThrough: instanceVariable
		parameterNeeded: NonExtraParameterNameNeeded new
		! !

!MoveMethodRefactoring class methodsFor: 'instance creation' stamp: 'mc 11/13/2023 01:44:45'!
methodNamed: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable parameterNeeded: anExtraParameterNeeded  
	
	
	(targetClass isNil) ifTrue: [ self refactoringError: self targetClassShouldNotBeNilErrorMessage ].
	(sourceClass isNil) ifTrue: [ self refactoringError: self sourceClassShouldNotBeNilErrorMessage].
	(methodName isNil) ifTrue: [ self refactoringError: self methodShouldNotBeNilErrorMessage ].
	(instanceVariable isNil) ifTrue: [ self refactoringError: self instanceVariableToAccessingThroughShouldNotBeNilErrorMessage ].
	(sourceClass includesSelector: methodName) ifFalse: [ self refactoringError: self methodShouldExistsOnSourceClassErrorMessage ].
	(sourceClass allInstVarNames includes: instanceVariable) ifFalse: [ self refactoringError: self instanceVariableToAccessingThroughShouldExistsInSourceClassErrorMessage ].
	(targetClass includesSelector: methodName) ifTrue: [ self refactoringError: self methodShouldNotExistsOnTargertClassErrorMessage ].
	
	anExtraParameterNeeded assertIfCanMove: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable.
	
	^self new 
		initializeMethodNamed: methodName 
		from: sourceClass 
		to: targetClass 
		accessingThrough: instanceVariable 
		changingSenders: OrderedCollection new 
		parameterNeeded: anExtraParameterNeeded 
		! !

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

!MoveMethodRefactoring class methodsFor: 'testing' stamp: 'mc 11/13/2023 01:46:58'!
needParameterNameToMove: methodName from: sourceClass accessingThrough: instanceVariable 
	| compiledMethod methodNode needParameterName needParameterNameVisitor |
	compiledMethod := sourceClass compiledMethodAt: methodName.
	methodNode := compiledMethod methodNode.
	needParameterName := false.
	needParameterNameVisitor := NeedParameterName newAccessingThrough: instanceVariable .
	methodNode accept: needParameterNameVisitor.
	^needParameterNameVisitor needParameterName! !

!MoveMethodApplier methodsFor: 'initialization' stamp: 'mc 9/7/2023 23:12:10'!
initializeInitializeOn: aModel forMethod: aMethodReference 
	model := aModel.
	methodReference := aMethodReference.! !

!MoveMethodApplier methodsFor: 'refactoring - creation' stamp: 'mc 9/5/2023 00:03:10'!
createRefactoring
	^MoveMethodRefactoring 
		methodNamed: methodToMove 
		from: sourceClass 
		to: targetClass 
		accessingThrough: accessingThroughinstanceVariableName 
		parameterNeeded: extraParameter . ! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 11/13/2023 02:06:51'!
askExtraParameterIfNeeded
	
	| parameterKeyword parameterName |
	(MoveMethodRefactoring needParameterNameToMove: methodToMove from: sourceClass accessingThrough: accessingThroughinstanceVariableName)
		ifTrue: [
			methodToMove isKeyword 
				ifTrue: [
					parameterName := self request: 'Enter new parameter name' initialAnswer: 'a', sourceClass name asString.
					parameterKeyword := self request: 'Enter new parameter keyword' initialAnswer: 'a', sourceClass name asString.
					extraParameter := ExtraParameterNameNeededAndExtraKeyword 
										parameterName: parameterName 
										extraKeyword: parameterKeyword.
					]
				ifFalse: [
					parameterName := self request: 'Enter new parameter name' initialAnswer: 'a', sourceClass name asString.
					extraParameter := ExtraParameterNameNeeded parameterName: parameterName.
					].
			]
		ifFalse: [
			extraParameter := NonExtraParameterNameNeeded new.
			]! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 8/6/2023 17:50:02'!
askTargetClassName
	| targetClassNameTmp |
	targetClassNameTmp := ClassNameRequestMorph request: 'Enter target class name:' initialAnswer: '' orCancel: requestExitBlock.
	"self halt."
	targetClassNameTmp := targetClassNameTmp withoutSeparators.
	targetClass := Smalltalk at: targetClassNameTmp asSymbol ifAbsent: [Refactoring refactoringErrorClass signal: 'Cant find the target class'].! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 8/6/2023 17:46:55'!
chooseInstanceVariableToAccessThrough
	| vars index |
	"self halt."
	vars := sourceClass allInstVarNames sorted.
	"vars := vars reject: [ :anInstanceVariable | anInstanceVariable = instanceVariableName ]."
	vars isEmpty ifTrue: [Refactoring refactoringErrorClass signal: 'There is no instance variable to access through' ].
	
	index := (PopUpMenu labelArray: vars lines: #()) startUpWithCaption: self selectVariableLabel.
	index = 0 ifTrue: [^self endRequest].
	accessingThroughinstanceVariableName := vars at: index.! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 8/6/2023 17:42:37'!
chooseMethodToMove
	methodToMove := methodReference selector! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 8/30/2023 01:38:48'!
requestRefactoringParameters
	self 
		chooseMethodToMove;
		selectClassWichMethodIsDefined;
		chooseInstanceVariableToAccessThrough;
		askTargetClassName;
		askExtraParameterIfNeeded.
		! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 8/6/2023 17:44:36'!
selectClassWichMethodIsDefined
	sourceClass := methodReference actualClass ! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 8/6/2023 17:48:35'!
selectVariableLabel
	^'Select variable to access through'! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 9/10/2023 14:41:14'!
showChanges
	"nothing to inform"! !

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

!CodeForNodeToMoveResult methodsFor: 'public' stamp: 'mc 5/24/2023 17:43:48'!
readAccessOnClassVariables
	^readAccessOnClassVariables ! !

!CodeForNodeToMoveResult methodsFor: 'public' stamp: 'mc 4/17/2023 23:02:43'!
readAccessOnInstanceVariables
	^readAccessOnInstanceVariables ! !

!CodeForNodeToMoveResult methodsFor: 'public' stamp: 'mc 4/17/2023 23:03:43'!
sourceCode
	^sourceCode ! !

!CodeForNodeToMoveResult methodsFor: 'public' stamp: 'mc 5/28/2023 04:19:34'!
writeAccessOnClassVariables
	^writeAccessOnClassVariables ! !

!CodeForNodeToMoveResult methodsFor: 'public' stamp: 'mc 4/17/2023 23:03:25'!
writeAccessOnInstanceVariables
	^writeAccessOnInstanceVariables! !

!CodeForNodeToMoveResult methodsFor: 'initialization' stamp: 'mc 9/14/2023 01:23:26'!
initializeNewWith: newCode modifiedReads: modifiedReads modifiedWrites: modifiedWrites modifiedClassReads: modifiedClassReads modifiedClassWrites: modifiedClassWrites 
	sourceCode := newCode.
	readAccessOnInstanceVariables := modifiedReads.
	writeAccessOnInstanceVariables := modifiedWrites.
	readAccessOnClassVariables := modifiedClassReads.
	writeAccessOnClassVariables := modifiedClassWrites.! !

!CodeForNodeToMoveResult class methodsFor: 'instance creation' stamp: 'mc 9/14/2023 01:23:52'!
newWith: newCode modifiedReads: modifiedReads modifiedWrites: modifiedWrites modifiedClassReads: modifiedClassReads modifiedClassWrites: modifiedClassWrites 
	^self new initializeNewWith: newCode modifiedReads: modifiedReads modifiedWrites: modifiedWrites modifiedClassReads: modifiedClassReads modifiedClassWrites: modifiedClassWrites ! !

!MoveMethodExtraParameterName methodsFor: 'accessing' stamp: 'mc 11/13/2023 02:04:19'!
assertIfCanMove: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable 

	self subclassResponsibility! !

!MoveMethodExtraParameterName methodsFor: 'accessing' stamp: 'mc 9/7/2023 22:58:23'!
associationToModifySelectorAndArgumentsOn: aCompiledMethod addOn: aCollection

	self subclassResponsibility! !

!MoveMethodExtraParameterName methodsFor: 'accessing' stamp: 'mc 9/7/2023 22:58:06'!
newSenderFor: compiledMethodToMove

	self subclassResponsibility! !

!ExtraParameterNameNeeded methodsFor: 'initialization' stamp: 'mc 8/31/2023 02:03:56'!
initializeParameterName: aParameterName 
	parameterName := aParameterName.! !

!ExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 11/13/2023 01:54:51'!
assertIfCanMove: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable 
	| needParameter |
	
	needParameter := MoveMethodRefactoring needParameterNameToMove: methodName from: sourceClass accessingThrough: instanceVariable.
	
	needParameter ifFalse: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterShouldNotBeProvidedClassErrorMessage].
	
	methodName isUnary ifFalse: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterKeywordShouldBeProvidedClassErrorMessage].
	
	(targetClass includesSelector: (methodName asString, ':') asSymbol ) ifTrue: [Refactoring refactoringError: MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage]! !

!ExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 9/7/2023 22:53:28'!
associationToModifySelectorAndArgumentsOn: aCompiledMethod addOn: aCollection  
	| assoc |
	assoc := (1 to: aCompiledMethod methodNode selectorLastPosition ) -> (aCompiledMethod methodNode selectorAndArgumentsAsString, ': ', parameterName).
	aCollection add: assoc.! !

!ExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 9/3/2023 02:45:04'!
newSenderFor: compiledMethodToMove 
	^compiledMethodToMove methodNode selectorAndArgumentsAsString, ': self'! !

!ExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 9/1/2023 00:36:55'!
parameterName
	^parameterName! !

!ExtraParameterNameNeeded class methodsFor: 'instance creation' stamp: 'mc 8/31/2023 02:03:38'!
parameterName: aParameterName 
	^self new initializeParameterName: aParameterName ! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'initialization' stamp: 'mc 8/31/2023 01:56:19'!
initializeParameterName: aParameterName extraKeyword: anExtraKeyword 
	parameterName := aParameterName.
	extraKeyword := anExtraKeyword.! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 11/13/2023 01:56:23'!
assertIfCanMove: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable 
	| needParameter |
	needParameter := MoveMethodRefactoring needParameterNameToMove: methodName from: sourceClass accessingThrough: instanceVariable..
	needParameter ifFalse:[Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterShouldNotBeProvidedClassErrorMessage].
	
	methodName isKeyword
		ifFalse:[Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterKeywordShouldNotBeProvidedClassErrorMessage].
	
	(targetClass includesSelector: (methodName asString, extraKeyword, ':') asSymbol ) ifTrue: [Refactoring refactoringError: MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage]! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 9/7/2023 22:49:35'!
associationToModifySelectorAndArgumentsOn: aCompiledMethod addOn: aCollection  
	| assoc |
	assoc := (1 to: aCompiledMethod methodNode selectorLastPosition ) -> (aCompiledMethod methodNode selectorAndArgumentsAsString, ' ', extraKeyword , ': ',  parameterName).
	aCollection add: assoc! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 9/3/2023 02:49:35'!
newSenderFor: compiledMethodToMove 
	^compiledMethodToMove methodNode selectorAndArgumentsAsString, ' ', extraKeyword, ': self'! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 9/1/2023 00:37:56'!
parameterName
	^parameterName! !

!ExtraParameterNameNeededAndExtraKeyword class methodsFor: 'instance creation' stamp: 'mc 8/31/2023 01:55:50'!
parameterName: aParameterName extraKeyword: anExtraKeyword 
	
	^self new initializeParameterName: aParameterName extraKeyword: anExtraKeyword! !

!NonExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 11/13/2023 01:45:56'!
assertIfCanMove: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable 
	| needParameter |
	needParameter := MoveMethodRefactoring needParameterNameToMove: methodName from: sourceClass accessingThrough: instanceVariable .
	needParameter ifTrue: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterShouldBeProvidedClassErrorMessage]! !

!NonExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 9/7/2023 22:50:59'!
associationToModifySelectorAndArgumentsOn: aCompiledMethod addOn: aCollection 
	! !

!NonExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 9/3/2023 02:43:47'!
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

!TesisMoveMethodRefactoringMenu class methodsFor: 'as yet unclassified' stamp: 'mc 9/11/2023 22:12:00'!
smalltalkEditorMenuOptions

	^`{
		{
				#submenuOf -> RefactoringMenues refactoringsLabel.
				#itemGroup 		-> 		40.
				#itemOrder 		-> 		50.
				#label 			-> 		'Move Method'.
				#selector 		-> 		#contextualMoveMethod.
				#icon 			-> 		#saveAsIcon
		} asDictionary.
	}`! !

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

!SmalltalkEditor methodsFor: '*MoveMethodRefactoring' stamp: 'mc 9/10/2023 19:35:01'!
contextualMoveMethodOf: aMethodNode in: aSelectedClass
	| aReference |
	aMethodNode
		withParseNodeIncluding: self startIndex
		do: [ :nodeUnderCursor | ^morph flash ]
		ifAbsent: [
			self startIndex <= aMethodNode selectorLastPosition ifFalse: [ ^ morph flash ].
			aReference := MethodReference class: aSelectedClass selector: aMethodNode selector.
			RefactoringApplier moveMethodApplier
				createAndValueHandlingExceptionsOn: model textProvider
				forMethod: aReference]

! !

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
