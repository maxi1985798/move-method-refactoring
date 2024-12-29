'From Cuis7.1 [latest update: #6611] on 28 December 2024 at 11:53:34 pm'!
'Description Udated to Cuis 7.1'!
!provides: 'MoveMethodRefactoring' 1 122!
SystemOrganization addCategory: #MoveMethodRefactoring!


!classDefinition: #CodeForNodeToMove category: #MoveMethodRefactoring!
ParseNodeVisitor subclass: #CodeForNodeToMove
	instanceVariableNames: 'compiledMethod methodNode intervalsToReject node intervalsToModify nodeInterval nodeOffsetInSourceCode parameterNeeded variableToAccesThrough hasImplicitSelfReturn targetClass methodToCompileOnSourceClass previewModifications'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'CodeForNodeToMove class' category: #MoveMethodRefactoring!
CodeForNodeToMove class
	instanceVariableNames: ''!

!classDefinition: #MethodWorksAsGetterVisitor category: #MoveMethodRefactoring!
ParseNodeVisitor subclass: #MethodWorksAsGetterVisitor
	instanceVariableNames: 'getterCandidate classVariableName returnMethodIsNotGetterClousure returnMethodIsGetterClousure'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MethodWorksAsGetterVisitor class' category: #MoveMethodRefactoring!
MethodWorksAsGetterVisitor class
	instanceVariableNames: ''!

!classDefinition: #NeedParameterName category: #MoveMethodRefactoring!
ParseNodeVisitor subclass: #NeedParameterName
	instanceVariableNames: 'needParameterName methodNode compiledMethod'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'NeedParameterName class' category: #MoveMethodRefactoring!
NeedParameterName class
	instanceVariableNames: ''!

!classDefinition: #NeedParameterNameForClassMethod category: #MoveMethodRefactoring!
NeedParameterName subclass: #NeedParameterNameForClassMethod
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'NeedParameterNameForClassMethod class' category: #MoveMethodRefactoring!
NeedParameterNameForClassMethod class
	instanceVariableNames: ''!

!classDefinition: #NeedParameterNameForInstanceMethod category: #MoveMethodRefactoring!
NeedParameterName subclass: #NeedParameterNameForInstanceMethod
	instanceVariableNames: 'instanceVariableNameToAccessThrough'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'NeedParameterNameForInstanceMethod class' category: #MoveMethodRefactoring!
NeedParameterNameForInstanceMethod class
	instanceVariableNames: ''!

!classDefinition: #CodeForNodeToMoveResult category: #MoveMethodRefactoring!
Object subclass: #CodeForNodeToMoveResult
	instanceVariableNames: 'sourceCode hasImplicitSelfReturn sourceClass targetClass methodsToCompileOnSourceClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'CodeForNodeToMoveResult class' category: #MoveMethodRefactoring!
CodeForNodeToMoveResult class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodExtraParameterName category: #MoveMethodRefactoring!
Object subclass: #MoveMethodExtraParameterName
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodExtraParameterName class' category: #MoveMethodRefactoring!
MoveMethodExtraParameterName class
	instanceVariableNames: ''!

!classDefinition: #ExtraParameterNameNeeded category: #MoveMethodRefactoring!
MoveMethodExtraParameterName subclass: #ExtraParameterNameNeeded
	instanceVariableNames: 'parameterName'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'ExtraParameterNameNeeded class' category: #MoveMethodRefactoring!
ExtraParameterNameNeeded class
	instanceVariableNames: ''!

!classDefinition: #ExtraParameterNameNeededAndExtraKeyword category: #MoveMethodRefactoring!
MoveMethodExtraParameterName subclass: #ExtraParameterNameNeededAndExtraKeyword
	instanceVariableNames: 'parameterName extraKeyword'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'ExtraParameterNameNeededAndExtraKeyword class' category: #MoveMethodRefactoring!
ExtraParameterNameNeededAndExtraKeyword class
	instanceVariableNames: ''!

!classDefinition: #NonExtraParameterNameNeeded category: #MoveMethodRefactoring!
MoveMethodExtraParameterName subclass: #NonExtraParameterNameNeeded
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'NonExtraParameterNameNeeded class' category: #MoveMethodRefactoring!
NonExtraParameterNameNeeded class
	instanceVariableNames: ''!

!classDefinition: #TesisMoveMethodRefactoringMenu category: #MoveMethodRefactoring!
Object subclass: #TesisMoveMethodRefactoringMenu
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'TesisMoveMethodRefactoringMenu class' category: #MoveMethodRefactoring!
TesisMoveMethodRefactoringMenu class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodRefactoring category: #MoveMethodRefactoring!
TransferMethod subclass: #MoveMethodRefactoring
	instanceVariableNames: 'methodName sourceClass targetClass collectionOfSendersToChange instanceVariableToAccessTarget parameterNeeded compiledMethodToMove resultAfterReplaceDependencies messageSendForDelegation codeForDelegation'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodRefactoring class' category: #MoveMethodRefactoring!
MoveMethodRefactoring class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodApplier category: #MoveMethodRefactoring!
TransferMethodApplier subclass: #MoveMethodApplier
	instanceVariableNames: 'model methodReference methodToMove sourceClass accessingThroughVariableName targetClass extraParameter'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodApplier class' category: #MoveMethodRefactoring!
MoveMethodApplier class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodWithActualScopeApplier category: #MoveMethodRefactoring!
MoveMethodApplier subclass: #MoveMethodWithActualScopeApplier
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodWithActualScopeApplier class' category: #MoveMethodRefactoring!
MoveMethodWithActualScopeApplier class
	instanceVariableNames: ''!

!classDefinition: #MoveMethodRefactoringTest category: #MoveMethodRefactoring!
RefactoringTest subclass: #MoveMethodRefactoringTest
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodRefactoringTest class' category: #MoveMethodRefactoring!
MoveMethodRefactoringTest class
	instanceVariableNames: ''!


!CodeForNodeToMove methodsFor: 'initialization' stamp: 'mc 12/28/2024 03:45:08'!
initializeFor: aCompiledMethod methodNode: aMethodNode variableToAcessThrough: aVariableToAccesoThroughName rejectingIntervals: aFewIntervalsToReject onNode: aNodeToGetCode parameterNeeded: aParameterNeeded targetClass: aTargetClass usingPreview: aPreviewModifications.
	compiledMethod := aCompiledMethod.
	methodNode := aMethodNode.
	intervalsToReject := aFewIntervalsToReject.
	node := aNodeToGetCode.
	intervalsToModify := OrderedCollection new.
	parameterNeeded := aParameterNeeded.
	variableToAccesThrough := aVariableToAccesoThroughName.
	hasImplicitSelfReturn := false.
	targetClass := aTargetClass.
	methodToCompileOnSourceClass := Set new.
	previewModifications := aPreviewModifications! !

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 12/28/2024 04:23:07'!
visitAssignmentNode: anAssignmentNode 
	| assigmentValue completeRangesOfassigmentNode resultForValue setterSelectorAsString |
	"self halt."
	anAssignmentNode variable isTemp ifTrue: [^super visitAssignmentNode: anAssignmentNode].
	completeRangesOfassigmentNode := self firstUnseenIntervalFor: anAssignmentNode.
	resultForValue :=			(CodeForNodeToMove 
					for: compiledMethod
					methodNode: methodNode
					variableToAcessThrough: variableToAccesThrough 
					rejectingIntervals: intervalsToReject 
					onNode: anAssignmentNode value
					parameterNeeded: parameterNeeded
					targetClass: targetClass
					usingPreview: previewModifications ) value.
	(self shouldAddParenthesisOnValueOf: anAssignmentNode)
		ifTrue: [assigmentValue := '(', resultForValue sourceCode , ')'.] 
		ifFalse: [assigmentValue := resultForValue sourceCode .].
	
	anAssignmentNode variable isLiteralVariableNode 
		ifTrue: [setterSelectorAsString := self setterForClassVariable: anAssignmentNode variable name.]
		ifFalse: [setterSelectorAsString := self setterForInstanceVariable: anAssignmentNode variable name.].
	
	compiledMethod methodClass methodDict 
					at: setterSelectorAsString asSymbol 
					ifPresent: [ :aMethod | ]
					ifAbsent: [
						methodToCompileOnSourceClass add: (setterSelectorAsString, ' anObject', String newLineString, String tab, '^', anAssignmentNode variable name, ' := anObject.').
						].

	
	self registerInterval: completeRangesOfassigmentNode withModification: (parameterNeeded parameterName , ' ', setterSelectorAsString, ' ', assigmentValue).
	methodToCompileOnSourceClass addAll: resultForValue methodToCompileOnSourceClass.
	! !

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 12/28/2024 03:44:51'!
visitInstanceVariableNode: anInstanceVariableNode 
	| sourceCodeForInterval anInterval getterToUse |
	"self halt."
	anInterval := self firstUnseenIntervalFor: anInstanceVariableNode.
	(anInstanceVariableNode name = variableToAccesThrough)
		ifTrue: [sourceCodeForInterval := 'self'.]
		ifFalse: [
			getterToUse := self getterForInstanceVariable: anInstanceVariableNode key.
			sourceCodeForInterval := parameterNeeded parameterName, ' ', getterToUse.
			(compiledMethod methodClass selectors includes: getterToUse) 
				ifFalse: [
					"gettersToCreate at: anInstanceVariableNode key put: getterToUse."
					methodToCompileOnSourceClass add: (getterToUse, String newLineString, String tab, '^', anInstanceVariableNode key, '.').
					].
			].
	self registerInterval: anInterval withModification: sourceCodeForInterval.
	! !

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 12/28/2024 03:44:57'!
visitLiteralVariableNode: aLiteralVariableNode 
	| sourceCodeForInterval anInterval getterToUse |
	"self halt."
	aLiteralVariableNode isReferencingGlobal ifTrue: [^self].
	anInterval := self firstUnseenIntervalFor: aLiteralVariableNode.
	getterToUse := self getterForClassVariable: aLiteralVariableNode name.
	sourceCodeForInterval := parameterNeeded parameterName, ' ', getterToUse.
	(compiledMethod methodClass selectors includes: getterToUse) 
				ifFalse: [
					methodToCompileOnSourceClass add: (getterToUse, String newLineString, String tab, '^', aLiteralVariableNode name, '.').
					].
	
	self registerInterval: anInterval withModification: sourceCodeForInterval.
! !

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 12/26/2024 02:01:13'!
visitMessageNode: aMessageNode 
	| rangeMessageNode newSend |
	"self halt."
	(aMessageNode receiver referencesSuper and: (aMessageNode receiver isVariableNode ))
		ifTrue:[
			rangeMessageNode := self firstUnseenIntervalFor: aMessageNode.
			aMessageNode isKeywordMessageSend
				ifTrue: [ 
					newSend := self newSenderFor: aMessageNode.
					((methodNode sourceText at: rangeMessageNode first) = $()
						ifTrue: [newSend := '(', newSend, ')'].
					self registerInterval: rangeMessageNode withModification: newSend.
					self encapsulateSuperColaboration: aMessageNode.
					]
				ifFalse: [
					self registerInterval: rangeMessageNode withModification: (parameterNeeded parameterName, ' ', (self newSelectorForSuperColaboration: aMessageNode)).
					"self encapsulateSuperColaboration: aMessageNode."
					methodToCompileOnSourceClass add: (self newSelectorForSuperColaboration: aMessageNode), String newLineString, String tab, '^super ', aMessageNode selector key asString, '.'.
					"compiledMethod methodClass compile:(self newSelectorForSuperColaboration: aMessageNode), String newLineString, String tab, '^super ', aMessageNode selector key asString, '.'."
					].
			
			]
		ifFalse:[ super visitMessageNode: aMessageNode ].
	! !

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 12/26/2024 01:49:03'!
visitMethodNode: aMethodNode 
	| parameterIndex selectorToRemovePosition parameterToRemovePosition argumentsCollection assoc |
	"moving to a parameter should change selector"
	(methodNode argumentNames includes: variableToAccesThrough) ifFalse: [
		parameterNeeded associationToModifySelectorAndArgumentsOn: compiledMethod addOn: intervalsToModify.
		^super visitMethodNode: aMethodNode].
	argumentsCollection := methodNode arguments.
	parameterIndex := argumentsCollection findFirst: [ :aParameterNode | aParameterNode name = variableToAccesThrough ].
	
	selectorToRemovePosition := methodNode selectorKeywordPositionAt: parameterIndex.
	parameterToRemovePosition := methodNode parameterDefinitionPositionAt: parameterIndex.

	(argumentsCollection size = 1)
		ifTrue: [
			(parameterNeeded isKindOf: ExtraParameterNameNeeded) 
			ifTrue: [self registerInterval: parameterToRemovePosition withModification: parameterNeeded parameterName.]
			ifFalse: [self registerInterval: (selectorToRemovePosition last to: parameterToRemovePosition last) withModification: ''.]
			
		]
		ifFalse: [
			assoc := parameterNeeded associationToModifySelectorAndArgumentsOn: compiledMethod withParameter: variableToAccesThrough .
			self registerInterval: assoc key withModification: assoc value .
			].
	
	^super visitMethodNode: aMethodNode ! !

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 7/14/2024 02:17:01'!
visitReturnNode: aReturnNode 
	"self halt."
	(aReturnNode isImplicitSelfReturnIn: methodNode)
		ifTrue: [hasImplicitSelfReturn := true]
		ifFalse: [super visitReturnNode: aReturnNode]! !

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 11/8/2024 00:49:42'!
visitTempVariableNode: aTempVariableNode 
	| anInterval sourceCodeForInterval |
	aTempVariableNode name = variableToAccesThrough ifTrue: [
		anInterval := self firstUnseenIntervalFor: aTempVariableNode.
		sourceCodeForInterval := 'self'.
		self registerInterval: anInterval withModification: sourceCodeForInterval.
		]! !

!CodeForNodeToMove methodsFor: 'visiting' stamp: 'mc 7/14/2024 02:17:01'!
visitVariableNode: aVariableNode 
	| anInterval sourceCodeForInterval |
	"self halt."
	anInterval := self firstUnseenIntervalFor: aVariableNode ifAbsent: [^self].
	sourceCodeForInterval := parameterNeeded parameterName.
	self registerInterval: anInterval withModification: sourceCodeForInterval.! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
compiledMethodAt: aSelector

	^ compiledMethod methodClass compiledMethodAt: aSelector! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 12/26/2024 02:01:51'!
encapsulateSuperColaboration: aMessageNode
	
	| colaborationEncapsulated indexSourceCode newSelector newSourceCode |
	newSelector := self newKeywordSelector: aMessageNode .
	indexSourceCode := 1.
	newSourceCode := ''.
	aMessageNode selector key keywords do: [:aKeyword | 
		newSourceCode := newSourceCode, ' ', aKeyword, ' ', 'arg', indexSourceCode asString. 
		indexSourceCode := indexSourceCode +1 ].
	newSourceCode := newSourceCode withBlanksTrimmed.
	newSourceCode := '^super ', newSourceCode, '.'.
	colaborationEncapsulated := newSelector, String newLineString, String tab, newSourceCode.
	methodToCompileOnSourceClass add: colaborationEncapsulated.
	"compiledMethod methodClass compile: colaborationEncapsulated."! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
filterRangesThatDoNotBelongToTheCurrentNodeIn: aCollectionOfRanges

	^ self firstIntervalOn: (aCollectionOfRanges select: [ :anInterval | nodeInterval includesAllOf: anInterval ])! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
firstIntervalOn: aCollectionOfIntervals
	^aCollectionOfIntervals detectMin: [ :anInterval | anInterval first]! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
firstUnseenIntervalFor: aNode 
	^self firstUnseenIntervalFor: aNode ifAbsent: [] ! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
firstUnseenIntervalFor: aNode ifAbsent: anAbsentBlock 
	
	| completeRangesOfassigmentNode |
	
	completeRangesOfassigmentNode := methodNode completeSourceRangesOf: aNode ifAbsent: anAbsentBlock.
	self removeSeenRanges: completeRangesOfassigmentNode.
	^self filterRangesThatDoNotBelongToTheCurrentNodeIn: completeRangesOfassigmentNode.! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
generateNewGetterForVariable: aVariableName withSelector: aSelectorForGetter
	| getterCandidate |
	
	getterCandidate := aSelectorForGetter.
	[compiledMethod methodClass selectors includes: getterCandidate] whileTrue: [
		getterCandidate := (getterCandidate copyFrom: 1 to: getterCandidate size), '_'.].
	^getterCandidate.! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
generateNewSetterForVariable: aVariableName withSelector: aSelectorForSetter
	| setterCandidate |
	
	setterCandidate := aSelectorForSetter, ':'.
	[compiledMethod methodClass selectors includes: setterCandidate] whileTrue: [
		setterCandidate := (setterCandidate copyFrom: 1 to: setterCandidate size -1), '_:'.].
	^setterCandidate.! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
getterForClassVariable: aClassVariableName 
	| gettersCandidates |
	gettersCandidates := self selectorsWhichSatisfy: [ :aSelector | 
				aSelector ~= compiledMethod selector and: [self method: (self compiledMethodAt: aSelector) isGetterOfClassVariable: aClassVariableName ]
			].
	gettersCandidates 
		ifEmpty: [^self generateNewGetterForVariable: aClassVariableName withSelector: aClassVariableName uncapitalized]
		ifNotEmpty: [^gettersCandidates first] .! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
getterForInstanceVariable: anInstanceVariableName 
	| gettersCandidates |
	gettersCandidates := self selectorsWhichSatisfy: [ :aSelector | 
				aSelector ~= compiledMethod selector and: [self method: (self compiledMethodAt: aSelector) isGetterOf: anInstanceVariableName ]
			].
	gettersCandidates 
		ifEmpty: [^self generateNewGetterForVariable: anInstanceVariableName withSelector: anInstanceVariableName] 
		ifNotEmpty: [^gettersCandidates first].
		! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
initializeNodeInterval

	| posibleRangesForNode |

	node isMethodNode 
		ifTrue:[ 
			nodeInterval := 1 to: (compiledMethod sourceCode size).
			]
		ifFalse:[ 
			posibleRangesForNode := (methodNode completeSourceRangesOf: node ifAbsent: []).
			self removeSeenRanges: posibleRangesForNode.
			nodeInterval := self firstIntervalOn: posibleRangesForNode.
			]! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
initializeOffset

	^ nodeOffsetInSourceCode := nodeInterval first -1! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
method: getterCandidate isGetterOf: anInstanceVariableName 
	| anInstVarIndex |
	
	anInstVarIndex := compiledMethod methodClass allInstVarNames indexOf: anInstanceVariableName.
	^getterCandidate isReturnField and: [ getterCandidate returnField + 1 = anInstVarIndex ]! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
method: getterCandidate isGetterOfClassVariable: aClassVariableName 
	^(MethodWorksAsGetterVisitor method: getterCandidate forClassVariable: aClassVariableName) value
	"^true"! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
method: setterCandidate isSetterOf: anInstVarName 
	| anInstVarIndex varIndexCode scanner |

	anInstVarIndex := compiledMethod methodClass allInstVarNames indexOf: anInstVarName.

	"setterCandidate selector = (anInstVarName, ':') ifFalse: [ ^false ]."
	
	"I could have use the AST of the method, but parsing the source code could generate errors
	that it is why I decided to check the bytecodes - Hernan"
	varIndexCode := anInstVarIndex - 1.
	scanner := InstructionStream on: setterCandidate.
	scanner nextByte = 16r10 ifFalse: [ ^false ].
	scanner movePcForward.
	(setterCandidate writesFieldCode: varIndexCode with: scanner nextByte using: scanner) ifFalse: [ ^false ].
	scanner movePcForward.
	^scanner nextByte = 16r7C! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
newKeywordSelector: aMessageNode
	
	| indexNewSelector newSelector |
	newSelector := ''.
	indexNewSelector := 1.
	aMessageNode selector key keywords do: [:aKeyword | 
		newSelector := newSelector, ' ', aKeyword, ' ', 'arg', indexNewSelector asString.
		indexNewSelector := indexNewSelector +1 ].
	newSelector := newSelector withBlanksTrimmed.
	newSelector := 'CHANGE_ME_super_', newSelector.
	^newSelector! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
newSelectorForSuperColaboration: aMessageNode

	^ 'CHANGE_ME_super_', aMessageNode selector key asString! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 12/28/2024 04:26:39'!
newSenderFor: aMessageNode
	|  newSend argumentsCode argumentIndex replacer replacerResult argumentNode |
	argumentsCode := OrderedCollection new.
	argumentIndex := 1.
	"self halt."
	aMessageNode selector key keywords do: [ :aKeyword | 
		argumentNode := aMessageNode argumentsInEvaluationOrder at: argumentIndex.
		replacer := CodeForNodeToMove 
					for: compiledMethod
					methodNode: methodNode
					variableToAcessThrough: variableToAccesThrough
					rejectingIntervals: intervalsToReject
					onNode: argumentNode
					parameterNeeded: parameterNeeded
					targetClass: targetClass
					usingPreview: previewModifications.
		replacerResult := replacer value.
		(self shouldAddParenthesis: argumentNode) 
			ifTrue: [argumentsCode add: '(', replacerResult sourceCode, ')'.]
			ifFalse: [argumentsCode add: replacerResult sourceCode.].
		methodToCompileOnSourceClass addAll: replacerResult methodToCompileOnSourceClass.
		argumentIndex := argumentIndex +1].
	argumentIndex := 1.
	newSend := ''.
	aMessageNode selector key keywords do: [ :aKeyword | newSend := newSend, ' ', aKeyword, ' ', (argumentsCode at: argumentIndex). argumentIndex := argumentIndex +1].
	^parameterNeeded parameterName, ' CHANGE_ME_super_', (newSend copyFrom: 2 to: newSend size).
! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
registerInterval: anInterval withModification: sourceCodeForInterval 
	intervalsToReject add: anInterval.
	intervalsToModify add: anInterval -> sourceCodeForInterval! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
removeSeenRanges: rangesOfNode 
	^rangesOfNode removeAllSuchThat: [ :aSourceInterval | intervalsToReject anySatisfy: [ :aSourceIntervalToModify | aSourceIntervalToModify includesAllOf: aSourceInterval ] ]! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
selectorsWhichSatisfy: aBlock

	^ compiledMethod methodClass selectors select: aBlock! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
setterForClassVariable: aClassVariableName 
	| settersCandidates |
	settersCandidates := self selectorsWhichSatisfy: [ :aSelector | 
				aSelector ~= compiledMethod selector and: [self method: (self compiledMethodAt: aSelector) isSetterOf: aClassVariableName ]
			].
	settersCandidates isEmpty
		ifTrue: [^self generateNewSetterForVariable: aClassVariableName withSelector: aClassVariableName uncapitalized]
		ifFalse: [^settersCandidates first] .! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
setterForInstanceVariable: anInstanceVariableName 
	| settersCandidates |
	"self halt."
	settersCandidates := self selectorsWhichSatisfy: [ :aSelector | 
				aSelector ~= compiledMethod selector and: [self method: (self compiledMethodAt: aSelector) isSetterOf: anInstanceVariableName ]
			].
	settersCandidates isEmpty
		ifTrue: [^self generateNewSetterForVariable: anInstanceVariableName withSelector: anInstanceVariableName]
		ifFalse: [^settersCandidates first] .
		! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
shouldAddParenthesis: argumentNode 
	^argumentNode isAssignmentNode! !

!CodeForNodeToMove methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:01'!
shouldAddParenthesisOnValueOf: anAssignmentNode

	^ ((anAssignmentNode value isMessageNode and: [anAssignmentNode value isKeywordMessageSend])) or: [anAssignmentNode value isAssignmentNode ]! !

!CodeForNodeToMove methodsFor: 'accessing' stamp: 'mc 12/28/2024 04:29:24'!
value
	| newCode newCodeForNode |
	"self halt."
	self initializeNodeInterval.
	self initializeOffset.
	node accept: self.
	intervalsToModify := intervalsToModify collect: [ :anAssociation | (anAssociation key - nodeOffsetInSourceCode) -> anAssociation value ].
	newCodeForNode := compiledMethod sourceCode copyFrom: nodeInterval first to: nodeInterval last.
	
	intervalsToModify sort: [ :left :right | left key first < right key first ].
	newCode := newCodeForNode copyReplacing: intervalsToModify.
	 
	hasImplicitSelfReturn 	ifTrue: [ 
			(newCode last = $.) ifFalse: [newCode := newCode append: '.'].
			newCode := newCode append: String newLineString, String tab, '^', parameterNeeded parameterName, '.'
			].
	^CodeForNodeToMoveResult 
				newWith: newCode 
				sourceClass: compiledMethod methodClass
				targetClass: targetClass
				methodsToCompileOnSourceClass: methodToCompileOnSourceClass! !

!CodeForNodeToMove class methodsFor: 'instance creation' stamp: 'mc 12/27/2024 01:57:47'!
for: aCompiledMethod methodNode: aMethodNode variableToAcessThrough: aVariableToAccesoThroughName rejectingIntervals: aFewIntervalsToReject onNode: aNodeToGetCode parameterNeeded: parameterNeeded targetClass: aTargetClass usingPreview: previewModifications.
	^self new 
		initializeFor: aCompiledMethod
		methodNode: aMethodNode
		variableToAcessThrough: aVariableToAccesoThroughName
		rejectingIntervals: aFewIntervalsToReject
		onNode: aNodeToGetCode
		parameterNeeded: parameterNeeded
		targetClass: aTargetClass
		usingPreview: previewModifications.! !

!MethodWorksAsGetterVisitor methodsFor: 'initialization' stamp: 'mc 7/14/2024 02:17:02'!
initializeMethod: aGetterCandidate forClassVariable: aClassVariableName 
	
	getterCandidate := aGetterCandidate.
	classVariableName := aClassVariableName.! !

!MethodWorksAsGetterVisitor methodsFor: 'as yet unclassified' stamp: 'mc 7/14/2024 02:17:02'!
value
	returnMethodIsNotGetterClousure := [^false].
	returnMethodIsGetterClousure := [^true].
	getterCandidate methodNode accept: self.
	^false! !

!MethodWorksAsGetterVisitor methodsFor: 'visiting' stamp: 'mc 7/14/2024 02:17:02'!
visitBlockNode: aBlockNode 
	(aBlockNode statements size = 1) ifFalse: [returnMethodIsNotGetterClousure value].
	(aBlockNode statements first expr name = classVariableName) 
		ifFalse: [returnMethodIsNotGetterClousure value]
		ifTrue: [returnMethodIsGetterClousure value].! !

!MethodWorksAsGetterVisitor class methodsFor: 'instance creation' stamp: 'mc 7/14/2024 02:17:02'!
method: getterCandidate forClassVariable: aClassVariableName 
	
	^self new initializeMethod: getterCandidate forClassVariable: aClassVariableName ! !

!NeedParameterName methodsFor: 'public' stamp: 'mc 7/14/2024 02:17:03'!
value
	  
	methodNode := compiledMethod methodNode.
	methodNode accept: self.
	^self needParameterName ! !

!NeedParameterName methodsFor: 'visiting' stamp: 'mc 7/14/2024 02:17:03'!
visitLiteralVariableNode: aLiteralVariableNode 

	needParameterName := needParameterName or: [aLiteralVariableNode  isReferencingGlobal not].! !

!NeedParameterName methodsFor: 'visiting' stamp: 'mc 7/14/2024 02:17:03'!
visitVariableNode: aVariableNode 
	needParameterName := true.! !

!NeedParameterName methodsFor: 'initialization' stamp: 'mc 7/14/2024 02:17:03'!
initializeWith: aCompiledMethod 
	needParameterName := false.
	compiledMethod := aCompiledMethod.
	! !

!NeedParameterName methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:03'!
needParameterName
	^needParameterName! !

!NeedParameterNameForClassMethod methodsFor: 'visiting' stamp: 'mc 7/14/2024 02:17:03'!
visitInstanceVariableNode: anInstanceVariableNode 
	needParameterName := true! !

!NeedParameterNameForClassMethod class methodsFor: 'instance creation' stamp: 'mc 7/14/2024 02:17:03'!
for: compiledMethod
	^self new initializeWith: compiledMethod ! !

!NeedParameterNameForInstanceMethod methodsFor: 'visiting' stamp: 'mc 7/14/2024 02:17:03'!
visitInstanceVariableNode: anInstanceVariableNode 
	
	needParameterName := needParameterName or: [instanceVariableNameToAccessThrough ~= anInstanceVariableNode name].! !

!NeedParameterNameForInstanceMethod methodsFor: 'initialization' stamp: 'mc 7/14/2024 02:17:03'!
initializeWith: aCompiledMethod newAccessingThrough: instanceVariable 
	self initializeWith: aCompiledMethod.
	instanceVariableNameToAccessThrough := instanceVariable.! !

!NeedParameterNameForInstanceMethod class methodsFor: 'instance creation' stamp: 'mc 7/14/2024 02:17:03'!
for: compiledMethod newAccessingThrough: instanceVariable 
	
	^self new initializeWith: compiledMethod newAccessingThrough: instanceVariable ! !

!CodeForNodeToMoveResult methodsFor: 'public' stamp: 'mc 12/25/2024 12:51:52'!
compileInTargetClass
	^targetClass compile: self sourceCode! !

!CodeForNodeToMoveResult methodsFor: 'public' stamp: 'mc 12/26/2024 02:07:21'!
compileOnSourceClass
	methodsToCompileOnSourceClass do: [ :aMethodToCompile | sourceClass compile: aMethodToCompile ].
	! !

!CodeForNodeToMoveResult methodsFor: 'public' stamp: 'mc 12/27/2024 00:33:00'!
methodToCompileOnSourceClass
	^methodsToCompileOnSourceClass ! !

!CodeForNodeToMoveResult methodsFor: 'public' stamp: 'mc 7/14/2024 02:17:01'!
sourceCode
	^sourceCode
	! !

!CodeForNodeToMoveResult methodsFor: 'initialization' stamp: 'mc 12/28/2024 04:14:06'!
initializeNewWith: newCode sourceClass: aSourceClass targetClass: aTargetClass methodsToCompileOnSourceClass: allMethodsToCompileOnSourceClass
	sourceCode := newCode.
	sourceClass := aSourceClass.
	targetClass := aTargetClass.
	methodsToCompileOnSourceClass := allMethodsToCompileOnSourceClass 
	! !

!CodeForNodeToMoveResult class methodsFor: 'instance creation' stamp: 'mc 12/28/2024 04:14:40'!
newWith: newCode sourceClass: aSourceClass targetClass: aTargetClass methodsToCompileOnSourceClass: allMethodsToCompileOnSourceClass
	^self new 
		initializeNewWith: newCode
		sourceClass: aSourceClass
		targetClass: aTargetClass
		methodsToCompileOnSourceClass: allMethodsToCompileOnSourceClass
! !

!MoveMethodExtraParameterName methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:02'!
assertIfCanMove: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable 

	self subclassResponsibility! !

!MoveMethodExtraParameterName methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:02'!
assertIfCanMoveClassMethod: methodName from: sourceClass to: targetClass 

	self subclassResponsibility! !

!MoveMethodExtraParameterName methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:02'!
associationToModifySelectorAndArgumentsOn: aCompiledMethod addOn: aCollection

	self subclassResponsibility! !

!MoveMethodExtraParameterName methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:02'!
newSenderFor: compiledMethodToMove

	self subclassResponsibility! !

!MoveMethodExtraParameterName methodsFor: 'accessing' stamp: 'mc 12/26/2024 00:32:16'!
selectorAndArgumentsOf: aCompiledMethod withoutParameter: parameterInCompiledMethod  
	| keywords parameterIndex parameters |
	parameters := aCompiledMethod methodNode argumentNames.
	parameterIndex := parameters findFirst: [ :aParameterName | aParameterName = parameterInCompiledMethod ].
	
	keywords := aCompiledMethod selector keywords asOrderedCollection removeIndex: parameterIndex.
	parameters := parameters removeIndex: parameterIndex.
	
	^String streamContents: [ :messageStream |
		keywords 
			with: parameters 
			do: [ :aKeyword :aParameter | 
				messageStream nextPutAll: aKeyword;
								nextPut:  Character space;
								nextPutAll: aParameter] 
			separatedBy: [ messageStream nextPut: Character space ].
	 ].
	! !

!ExtraParameterNameNeeded methodsFor: 'initialization' stamp: 'mc 7/14/2024 02:17:01'!
initializeParameterName: aParameterName 
	parameterName := aParameterName.! !

!ExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 11/11/2024 02:52:39'!
assertIfCanMove: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable 
	| needParameter newSelector methodArgumentNames |
	
	needParameter := MoveMethodRefactoring needParameterNameToMove: methodName from: sourceClass accessingThrough: instanceVariable.
	
	needParameter ifFalse: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterShouldNotBeProvidedClassErrorMessage].
	methodArgumentNames := (sourceClass>>methodName) methodNode argumentNames.
	(methodArgumentNames includes: instanceVariable)
	ifFalse: [(methodName isUnary) ifFalse: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterKeywordShouldBeProvidedClassErrorMessage].
	]
	ifTrue: [methodArgumentNames size = 1 ifFalse: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterKeywordShouldBeProvidedClassErrorMessage]].
	newSelector := (methodName asString, ':') asSymbol.
	(targetClass includesSelector: newSelector ) ifTrue: [Refactoring refactoringError: MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].
	
	(targetClass allSelectors includes: newSelector) ifTrue: [Refactoring refactoringWarning: (MoveMethodRefactoring method: newSelector IsGoingToOverrideWarningMessageOn: targetClass )].! !

!ExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:01'!
assertIfCanMoveClassMethod: methodName from: sourceClass to: targetClass 
	| needParameter |
	needParameter := MoveMethodRefactoring needParameterNameToMoveClassMethod: methodName from: sourceClass.
	
	needParameter ifFalse: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterShouldNotBeProvidedClassErrorMessage].
	
	(methodName isUnary) ifFalse: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterKeywordShouldBeProvidedClassErrorMessage].
	
	(targetClass class includesSelector: (methodName asString, ':') asSymbol) ifTrue: [Refactoring refactoringError: MoveMethodRefactoring classMethodShouldNotExistsOnTargertClassErrorMessage]! !

!ExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:01'!
associationToModifySelectorAndArgumentsOn: aCompiledMethod addOn: aCollection  
	| assoc |
	assoc := (1 to: aCompiledMethod methodNode selectorLastPosition ) -> (aCompiledMethod methodNode selectorAndArgumentsAsString, ': ', parameterName).
	aCollection add: assoc.! !

!ExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:01'!
newSenderFor: compiledMethodToMove 
	^compiledMethodToMove methodNode selectorAndArgumentsAsString, ': self'! !

!ExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 11/25/2024 02:33:15'!
newSenderFor: compiledMethodToMove usingParameter: parameterName2 
	
	^compiledMethodToMove methodNode selector, ' self'
	! !

!ExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:01'!
parameterName
	^parameterName! !

!ExtraParameterNameNeeded class methodsFor: 'instance creation' stamp: 'mc 7/14/2024 02:17:01'!
parameterName: aParameterName 
	^self new initializeParameterName: aParameterName ! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'initialization' stamp: 'mc 7/14/2024 02:17:01'!
initializeParameterName: aParameterName extraKeyword: anExtraKeyword 
	parameterName := aParameterName.
	extraKeyword := anExtraKeyword.! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 12/14/2024 23:39:26'!
assertIfCanMove: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable 
	| needParameter newSelector methodArgumentNames keywords parameterIndex parameters |
	needParameter := MoveMethodRefactoring needParameterNameToMove: methodName from: sourceClass accessingThrough: instanceVariable..
	needParameter ifFalse:[Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterShouldNotBeProvidedClassErrorMessage].
	methodArgumentNames := (sourceClass>>methodName) methodNode argumentNames.
	(methodArgumentNames includes: instanceVariable)
		ifFalse: [
			methodName isKeyword ifFalse:[Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterKeywordShouldNotBeProvidedClassErrorMessage].

			newSelector := (methodName asString, extraKeyword, ':') asSymbol.
			(targetClass includesSelector: newSelector ) ifTrue: [Refactoring refactoringError: MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].
	
			(targetClass allSelectors includes: newSelector ) ifTrue: [Refactoring refactoringWarning: (MoveMethodRefactoring method: newSelector IsGoingToOverrideWarningMessageOn: targetClass )]
			] 
		ifTrue: [
			methodArgumentNames size = 1 ifTrue: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterKeywordShouldNotBeProvidedClassErrorMessage].
			
			parameters := (sourceClass>>methodName) methodNode argumentNames.
			parameterIndex := parameters findFirst: [ :aParameterName | aParameterName = instanceVariable ].
			
			keywords := (sourceClass>>methodName) selector keywords asOrderedCollection removeIndex: parameterIndex.
			keywords add: extraKeyword, ':'.
			
			newSelector := (keywords inject: '' into: [ :accum :keyword | accum, keyword ]) asSymbol.
			(targetClass includesSelector: newSelector ) ifTrue: [Refactoring refactoringError: MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].
			
			(targetClass allSelectors includes: newSelector ) ifTrue: [Refactoring refactoringWarning: (MoveMethodRefactoring method: newSelector IsGoingToOverrideWarningMessageOn: targetClass )].
			
			].
	! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:02'!
assertIfCanMoveClassMethod: methodName from: sourceClass to: targetClass 
	| needParameter |
	
	needParameter := MoveMethodRefactoring needParameterNameToMoveClassMethod: methodName from: sourceClass.
	
	needParameter ifFalse:[Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterShouldNotBeProvidedClassErrorMessage].
	
	methodName isKeyword
		ifFalse:[Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterKeywordShouldNotBeProvidedClassErrorMessage].
	
	(targetClass class includesSelector: (methodName asString, extraKeyword, ':') asSymbol) ifTrue: [Refactoring refactoringError: MoveMethodRefactoring classMethodShouldNotExistsOnTargertClassErrorMessage]! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:01'!
associationToModifySelectorAndArgumentsOn: aCompiledMethod addOn: aCollection  
	| assoc |
	assoc := (1 to: aCompiledMethod methodNode selectorLastPosition ) -> (aCompiledMethod methodNode selectorAndArgumentsAsString, ' ', extraKeyword , ': ',  parameterName).
	aCollection add: assoc! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 12/26/2024 00:33:59'!
associationToModifySelectorAndArgumentsOn: aCompiledMethod withParameter: parameterInCompiledMethod  
	| newSelectorAndArguments |
	
	newSelectorAndArguments := self selectorAndArgumentsOf: aCompiledMethod withoutParameter: parameterInCompiledMethod.

	newSelectorAndArguments := newSelectorAndArguments, ' ', extraKeyword, ': ', parameterName.

	^(1 to: aCompiledMethod methodNode selectorLastPosition ) -> newSelectorAndArguments.! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:01'!
newSenderFor: compiledMethodToMove 
	^compiledMethodToMove methodNode selectorAndArgumentsAsString, ' ', extraKeyword, ': self'! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 12/26/2024 00:42:25'!
newSenderFor: compiledMethodToMove usingParameter: parameterName2 

	| newSelectorAndArguments |

	newSelectorAndArguments := self selectorAndArgumentsOf: compiledMethodToMove withoutParameter: parameterName2.

	^newSelectorAndArguments, ' ', extraKeyword, ': self'.! !

!ExtraParameterNameNeededAndExtraKeyword methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:01'!
parameterName
	^parameterName! !

!ExtraParameterNameNeededAndExtraKeyword class methodsFor: 'instance creation' stamp: 'mc 7/14/2024 02:17:02'!
parameterName: aParameterName extraKeyword: anExtraKeyword 
	
	^self new initializeParameterName: aParameterName extraKeyword: anExtraKeyword! !

!NonExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 12/17/2024 02:44:20'!
assertIfCanMove: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable 
	| needParameter methodArgumentNames newSelector |
	
	needParameter := MoveMethodRefactoring needParameterNameToMove: methodName from: sourceClass accessingThrough: instanceVariable.
	
	needParameter ifTrue: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterShouldBeProvidedClassErrorMessage].
	
	methodArgumentNames := (sourceClass>>methodName) methodNode argumentNames.
	(methodArgumentNames includes: instanceVariable)
		ifFalse: [
			(targetClass includesSelector: methodName) ifTrue: [ Refactoring refactoringError: MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage ].
			(targetClass allSelectors includes: methodName) ifTrue: [Refactoring refactoringWarning: (MoveMethodRefactoring method: methodName IsGoingToOverrideWarningMessageOn: targetClass )].			
			]
		ifTrue: [
			((sourceClass>>methodName) methodNode argumentNames size = 1)
			ifTrue: [newSelector := (methodName copyFrom: 1 count: methodName size -1) asSymbol .]
			ifFalse: [
				| keywords parameterIndex parameters |
				parameters := (sourceClass>>methodName) methodNode argumentNames.
				parameterIndex := parameters findFirst: [ :aParameterName | aParameterName = instanceVariable ].
				
				keywords := (sourceClass>>methodName) selector keywords asOrderedCollection removeIndex: parameterIndex.
				newSelector := (keywords inject: '' into: [ :accum :keyword | accum, keyword ]) asSymbol.
				].
			
			(targetClass includesSelector: newSelector ) ifTrue: [Refactoring refactoringError: MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].


			(targetClass allSelectors includes: newSelector) ifTrue: [Refactoring refactoringWarning: (MoveMethodRefactoring method: newSelector IsGoingToOverrideWarningMessageOn: targetClass )].			
			]
! !

!NonExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:03'!
assertIfCanMoveClassMethod: methodName from: sourceClass to: targetClass 
	
	| needParameter |
	
	needParameter := MoveMethodRefactoring needParameterNameToMoveClassMethod: methodName from: sourceClass.
	needParameter ifTrue: [Refactoring refactoringError: MoveMethodRefactoring nameForNewParameterShouldBeProvidedClassErrorMessage].
	! !

!NonExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:03'!
associationToModifySelectorAndArgumentsOn: aCompiledMethod addOn: aCollection 
	! !

!NonExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 11/29/2024 00:48:20'!
associationToModifySelectorAndArgumentsOn: aCompiledMethod withParameter: parameterInCompiledMethod  

	^(1 to: aCompiledMethod methodNode selectorLastPosition ) -> (self selectorAndArgumentsOf: aCompiledMethod withoutParameter: parameterInCompiledMethod ).
	! !

!NonExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 7/14/2024 02:17:03'!
newSenderFor: compiledMethodToMove 
	^compiledMethodToMove methodNode selectorAndArgumentsAsString.! !

!NonExtraParameterNameNeeded methodsFor: 'accessing' stamp: 'mc 11/29/2024 00:50:14'!
newSenderFor: compiledMethodToMove usingParameter: parameterName 

	| originalSelector |

	(compiledMethodToMove methodNode argumentNames size = 1)
		ifTrue: [
			originalSelector := compiledMethodToMove selector.
			^originalSelector asString copyFrom: 1 to: originalSelector size -1
		]
		ifFalse: [
			^self selectorAndArgumentsOf: compiledMethodToMove withoutParameter: parameterName  
		]! !

!TesisMoveMethodRefactoringMenu class methodsFor: 'menu & kbd shortcuts' stamp: 'jmv 7/30/2024 12:29:21'!
messageListMenuSpec
	"
	BrowserWindow at: #messageListMenuSpec registerMenuAndShortcutsSpecProvider:
		(MessageSend receiver: TesisMoveMethodRefactoringMenu selector: #messageListMenuSpec).
	Do this in TesisMoveMethodRefactoringMenu class >> initialize
	"
	^#(
		#(1119		'move method...' 					nil 		window 			moveMethod 				saveAsIcon)
	)! !

!TesisMoveMethodRefactoringMenu class methodsFor: 'menu & kbd shortcuts' stamp: 'jmv 7/30/2024 14:52:15'!
smalltalkEditorMenuSpec
	"
	BrowserWindow at: #SmalltalkEditor registerMenuAndShortcutsSpecProvider:
		(MessageSend receiver: TesisMoveMethodRefactoringMenu selector: #smalltalkEditorMenuSpec).
	Do this in TesisMoveMethodRefactoringMenu class >> initialize
	"
	^#(
		#(2170		'Move Method' 					$7 		editor 			contextualMoveMethod
		 		saveAsIcon							'Move Method what is under cursor')
	)! !

!TesisMoveMethodRefactoringMenu class methodsFor: 'initialization' stamp: 'jmv 7/30/2024 14:53:09'!
initialize

	BrowserWindow at: #messageListMenuSpec registerMenuAndShortcutsSpecProvider:
		(MessageSend receiver: self selector: #messageListMenuSpec).

	BrowserWindow at: #SmalltalkEditor registerMenuAndShortcutsSpecProvider:
		(MessageSend receiver: TesisMoveMethodRefactoringMenu selector: #smalltalkEditorMenuSpec).! !

!MoveMethodRefactoring methodsFor: 'initialization' stamp: 'mc 7/14/2024 02:17:02'!
initializeClassMethodNamed: aMethodName from: aSourceClass to: aTargetClass parameterNeeded: anExtraParameterNeeded 
	methodName := aMethodName.
	sourceClass := aSourceClass.
	targetClass := aTargetClass.
	parameterNeeded := anExtraParameterNeeded.! !

!MoveMethodRefactoring methodsFor: 'initialization' stamp: 'mc 7/14/2024 02:17:02'!
initializeMethodNamed: aMethodName from: aSourceClass to: aTargetClass accessingThrough: anInstanceVariable parameterNeeded: anExtraParameterNeeded 
	methodName := aMethodName.
	sourceClass := aSourceClass.
	targetClass := aTargetClass.
	instanceVariableToAccessTarget := anInstanceVariable.
	parameterNeeded := anExtraParameterNeeded ! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 11/7/2024 23:34:43'!
apply
	self
		findMethodToMove;
		replaceDependenciesOnMethodToMove;
		compileInTargetClass;
		createAccessors;
		replaceMethodForDelegation.! !

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 12/25/2024 12:51:05'!
compileInTargetClass

	^resultAfterReplaceDependencies compileInTargetClass! !

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 12/27/2024 03:18:16'!
createAccessors
	
	^resultAfterReplaceDependencies compileOnSourceClass.! !

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 7/14/2024 02:17:02'!
findMethodToMove

	^ compiledMethodToMove := sourceClass methodDict at: methodName! !

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 12/28/2024 04:14:40'!
replaceDependenciesOnMethodToMove
	| replacer methodNode |
	
	methodNode := compiledMethodToMove methodNode.
	replacer := CodeForNodeToMove 
		for: compiledMethodToMove
		methodNode: methodNode
		variableToAcessThrough: instanceVariableToAccessTarget 
		rejectingIntervals: OrderedCollection new
		onNode: methodNode
		parameterNeeded: parameterNeeded
		targetClass: targetClass
		usingPreview: (CodeForNodeToMoveResult 
				newWith: compiledMethodToMove sourceCode 
				sourceClass: sourceClass 
				targetClass: targetClass
				methodsToCompileOnSourceClass: Set new).
	resultAfterReplaceDependencies := replacer value.! !

!MoveMethodRefactoring methodsFor: 'private' stamp: 'mc 11/26/2024 02:59:51'!
replaceMethodForDelegation
	
	(compiledMethodToMove methodNode argumentNames includes: instanceVariableToAccessTarget)
		ifFalse: [messageSendForDelegation := parameterNeeded newSenderFor: compiledMethodToMove.	]
		ifTrue: [messageSendForDelegation := parameterNeeded newSenderFor: compiledMethodToMove usingParameter: instanceVariableToAccessTarget.].
	codeForDelegation := compiledMethodToMove selectorAndArgumentsAsString, String newLineString, String tab, '^'.
	
	sourceClass isMeta ifTrue: [ instanceVariableToAccessTarget := (targetClass soleInstance name) ].
	codeForDelegation := codeForDelegation, instanceVariableToAccessTarget, ' ', messageSendForDelegation, '.'.
	sourceClass compile: codeForDelegation				! !

!MoveMethodRefactoring class methodsFor: 'instance creation' stamp: 'mc 7/14/2024 02:17:02'!
classMethodNamed: methodName from: sourceClass to: targetClass parameterNeeded: anExtraParameterNeeded 
	(methodName isNil) ifTrue: [ self refactoringError: self classMethodToMoveShouldNotBeNilErrorMessage ].
	(sourceClass isNil) ifTrue: [ self refactoringError: self sourceClassShouldNotBeNilErrorMessage].
	(targetClass isNil) ifTrue: [ self refactoringError: self targetClassShouldNotBeNilErrorMessage ].
	(targetClass class includesSelector: methodName) ifTrue: [ self refactoringError: self classMethodShouldNotExistsOnTargertClassErrorMessage ].
	(sourceClass class includesSelector: methodName) ifFalse: [ self refactoringError: self classMethodShouldExistsOnSourceClassErrorMessage ].

	anExtraParameterNeeded 
		assertIfCanMoveClassMethod: methodName
		from: sourceClass
		to: targetClass.
	
	^self new initializeClassMethodNamed: methodName from: sourceClass class to: targetClass class parameterNeeded: anExtraParameterNeeded ! !

!MoveMethodRefactoring class methodsFor: 'instance creation' stamp: 'mc 7/14/2024 02:17:02'!
methodNamed: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable    

	^self 
		methodNamed: methodName 
		from: sourceClass
		to: targetClass
		accessingThrough: instanceVariable
		parameterNeeded: NonExtraParameterNameNeeded new
		! !

!MoveMethodRefactoring class methodsFor: 'instance creation' stamp: 'mc 12/22/2024 02:13:11'!
methodNamed: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable parameterNeeded: anExtraParameterNeeded  
	
	
	(targetClass isNil) ifTrue: [ self refactoringError: self targetClassShouldNotBeNilErrorMessage ].
	(sourceClass isNil) ifTrue: [ self refactoringError: self sourceClassShouldNotBeNilErrorMessage].
	(methodName isNil) ifTrue: [ self refactoringError: self methodShouldNotBeNilErrorMessage ].
	(instanceVariable isNil) ifTrue: [ self refactoringError: self instanceVariableToAccessingThroughShouldNotBeNilErrorMessage ].
	(sourceClass includesSelector: methodName) ifFalse: [ self refactoringError: self methodShouldExistsOnSourceClassErrorMessage ].
	((sourceClass allInstVarNames includes: instanceVariable) or: [((sourceClass>>methodName) methodNode ) hasLocallyArgumentNamed: instanceVariable ]) ifFalse: [ self refactoringError: self instanceVariableToAccessingThroughShouldExistsInSourceClassErrorMessage ].
	
	anExtraParameterNeeded assertIfCanMove: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable.
	
	((self existsAssignationOf: instanceVariable inHierarchyOf: sourceClass) or: [((sourceClass>>methodName) methodNode ) hasLocallyArgumentNamed: instanceVariable ] ) ifFalse: [ self refactoringWarning: (self instanceVariableToAccessingThroughShouldHaveAtLeastOneAssignationErrorMessage: instanceVariable) ].
	
	^self new 
		initializeMethodNamed: methodName 
		from: sourceClass 
		to: targetClass 
		accessingThrough: instanceVariable 
		parameterNeeded: anExtraParameterNeeded 
		! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
classMethodShouldExistsOnSourceClassErrorMessage
	
	^'class method should exists on source class'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/28/2024 17:21:30'!
classMethodShouldNotExistsOnTargertClassErrorMessage
	
	^'class method should not exists on target class'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
classMethodToMoveShouldNotBeNilErrorMessage
	^'class method to move should not be nil'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
instanceVariableToAccessingThroughShouldExistsInSourceClassErrorMessage
	^'InstanceVariable to accessing through should exists in source class'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
instanceVariableToAccessingThroughShouldHaveAtLeastOneAssignationErrorMessage: instanceVariableName
	^'Instance variable ', instanceVariableName, ' should have at least one assignation'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
instanceVariableToAccessingThroughShouldNotBeNilErrorMessage
	^'InstanceVariable to accessing through should not be nil'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 8/7/2024 00:46:46'!
method: aSelector IsGoingToOverrideWarningMessageOn: aTargetClass
	^'Method ', aSelector , ' will override a method on class ', aTargetClass name! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
methodShouldExistsOnSourceClassErrorMessage
	^'Method should exists on source class'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
methodShouldNotBeNilErrorMessage
	^'Method should not be nil'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
methodShouldNotExistsOnTargertClassErrorMessage
	^'Method should not exists on targert class'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
nameForNewParameterKeywordShouldBeProvidedClassErrorMessage
	^'name for new parameter keyword should be provided'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
nameForNewParameterKeywordShouldNotBeProvidedClassErrorMessage
	^'name for new parameter keyword should not be provided'.! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
nameForNewParameterShouldBeProvidedClassErrorMessage
	^'name for new parameter should be provided.'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
nameForNewParameterShouldNotBeProvidedClassErrorMessage
	^'name for new parameter should not be provided.'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
sourceClassShouldNotBeNilErrorMessage
	^'Source class should not be nil'! !

!MoveMethodRefactoring class methodsFor: 'error messages' stamp: 'mc 7/14/2024 02:17:02'!
targetClassShouldNotBeNilErrorMessage
	^'Target class should not be nil'! !

!MoveMethodRefactoring class methodsFor: 'testing' stamp: 'HAW 8/10/2024 21:09:19'!
existsAssignationOf: instanceVariable inHierarchyOf: sourceClass 
	| existsAssignation |
	existsAssignation := false.
	sourceClass withAllSuperAndSubclassesDo: [ :aClassInSourceHierachy |  
		existsAssignation := existsAssignation or: [(aClassInSourceHierachy whichSelectorsStoreInto: instanceVariable) notEmpty] 
	].
	^existsAssignation.! !

!MoveMethodRefactoring class methodsFor: 'testing' stamp: 'mc 7/14/2024 02:17:02'!
needParameterNameToMove: methodName from: sourceClass accessingThrough: instanceVariable 
	| compiledMethod needParameterNameVisitor |
	compiledMethod := sourceClass compiledMethodAt: methodName.
	needParameterNameVisitor := NeedParameterNameForInstanceMethod for: compiledMethod newAccessingThrough: instanceVariable .
	^needParameterNameVisitor value! !

!MoveMethodRefactoring class methodsFor: 'testing' stamp: 'mc 7/14/2024 02:17:02'!
needParameterNameToMoveClassMethod: methodName from: sourceClass 
	
	| compiledMethod needParameterNameVisitor |
	
	compiledMethod := sourceClass class compiledMethodAt: methodName.
	needParameterNameVisitor := NeedParameterNameForClassMethod for: compiledMethod.
	^needParameterNameVisitor value! !

!MoveMethodApplier methodsFor: 'initialization' stamp: 'mc 7/14/2024 02:17:02'!
initializeInitializeOn: aModel forMethod: aMethodReference 
	model := aModel.
	methodReference := aMethodReference.! !

!MoveMethodApplier methodsFor: 'refactoring - creation' stamp: 'mc 12/3/2024 18:59:19'!
createRefactoring
	"self halt."
	sourceClass isMeta 
		ifTrue: [
			^MoveMethodRefactoring 
				classMethodNamed: methodToMove
				from: sourceClass soleInstance
				to: targetClass
				parameterNeeded: extraParameter.]
		ifFalse: [
			^MoveMethodRefactoring 
				methodNamed: methodToMove 
				from: sourceClass 
				to: targetClass 
				accessingThrough: accessingThroughVariableName 
				parameterNeeded: extraParameter . ]
! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 12/5/2024 23:35:17'!
askExtraParameterIfNeeded
	
	| parameterKeyword parameterName |
	(MoveMethodRefactoring needParameterNameToMove: methodToMove from: sourceClass accessingThrough: accessingThroughVariableName)
		ifTrue: [
			methodToMove isKeyword 
				ifTrue: [
					(methodReference methodNode argumentNames includes: accessingThroughVariableName)
						ifTrue: [
							(methodReference methodNode argumentNames size = 1)
								ifTrue: [
									parameterName := self request: 'Enter new parameter name' initialAnswer: ('a', sourceClass name asString) withoutSeparators.
									extraParameter := ExtraParameterNameNeeded parameterName: parameterName.
									]
								ifFalse: [
									parameterName := self request: 'Enter new parameter name' initialAnswer: ('a', sourceClass name asString) withoutSeparators.
									parameterKeyword := self request: 'Enter new parameter keyword' initialAnswer: ('a', sourceClass name asString) withoutSeparators.
									extraParameter := ExtraParameterNameNeededAndExtraKeyword 
														parameterName: parameterName 
														extraKeyword: parameterKeyword.
									]
							]
						ifFalse: [
							parameterName := self request: 'Enter new parameter name' initialAnswer: ('a', sourceClass name asString) withoutSeparators.
							parameterKeyword := self request: 'Enter new parameter keyword' initialAnswer: ('a', sourceClass name asString) withoutSeparators.
							extraParameter := ExtraParameterNameNeededAndExtraKeyword 
												parameterName: parameterName 
												extraKeyword: parameterKeyword.
							]
					]
				ifFalse: [
					parameterName := self request: 'Enter new parameter name' initialAnswer: ('a', sourceClass name asString) withoutSeparators.
					extraParameter := ExtraParameterNameNeeded parameterName: parameterName.
					].
			]
		ifFalse: [
			extraParameter := NonExtraParameterNameNeeded new.
			]! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 12/3/2024 18:59:19'!
askTargetClassName
	| targetClassNameTmp initialAnswer |
	"self halt."
	initialAnswer := self initialAnswerForInstanceVariable: accessingThroughVariableName in: sourceClass.
	targetClassNameTmp := ClassNameRequestMorph request: 'Enter target class name:' initialAnswer: initialAnswer orCancel: requestExitBlock.
	targetClassNameTmp := targetClassNameTmp withoutSeparators.
	targetClass := Smalltalk at: targetClassNameTmp asSymbol ifAbsent: [Refactoring refactoringErrorClass signal: 'Cant find the target class'].! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 7/14/2024 02:17:02'!
chooseMethodToMove
	methodToMove := methodReference selector! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 12/3/2024 19:00:12'!
chooseVariableToAccessThrough
	| vars index methodArgumentNames variableToMoveMethod |
	"self halt."
	sourceClass isMeta ifTrue: [^self].
	vars := sourceClass allInstVarNames sorted.
	methodArgumentNames := methodReference methodNode argumentNames sorted.
	variableToMoveMethod := OrderedCollection new.
	variableToMoveMethod addAll: vars.
	variableToMoveMethod addAll: methodArgumentNames.
	"variableToMoveMethod := vars union: methodArgumentNames."
	"vars := vars reject: [ :anInstanceVariable | anInstanceVariable = instanceVariableName ]."
	vars isEmpty ifTrue: [Refactoring refactoringErrorClass signal: 'There is no instance variable to access through' ].
	"methodArgumentNames addAll: vars "
	index := (PopUpMenu labelArray: variableToMoveMethod lines: {vars size}) startUpWithCaption: self selectVariableLabel.
	index = 0 ifTrue: [^self endRequest].
	accessingThroughVariableName := variableToMoveMethod at: index.! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 12/3/2024 19:01:03'!
initialAnswerForInstanceVariable: anAccessingThroughVariableName in: aSourceClass 
	
	^''
		
	! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 12/6/2024 09:23:09'!
requestRefactoringParameters
	"self halt."
	self 
		chooseMethodToMove;
		selectClassWichMethodIsDefined;
		chooseVariableToAccessThrough;
		askTargetClassName;
		askExtraParameterIfNeeded.
		! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 7/14/2024 02:17:02'!
selectClassWichMethodIsDefined
	sourceClass := methodReference actualClass ! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 7/14/2024 02:17:02'!
selectVariableLabel
	^'Select variable to access through'! !

!MoveMethodApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 7/14/2024 02:17:02'!
showChanges
	"nothing to inform"! !

!MoveMethodApplier class methodsFor: 'instance creation' stamp: 'mc 7/14/2024 02:17:02'!
createAndValueHandlingExceptionsOn: aModel forMethod: aMethodReference 
	self createAndValueHandlingExceptions: [ self initializeOn: aModel forMethod: aMethodReference ].! !

!MoveMethodApplier class methodsFor: 'instance creation' stamp: 'mc 7/14/2024 02:17:02'!
initialize
	(Smalltalk classNamed: #LiveTyping) ifNotNil: [
		RefactoringApplier 
			registerMoveMethodApplier: MoveMethodWithActualScopeApplier.
	].
	! !

!MoveMethodApplier class methodsFor: 'instance creation' stamp: 'mc 7/14/2024 02:17:02'!
initializeOn: aModel forMethod: aMethodReference 
	^self new initializeInitializeOn: aModel forMethod: aMethodReference ! !

!MoveMethodWithActualScopeApplier methodsFor: 'refactoring - parameters request' stamp: 'mc 12/14/2024 16:22:32'!
initialAnswerForInstanceVariable: anAccessingThroughVariableName in: aSourceClass 
	
	| liveTypingTypes |
	"self halt ."
	sourceClass shouldLiveTypingBeDisabled ifTrue: [^''].
	accessingThroughVariableName ifNil: [^''].
	(methodReference methodNode argumentNames includes: accessingThroughVariableName) ifTrue: [^((sourceClass>>methodToMove typeInfoOfVariableNamed: accessingThroughVariableName ifAbsent: [^'']) commonSupertypeIfNoTypes: [^'']) name asString].
	liveTypingTypes := sourceClass commonSupertypeOfInstanceVariableNamed: accessingThroughVariableName ifNoTypes: [^''].
	
	^liveTypingTypes name asString 
! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
test001SelectorShouldExistsOnSourceClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	
	
	
	self
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1
				from: sourceClass
				to: targetClass
				accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring methodShouldExistsOnSourceClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 12/17/2024 02:40:26'!
test002SelectorShouldNotExistsOnTargetClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	targetClass compile: 'm1 ^1' .
	
	
	self
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1 
				from: sourceClass 
				to: targetClass 
				accessingThrough: 'iv1'] 
		failsWith: [
			MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].
	
	! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
test005TargetClassShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := nil.
	sourceClass compile: 'm1 ^1' .
	
	
	self
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1
				from: sourceClass
				to: targetClass
				accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring targetClassShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
test006SourceClassShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := nil.
	targetClass := self createClassNamed: #TargetClass.
	
	
	
	self
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1
				from: sourceClass
				to: targetClass
				accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring sourceClassShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
test007SelectorShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	
	self
		assertCreation: [
			MoveMethodRefactoring
				methodNamed: nil
				from: sourceClass
				to: targetClass
				accessingThrough: 'iv1' ] 
		failsWith: [MoveMethodRefactoring methodShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
test008InstanceVariableToAccessingThroughShouldNotBeNil
	
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
				accessingThrough: nil ] 
		failsWith: [MoveMethodRefactoring instanceVariableToAccessingThroughShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
test010NameForANewParameterShouldBeProvidedIfNeeded
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
test012NeedNameForNewParameterWhenClassVariable
	
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
test013NeedNameForNewParameterWhenInstanceVariable
	
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
test014NeedNameForNewParameterWhenSelfReference
	
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
test015NeedNameForNewParameterWhenSuperReference
	
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
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

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
test018InstanceVariableToAccessingThroughShouldHaveAtLeastOneAssignation
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	
	self 
		should: [
			MoveMethodRefactoring 
				methodNamed: #m1 
				from: sourceClass 
				to: targetClass 
				accessingThrough: 'iv1'
				parameterNeeded: NonExtraParameterNameNeeded new ]  
		raise: self refactoringWarning 
		withMessageText: [MoveMethodRefactoring instanceVariableToAccessingThroughShouldHaveAtLeastOneAssignationErrorMessage: 'iv1'].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
test019ClassMethodToMoveShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1 ^1' .
	
	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				classMethodNamed: nil
				from: sourceClass
				to: targetClass
				parameterNeeded: NonExtraParameterNameNeeded new.]  
		failsWith: [MoveMethodRefactoring classMethodToMoveShouldNotBeNilErrorMessage].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
test020SourceClassShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := nil.
	targetClass := self createClassNamed: #TargetClass.
	
	
	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				classMethodNamed: #m1
				from: sourceClass
				to: targetClass
				parameterNeeded: NonExtraParameterNameNeeded new.]  
		failsWith: [MoveMethodRefactoring sourceClassShouldNotBeNilErrorMessage ].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
test021TargetClassShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := nil.
	
	
	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				classMethodNamed: #m1
				from: sourceClass
				to: targetClass
				parameterNeeded: NonExtraParameterNameNeeded new.]  
		failsWith: [MoveMethodRefactoring targetClassShouldNotBeNilErrorMessage ].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
test022ClassMethodShouldNotExistsInTarget
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1 ^1' .
	targetClass class compile: 'm1 ^2' .
	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				classMethodNamed: #m1
				from: sourceClass
				to: targetClass
				parameterNeeded: NonExtraParameterNameNeeded new.]  
		failsWith: [MoveMethodRefactoring classMethodShouldNotExistsOnTargertClassErrorMessage ].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
test023ClassMethodShouldExistsInSouceClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	
	
	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				classMethodNamed: #m1
				from: sourceClass
				to: targetClass
				parameterNeeded: NonExtraParameterNameNeeded new.]  
		failsWith: [MoveMethodRefactoring classMethodShouldExistsOnSourceClassErrorMessage ].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
test024ClassSelectorWithNewParameterShouldNotExistsOnTargetClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class addInstVarName: 'iv2'.
	sourceClass class compile: 'm1 ^iv2' .
	targetClass class compile: 'm1: anObject ^1' .
	self 
		assertCreation: [
			MoveMethodRefactoring 
				classMethodNamed: #m1
				from: sourceClass
				to: targetClass
				parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'originalClass').]  
		failsWith: [MoveMethodRefactoring classMethodShouldNotExistsOnTargertClassErrorMessage ].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
test025ClassSelectorWithNewParameterAndKeywordShouldNotExistsOnTargetClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class addInstVarName: 'iv2'.
	sourceClass class compile: 'm1: anInt ^iv2'.
	targetClass class compile: 'm1: anInt originalObject: originalObject ^originalObject + anInt' .
	self 
		assertCreation: [
			MoveMethodRefactoring 
				classMethodNamed: #m1:
				from: sourceClass
				to: targetClass
				parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword
							parameterName: 'originalObject'
							extraKeyword: 'originalObject').]  
		failsWith: [MoveMethodRefactoring classMethodShouldNotExistsOnTargertClassErrorMessage ].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
test026ClassSelectorWithNewParameterAndKeywordShouldNotExistsOnTargetClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1: anInt ^self'.

	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				classMethodNamed: #m1:
				from: sourceClass
				to: targetClass
				parameterNeeded: (ExtraParameterNameNeeded 
									parameterName: 'sourceObject').]  
		failsWith: [MoveMethodRefactoring nameForNewParameterKeywordShouldBeProvidedClassErrorMessage ].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
test027NameForANewParameterShouldBeProvidedIfNeeded
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1 ^self'.

	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				classMethodNamed: #m1
				from: sourceClass
				to: targetClass
				parameterNeeded: NonExtraParameterNameNeeded new.]  
		failsWith: [MoveMethodRefactoring nameForNewParameterShouldBeProvidedClassErrorMessage ].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:02'!
test028NameForANewParameterKeywordShouldBeProvidedIfNeeded
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1: anInt ^self'.

	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				classMethodNamed: #m1: 
				from: sourceClass
				to: targetClass
				parameterNeeded: (ExtraParameterNameNeeded 
					parameterName: 'sourceObject').]  
		failsWith: [MoveMethodRefactoring nameForNewParameterKeywordShouldBeProvidedClassErrorMessage ].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
test029ShouldNotPassNameForNewParameterWhenIsNotNeeded
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1 ^1.'.

	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				classMethodNamed: #m1
				from: sourceClass
				to: targetClass
				parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'extraParameterName').]  
		failsWith: [MoveMethodRefactoring nameForNewParameterShouldNotBeProvidedClassErrorMessage ].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 7/14/2024 02:17:03'!
test030ShouldNotPassNameForNewParameterWhenIsNotNeeded
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class addInstVarName: 'iv2'.
	sourceClass class compile: 'm1 ^iv2.'.
	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				classMethodNamed: #m1
				from: sourceClass
				to: targetClass
				parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword 
						parameterName: 'extraParameterName' 
						extraKeyword: 'extraKeywordName').]  
		failsWith: [MoveMethodRefactoring nameForNewParameterKeywordShouldNotBeProvidedClassErrorMessage ].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 8/8/2024 23:46:53'!
test031SelectorShouldNotExistsOnTargetSuperClass
	
	| sourceClass targetClass targetSuperClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetSuperClass := self createClassNamed: #TargetSuperClass.
	targetClass := self createClassNamed: #TargetClass subclassOf: targetSuperClass.
	sourceClass compile: 'm1 ^1'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	targetSuperClass compile: 'm1 ^1' .
	
	self	
		should: [
			MoveMethodRefactoring 
				methodNamed: #m1 
				from: sourceClass 
				to: targetClass 
				accessingThrough: 'iv1'
				parameterNeeded: NonExtraParameterNameNeeded new ]  
		raise: self refactoringWarning 
		withMessageText: [MoveMethodRefactoring method: #m1 IsGoingToOverrideWarningMessageOn: targetClass].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 8/9/2024 00:18:21'!
test032SelectorWithNewParameterShouldNotExistsOnTargetSuperClass
	
	| sourceClass targetClass targetSuperClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetSuperClass := self createClassNamed: #TargetSuperClass.
	targetClass := self createClassNamed: #TargetClass subclassOf: targetSuperClass.
	sourceClass compile: 'm1 ^iv2'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	targetSuperClass compile: 'm1: anObject ^1' .
	
	self	
		should: [
			MoveMethodRefactoring 
				methodNamed: #m1 
				from: sourceClass 
				to: targetClass 
				accessingThrough: 'iv1'
				parameterNeeded: (ExtraParameterNameNeeded 
									parameterName: 'originalObject') ]  
		raise: self refactoringWarning 
		withMessageText: [MoveMethodRefactoring method: #m1: IsGoingToOverrideWarningMessageOn: targetClass].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 8/9/2024 00:18:29'!
test033SelectorWithNewParameterAndKeywordShouldNotExistsOnTargetSuperClass
	
	| sourceClass targetClass targetSuperClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetSuperClass := self createClassNamed: #TargetSuperClass.
	targetClass := self createClassNamed: #TargetClass subclassOf: targetSuperClass.
	sourceClass compile: 'm1: anInt ^iv2+anInt'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	targetSuperClass compile: 'm1: anInt1 originalObject: anInt2 ^anInt1+anInt2' .
	
	self	
		should: [
			MoveMethodRefactoring 
				methodNamed: #m1:
				from: sourceClass 
				to: targetClass 
				accessingThrough: 'iv1'
				parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword parameterName: 'originalObject'  extraKeyword: 'originalObject') ]  
		raise: self refactoringWarning 
		withMessageText: [MoveMethodRefactoring method: #m1:originalObject: IsGoingToOverrideWarningMessageOn: targetClass].! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 12/5/2024 01:53:33'!
test040WheDestinationIsParameterShouldNotPassNameForNewParameterWhenIsNotNeeded
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1: aTargetObject ^iv1.'.
	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1:
				from: sourceClass
				to: targetClass
				accessingThrough: 'aTargetObject'
				parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword parameterName: 'sourceObject' extraKeyword: 'withSourceObject').]  
		failsWith: [MoveMethodRefactoring nameForNewParameterKeywordShouldNotBeProvidedClassErrorMessage ].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 12/6/2024 00:19:46'!
test041WhenDestinationIsParameterNewSelectorShouldNotExistOnTargetClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	targetClass compile: 'm1: arg1 withParam: arg2 ^1.'.
	sourceClass compile: 'm1: arg1 m2: aTargetObject ^self.'.
	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1:m2:
				from: sourceClass
				to: targetClass
				accessingThrough: 'aTargetObject'
				parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword parameterName: 'arg2' extraKeyword: 'withParam' )
				
				] 
		failsWith: [
			MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 12/17/2024 01:35:11'!
test042WhenDestinationIsParameterNewSelectorShouldNotExistOnTargetClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	targetClass compile: 'm1 ^1.'.
	sourceClass compile: 'm1: aTargetObject ^2.'.
	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1:
				from: sourceClass
				to: targetClass
				accessingThrough: 'aTargetObject'
				parameterNeeded: NonExtraParameterNameNeeded new.
				
				] 
		failsWith: [
			MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 12/17/2024 02:07:20'!
test042WhenDestinationIsParameterNewSelectorShouldNotExistOnTargetClass_2
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	targetClass compile: 'm1: arg1 ^1.'.
	sourceClass compile: 'm1: arg1 m2: aTargetObject ^2.'.
	
	self 
		assertCreation: [
			MoveMethodRefactoring 
				methodNamed: #m1:m2:
				from: sourceClass
				to: targetClass
				accessingThrough: 'aTargetObject'
				parameterNeeded: NonExtraParameterNameNeeded new.
				
				] 
		failsWith: [
			MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].
		! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 12/14/2024 23:42:38'!
test042WhenDestinationIsParameterNewSelectorShouldNotExistOnTargetSuperClass
	
	| sourceClass targetClass targetSuperClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetSuperClass := self createClassNamed: #TargetSuperClass.
	targetClass := self createClassNamed: #TargetClass subclassOf: targetSuperClass.
	targetSuperClass compile: 'm1: arg1 withParam: arg2 ^1.'.
	sourceClass compile: 'm1: arg1 m2: aTargetObject ^self.'.
	
	self 
		should: [
			MoveMethodRefactoring 
					methodNamed: #m1:m2:
					from: sourceClass
					to: targetClass
					accessingThrough: 'aTargetObject'
					parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword parameterName: 'arg2' extraKeyword: 'withParam' )
				
			] 
		raise: self refactoringWarning
		withMessageText: [
			MoveMethodRefactoring method: #m1:withParam: IsGoingToOverrideWarningMessageOn: targetClass].
	! !

!MoveMethodRefactoringTest methodsFor: 'validations' stamp: 'mc 12/17/2024 02:23:41'!
test042WhenDestinationIsParameterNewSelectorShouldNotExistOnTargetSuperClass_2
	
	| sourceClass targetClass targetSuperClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetSuperClass := self createClassNamed: #TargetSuperClass.
	targetClass := self createClassNamed: #TargetClass subclassOf: targetSuperClass.
	targetSuperClass compile: 'm1: arg1 ^1.'.
	sourceClass compile: 'm1: arg1 m2: aTargetObject ^2.'.
	
	self 
		should: [
			MoveMethodRefactoring 
					methodNamed: #m1:m2:
					from: sourceClass
					to: targetClass
					accessingThrough: 'aTargetObject'
					parameterNeeded: NonExtraParameterNameNeeded new.
				
			] 
		raise: self refactoringWarning
		withMessageText: [
			MoveMethodRefactoring method: #m1: IsGoingToOverrideWarningMessageOn: targetClass].
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test100CanMoveMethodWithoutReferences
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 ^1.' .
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' .
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'm1
	^iv1 m1.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test101CanMoveMethodWithoutReferences
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 ^2.' .
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' .
	refactoring apply.
	
	self assert: 'm1 ^2.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'm1
	^iv1 m1.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test102CanMoveMethodWhenReferencesAnInstanceVariable
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv2.' .
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	
	refactoring := MoveMethodRefactoring 
				methodNamed: #m1 
				from: sourceClass 
				to: targetClass 
				accessingThrough: 'iv1'
				parameterNeeded: (ExtraParameterNameNeeded 
									parameterName: 'sourceObject') .
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv2.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv2', String newLineString, String tab, '^iv2.' equals: (sourceClass sourceCodeAt: #iv2).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test103CanMoveMethodWhenReferencesAnInstanceVariableForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test104CanMoveMethodWhenReferencesTwoInstanceVariableForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test105CanMoveMethodWhenReferencesAnInstanceVariableForWriting
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test106CanMoveMethodWhenReferencesTwoInstanceVariableForWriting
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 iv3 := iv4 := 1.' .
	
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1 
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'iv1' 
					parameterNeeded: (ExtraParameterNameNeeded 
										parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject sourceObject iv3: (sourceObject iv4: 1).
	^sourceObject.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	self assert: 'iv3: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass sourceCodeAt: #iv3:).
	self assert: 'iv4: anObject', String newLineString, String tab, '^iv4 := anObject.' equals: (sourceClass sourceCodeAt: #iv4:).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test107CanMoveMethodWhenReferencesInstanceVariableAnd2Params
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test107CanMoveMethodWhenReferencesTwoInstanceVariableForWritingAndOneForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4 iv5'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 iv3 := iv4 := iv5.' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1'
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject') .
	refactoring apply.
	
	self assert: 'm1: sourceObject sourceObject iv3: (sourceObject iv4: sourceObject iv5).
	^sourceObject.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	self deny: (sourceClass includesSelector: #iv1).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test108CanMoveMethodWhenReferencesAnInstanceVariableAndHasAParameter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test109AfterMovingMethodWhichReferencesAnInstanceVariableForReadingShouldUseTheExistentGetter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3 ^iv3.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test110AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3: anObject ^iv3 := anObject.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test111AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3: anObject iv3 := anObject.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 ^iv3 := 1.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3_: 1.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'iv3_: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass sourceCodeAt: #iv3_:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test111AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter2
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3_2: anObject ^iv3 := anObject.'.
	sourceClass compile: 'iv3_: anObject ^iv3 := anObject.'.
	sourceClass compile: 'iv3: anObject ^1.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #iv3_:
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword 
							parameterName: 'sourceObject'
							extraKeyword: 'originalObject').
	refactoring apply.
	
	self assert: 'iv3_: anObject originalObject: sourceObject ^sourceObject iv3_2: anObject.' equals: (targetClass sourceCodeAt: #iv3_:originalObject:).
	self assert: 'iv3: anObject ^1.' equals: (sourceClass sourceCodeAt: #iv3:).
	self assert: 'iv3_2: anObject ^iv3 := anObject.' equals: (sourceClass sourceCodeAt: #iv3_2:).
	self assert: 'iv3_: anObject
	^iv1 iv3_: anObject originalObject: self.' equals: (sourceClass sourceCodeAt: #iv3_:).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test111AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter3
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3_: anObject ^iv3 := anObject.'.
	sourceClass compile: 'iv3: anObject ^1.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #iv3_:
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword 
							parameterName: 'sourceObject'
							extraKeyword: 'originalObject').
	refactoring apply.
	
	self assert: 'iv3_: anObject originalObject: sourceObject ^sourceObject iv3__: anObject.' equals: (targetClass sourceCodeAt: #iv3_:originalObject:).
	self assert: 'iv3: anObject ^1.' equals: (sourceClass sourceCodeAt: #iv3:).
	self assert: 'iv3__: anObject
	^iv3 := anObject.' equals: (sourceClass sourceCodeAt: #iv3__:).
	self assert: 'iv3_: anObject
	^iv1 iv3_: anObject originalObject: self.' equals: (sourceClass sourceCodeAt: #iv3_:).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test111AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter4
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3_: anObject iv3 := anObject.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 ^iv3 := 1.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3: 1.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'iv3: anObject
	^iv3 := anObject.' equals: (sourceClass sourceCodeAt: #iv3:).
	self assert: 'iv3_: anObject iv3 := anObject.' equals: (sourceClass sourceCodeAt: #iv3_:).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test112AfterMovingMethodWhichReferencesAnClassVariableForReadingShouldCreateGetter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test112AfterMovingMethodWhichReferencesAnClassVariableForReadingShouldCreateGetter2
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'icv1 ^1.' .
	sourceClass compile: 'm1 ^Icv1.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject icv1_.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'icv1 ^1.' equals: (sourceClass sourceCodeAt: #icv1).
	self assert: 'icv1_
	^Icv1.' equals: (sourceClass sourceCodeAt: #icv1_).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test112AfterMovingMethodWhichReferencesAnClassVariableForReadingShouldCreateGetter3
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self 
					createClassNamed: #SourceClass
					subclassOf: Object
					instanceVariableNames: 'iv1'
					classVariableNames: 'Icv1'
					poolDictionaries: ''
					category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'icv1_ ^Icv1.' .
	sourceClass compile: 'icv1 .' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #icv1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'icv1: sourceObject .
	^sourceObject.' equals: (targetClass sourceCodeAt: #icv1:).
	self assert: 'icv1_ ^Icv1.' equals: (sourceClass sourceCodeAt: #icv1_).
	self assert: 'icv1
	^iv1 icv1: self.' equals: (sourceClass sourceCodeAt: #icv1).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test112AfterMovingMethodWhichReferencesAnClassVariableForReadingShouldCreateGetter4
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'icv1_ ^Icv1.' .
	sourceClass compile: 'icv1 .' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #icv1_
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'icv1_: sourceObject ^sourceObject icv1__.' equals: (targetClass sourceCodeAt: #icv1_:).
	self assert: 'icv1 .' equals: (sourceClass sourceCodeAt: #icv1).
	self assert: 'icv1_
	^iv1 icv1_: self.' equals: (sourceClass sourceCodeAt: #icv1_).
	self assert: 'icv1__
	^Icv1.' equals: (sourceClass sourceCodeAt: #icv1__).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test112AfterMovingMethodWhichReferencesAnClassVariableForReadingShouldCreateGetter5
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'icv1_ ^Icv1.' .
	sourceClass compile: 'icv1 ^1+1.' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #icv1_
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'icv1_: sourceObject ^sourceObject icv1__.' equals: (targetClass sourceCodeAt: #icv1_:).
	self assert: 'icv1 ^1+1.' equals: (sourceClass sourceCodeAt: #icv1).
	self assert: 'icv1_
	^iv1 icv1_: self.' equals: (sourceClass sourceCodeAt: #icv1_).
	self assert: 'icv1__
	^Icv1.' equals: (sourceClass sourceCodeAt: #icv1__).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test112AfterMovingMethodWhichReferencesAnClassVariableForReadingShouldCreateGetter6
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'icv1_ ^1.' .
	sourceClass compile: 'm1 ^Icv1+1.' .
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject icv1+1.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'icv1
	^Icv1.' equals: (sourceClass sourceCodeAt: #icv1).
	self assert: 'icv1_ ^1.' equals: (sourceClass sourceCodeAt: #icv1_).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test113AfterMovingMethodWhichReferencesAnClassVariableForReadingShouldCreateSetter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test113AfterMovingMethodWhichReferencesAnClassVariableForReadingShouldCreateSetter2
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'icv1: anObject ^Icv1 := anObject.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #icv1:
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword 
							parameterName: 'sourceObject'
							extraKeyword: 'originalObject').
	refactoring apply.
	
	self assert: 'icv1: anObject originalObject: sourceObject ^sourceObject icv1_: anObject.' equals: (targetClass sourceCodeAt: #icv1:originalObject:).
	self assert: 'icv1: anObject
	^iv1 icv1: anObject originalObject: self.' equals: (sourceClass sourceCodeAt: #icv1:).
	self assert: 'icv1_: anObject
	^Icv1 := anObject.' equals: (sourceClass sourceCodeAt: #icv1_:).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test114ParameterNameShouldBeRespected
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3 ^iv3.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test115ParameterNameShouldBeRespected
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3 ^iv3.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test116ParameterNameShouldBeRespectedWithSelf
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'justOne ^1.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test199TmpVariablesShoulNotBeAffected
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 |tmp| ^tmp:=1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' .
	refactoring apply.
	
	self assert: 'm1 |tmp| ^tmp:=1.' equals: (targetClass sourceCodeAt: #m1).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test200CanMoveMethodWhenSendsMessageToSelf
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'justOne ^1.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test200CanMoveMethodWhenSendsUnaryMessageToSuper
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'justOne ^1.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test201CanMoveMethodWhenSendsKeywordMessageToSuperWithOneColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test202CanMoveMethodWhenSendsKeywordMessageToSuperWithTwoColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger andIncrement: anotherSmallinteger ^1+aSmallinteger+anotherSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger andIncrement: anotherSmallinteger ^2+aSmallinteger+anotherSmallinteger.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test203CanMoveMethodWhenSendsKeywordMessageToSuperWithOneInstVarAsColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv2 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger ^2+aSmallinteger.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test204CanMoveMethodWhenSendsKeywordMessageToSuperWithOneInstVarAsColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv2 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger ^2+aSmallinteger.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 9/22/2024 02:50:40'!
test205CanMoveMethodWhenReferenceSuperIndirectly
	
	| sourceClass targetClass refactoring |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 |asd| ^super printString, 1 asString.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject |asd| ^sourceObject CHANGE_ME_super_printString, 1 asString.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'CHANGE_ME_super_printString
	^super printString.' equals: (sourceClass sourceCodeAt: #CHANGE_ME_super_printString)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 12/26/2024 03:38:04'!
test205CanMoveMethodWhenReferenceSuperOnAssignationNode
	
	| sourceClass targetClass refactoring |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 ^iv3 := super printString.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3: sourceObject CHANGE_ME_super_printString.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'CHANGE_ME_super_printString
	^super printString.' equals: (sourceClass sourceCodeAt: #CHANGE_ME_super_printString)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test205CanMoveMethodWhenSendsKeywordMessageToSuperWithOneTmpVarAsColaborators
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger ^2+aSmallinteger.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 11/6/2024 01:43:41'!
test206CanMoveMethodWhenSendsKeywordMessageToSuperWithParenthesis
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'increment: aSmallinteger ^1+aSmallinteger.'.
	sourceClass compile: 'increment: aSmallinteger ^2+aSmallinteger.'.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 ^(super increment: 1) + 1.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^(sourceObject CHANGE_ME_super_increment: 1) + 1.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'CHANGE_ME_super_increment: arg1', String newLineString, String tab, '^super increment: arg1.' equals: (sourceClass sourceCodeAt: #CHANGE_ME_super_increment:)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test206moveGetterShouldNotMakeDoubleRecursion
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'iv2 ^iv2.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #iv2 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'iv2: sourceObject ^sourceObject iv2_.' equals: (targetClass sourceCodeAt: #iv2:).
	self assert: 'iv2_
	^iv2.' equals: (sourceClass sourceCodeAt: #iv2_).
	self assert: 'iv2
	^iv1 iv2: self.' equals: (sourceClass sourceCodeAt: #iv2).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test207moveGetterShouldNotMakeDoubleRecursion
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'iv2 ^1.'.
	sourceClass compile: 'iv2_ ^iv2.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #iv2_ 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded 
							parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'iv2 ^1.' equals: (sourceClass sourceCodeAt: #iv2).
	self assert: 'iv2_: sourceObject ^sourceObject iv2__.' equals: (targetClass sourceCodeAt: #iv2_:).
	self assert: 'iv2__
	^iv2.' equals: (sourceClass sourceCodeAt: #iv2__).
	self assert: 'iv2_
	^iv1 iv2_: self.' equals: (sourceClass sourceCodeAt: #iv2_).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test300MovingMethodWichUsesAccesingThroughVariableShouldBeRepalcedForSelf
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test301MovingMethodWichUsesAccesingThroughVariableShouldBeRepalcedForSelf
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
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

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test302CanMoveMethodWhenVariableToAccesThroughIsInSuperClass
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass instanceVariableNames: 'iv1 iv3'..
	sourceClass := self createClassNamed: #SourceClass  subclassOf: sourceSuperClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceSuperClass compile: 'iv1: anObject ^iv1 := anObject.'.
	sourceClass compile: 'm1 ^1.'.
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (NonExtraParameterNameNeeded new).
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'm1
	^iv1 m1.' equals: (sourceClass sourceCodeAt: #m1)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test303AfterMovingMethodWhichReferencesAClassShouldKeepTheClass
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 ^Array new.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: NonExtraParameterNameNeeded new.
	refactoring apply.
	
	self assert: 'm1 ^Array new.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'm1
	^iv1 m1.' equals: (sourceClass sourceCodeAt: #m1)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test303AfterMovingMethodWhichReferencesAClassShouldKeepTheClassAndResolveDependencies
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1
	self printString.
	^Array new.'.
	
	
	refactoring := MoveMethodRefactoring 
		methodNamed: #m1 
		from: sourceClass 
		to: targetClass 
		accessingThrough: 'iv1' 
		parameterNeeded: (ExtraParameterNameNeeded parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject
	sourceObject printString.
	^Array new.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test304CanMoveClassMethodWithoutDependencies
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass. 
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1 ^1.'.
	
	refactoring := MoveMethodRefactoring 
		classMethodNamed: #m1 
		from: sourceClass 
		to: targetClass
		parameterNeeded: NonExtraParameterNameNeeded new.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass class sourceCodeAt: #m1).
	self assert: 'm1
	^TargetClass m1.' equals: (sourceClass class sourceCodeAt: #m1)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test305CanMoveClassMethodWithSelfAndClassReferenceDependencies
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass. 
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1
	self printString.
	^SmallInteger.'.
	
	refactoring := MoveMethodRefactoring 
		classMethodNamed: #m1 
		from: sourceClass 
		to: targetClass
		parameterNeeded: (ExtraParameterNameNeeded parameterName: 'aSourceClassClass').
	refactoring apply.
	
	self assert: 'm1: aSourceClassClass
	aSourceClassClass printString.
	^SmallInteger.' equals: (targetClass class sourceCodeAt: #m1:).
	self assert: 'm1
	^TargetClass m1: self.' equals: (sourceClass class sourceCodeAt: #m1)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test305CanMoveClassMethodWithSelfDependencies
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass. 
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1 ^self new.'.
	
	refactoring := MoveMethodRefactoring 
		classMethodNamed: #m1 
		from: sourceClass 
		to: targetClass
		parameterNeeded: (ExtraParameterNameNeeded parameterName: 'aSourceClassClass').
	refactoring apply.
	
	self assert: 'm1: aSourceClassClass ^aSourceClassClass new.' equals: (targetClass class sourceCodeAt: #m1:).
	self assert: 'm1
	^TargetClass m1: self.' equals: (sourceClass class sourceCodeAt: #m1)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test306CanMoveClassMethodWithSuperUnaryDependencies
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass. 
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1 ^super new.'.
	
	refactoring := MoveMethodRefactoring 
		classMethodNamed: #m1 
		from: sourceClass 
		to: targetClass
		parameterNeeded: (ExtraParameterNameNeeded parameterName: 'aSourceClassClass').
	refactoring apply.
	
	self assert: 'm1: aSourceClassClass ^aSourceClassClass CHANGE_ME_super_new.' equals: (targetClass class sourceCodeAt: #m1:).
	self assert: 'm1
	^TargetClass m1: self.' equals: (sourceClass class sourceCodeAt: #m1).
	self assert: 'CHANGE_ME_super_new
	^super new.' equals: (sourceClass class sourceCodeAt: #CHANGE_ME_super_new).! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test307CanMoveClassMethodWithInstVarReadDependencies
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class addInstVarName: 'iv3'.
	sourceClass class compile: 'iv3 ^iv3.'.
	sourceClass class compile: 'm1 ^iv3 + 1.'.
	
	refactoring := MoveMethodRefactoring 
		classMethodNamed: #m1
		from: sourceClass 
		to: targetClass
		parameterNeeded: (ExtraParameterNameNeeded parameterName: 'aSourceClassClass').
	refactoring apply.

	self assert: 'iv3 ^iv3.' equals: (sourceClass class sourceCodeAt: #iv3).
	self assert: 'm1: aSourceClassClass ^aSourceClassClass iv3 + 1.' equals: (targetClass class sourceCodeAt: #m1:).
	self assert: 'm1
	^TargetClass m1: self.' equals: (sourceClass class sourceCodeAt: #m1)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test308CanMoveClassMethodWithInstVarWriteDependencies
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class addInstVarName: 'iv3'.
	sourceClass class compile: 'iv3: anObject ^iv3 := anObject.'.
	sourceClass class compile: 'm1 ^iv3 := 1.'.
	
	refactoring := MoveMethodRefactoring 
		classMethodNamed: #m1
		from: sourceClass 
		to: targetClass
		parameterNeeded: (ExtraParameterNameNeeded parameterName: 'aSourceClassClass').
	refactoring apply.

	self assert: 'iv3: anObject ^iv3 := anObject.' equals: (sourceClass class sourceCodeAt: #iv3:).
	self assert: 'm1: aSourceClassClass ^aSourceClassClass iv3: 1.' equals: (targetClass class sourceCodeAt: #m1:).
	self assert: 'm1
	^TargetClass m1: self.' equals: (sourceClass class sourceCodeAt: #m1)! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test309CanMoveClassMethodWithSuperKeywordDependencies
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass subclassOf: sourceSuperClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1 ^super increment: 1.'.
	
	refactoring := MoveMethodRefactoring 
		classMethodNamed: #m1
		from: sourceClass 
		to: targetClass
		parameterNeeded: (ExtraParameterNameNeeded parameterName: 'aSourceClassClass').
	refactoring apply.

	self assert: 'm1: aSourceClassClass ^aSourceClassClass CHANGE_ME_super_increment: 1.' equals: (targetClass class sourceCodeAt: #m1:).
	self assert: 'm1
	^TargetClass m1: self.' equals: (sourceClass class sourceCodeAt: #m1).
	self assert: 'CHANGE_ME_super_increment: arg1
	^super increment: arg1.' equals: (sourceClass class sourceCodeAt: #CHANGE_ME_super_increment:).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test310CanMoveClassMethodWithClassReferenceDependencies
	
	| sourceClass targetClass refactoring sourceSuperClass |
	sourceSuperClass := self createClassNamed: #SourceSuperClass.
	sourceClass := self createClassNamed: #SourceClass subclassOf: sourceSuperClass.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1 ^TargetClass onePlusOne.'.	
	targetClass class compile: 'onePlusOne ^1+1.'.	
	
	refactoring := MoveMethodRefactoring 
		classMethodNamed: #m1
		from: sourceClass 
		to: targetClass
		parameterNeeded: (NonExtraParameterNameNeeded new).
	refactoring apply.

	self assert: 'm1 ^TargetClass onePlusOne.' equals: (targetClass class sourceCodeAt: #m1).
	self assert: 'm1
	^TargetClass m1.' equals: (sourceClass class sourceCodeAt: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test311CanMoveClassMethodWithClassVarDependencies
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass subclassOf: Object instanceVariableNames: '' classVariableNames: 'ASD' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass class compile: 'm1 ^ASD onePlusOne.'.	
	targetClass class compile: 'onePlusOne ^1+1.'.	
	
	refactoring := MoveMethodRefactoring 
		classMethodNamed: #m1
		from: sourceClass 
		to: targetClass
		parameterNeeded: (ExtraParameterNameNeeded parameterName: 'aSourceClass').
	refactoring apply.

	self assert: 'm1: aSourceClass ^aSourceClass aSD onePlusOne.' equals: (targetClass class sourceCodeAt: #m1:).
	self assert: 'm1
	^TargetClass m1: self.' equals: (sourceClass class sourceCodeAt: #m1).
	self assert: 'aSD
	^ASD.' equals: (sourceClass class sourceCodeAt: #aSD).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:03'!
test401ImplicitReturnShouldBeMoved
	
	| sourceClass targetClass refactoring |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 .'.
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1 
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'iv1' 
					parameterNeeded: (ExtraParameterNameNeeded parameterName: 'aSourceObject').
	refactoring apply.

	self assert: 'm1: aSourceObject .
	^aSourceObject.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test402ImplicitReturnShouldBeMovedAndAddADotInLastWritedSentence
	
	| sourceClass targetClass refactoring |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 1'.
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1 
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'iv1' 
					parameterNeeded: (ExtraParameterNameNeeded parameterName: 'aSourceObject').
	refactoring apply.

	self assert: 'm1: aSourceObject 1.
	^aSourceObject.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 7/14/2024 02:17:02'!
test403aNonImplicitReturnShouldBeMoved
	
	| sourceClass targetClass refactoring |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'initializeIv1 iv1 := TargetClass new.' .
	sourceClass compile: 'm1 ^self'.
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1 
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'iv1' 
					parameterNeeded: (ExtraParameterNameNeeded parameterName: 'aSourceObject').
	refactoring apply.

	self assert: 'm1: aSourceObject ^aSourceObject' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1
	^iv1 m1: self.' equals: (sourceClass sourceCodeAt: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 11/10/2024 11:19:04'!
test500CanMoveMethodUsingParameterAsAccessThrougVariable
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: ''.
	targetClass := self createClassNamed: #TargetClass.
	targetClass compile: 'm2 ^1' .
	sourceClass compile: 'm1: aTargetClass ^aTargetClass m2' .
	
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1:
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'aTargetClass' 
					parameterNeeded: (NonExtraParameterNameNeeded new).
	refactoring apply.
	
	self assert: 'm1 ^self m2' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'm1: aTargetClass
	^aTargetClass m1.' equals: (sourceClass sourceCodeAt: #m1:).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 11/10/2024 23:23:08'!
test501CanMoveMethodUsingLastParameterAsAccessThrougVariable
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: ''.
	targetClass := self createClassNamed: #TargetClass.
	targetClass compile: 'm2 ^1' .
	sourceClass compile: 'm1: anInt m11: aTargetClass ^aTargetClass m2' .
	
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1:m11:
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'aTargetClass' 
					parameterNeeded: (NonExtraParameterNameNeeded new).
	refactoring apply.
	
	self assert: 'm1: anInt ^self m2' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1: anInt m11: aTargetClass
	^aTargetClass m1: anInt.' equals: (sourceClass sourceCodeAt: #m1:m11:).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 11/10/2024 23:42:58'!
test502CanMoveMethodUsingFirstParameterAsAccessThrougVariable
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: ''.
	targetClass := self createClassNamed: #TargetClass.
	targetClass compile: 'm2 ^1' .
	sourceClass compile: 'm1: aTargetClass m11: anInt ^aTargetClass m2' .
	
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1:m11:
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'aTargetClass' 
					parameterNeeded: (NonExtraParameterNameNeeded new).
	refactoring apply.
	
	self assert: 'm11: anInt ^self m2' equals: (targetClass sourceCodeAt: #m11:).
	self assert: 'm1: aTargetClass m11: anInt
	^aTargetClass m11: anInt.' equals: (sourceClass sourceCodeAt: #m1:m11:).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 11/11/2024 01:55:51'!
test504CanMoveMethodUsingSecondParameterAsAccessThrougVariable
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: ''.
	targetClass := self createClassNamed: #TargetClass.
	targetClass compile: 'm2 ^1' .
	sourceClass compile: 'm1: anInt1 m11: aTargetClass m111: anInt2 ^aTargetClass m2' .
	
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1:m11:m111:
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'aTargetClass' 
					parameterNeeded: (NonExtraParameterNameNeeded new).
	refactoring apply.
	
	self assert: 'm1: anInt1 m111: anInt2 ^self m2' equals: (targetClass sourceCodeAt: #m1:m111:).
	self assert: 'm1: anInt1 m11: aTargetClass m111: anInt2
	^aTargetClass m1: anInt1 m111: anInt2.' equals: (sourceClass sourceCodeAt: #m1:m11:m111:).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 11/27/2024 01:31:21'!
test505CanMoveMethodWithInstVarUsingParameterAsAccessThrougVariable
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	targetClass compile: 'm2: anInt ^1' .
	sourceClass compile: 'm1: aTargetClass ^aTargetClass m2: iv1' .
	
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1:
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'aTargetClass' 
					parameterNeeded: (ExtraParameterNameNeeded parameterName: 'sourceObject').
	refactoring apply.
	
	self assert: 'm1: sourceObject ^self m2: sourceObject iv1' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'm1: aTargetClass
	^aTargetClass m1: self.' equals: (sourceClass sourceCodeAt: #m1:).
	! !

!MoveMethodRefactoringTest methodsFor: 'tests' stamp: 'mc 11/27/2024 01:44:17'!
test506CanMoveMethodWithInstVarUsingLastParameterAsAccessThrougVariable
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	targetClass compile: 'm2: anInt ^1' .
	sourceClass compile: 'm1: arg1 m2: aTargetClass ^aTargetClass m2: iv1' .
	
	
	refactoring := MoveMethodRefactoring 
					methodNamed: #m1:m2:
					from: sourceClass 
					to: targetClass 
					accessingThrough: 'aTargetClass' 
					parameterNeeded: (ExtraParameterNameNeededAndExtraKeyword parameterName: 'sourceObject' extraKeyword: 'withObject').
	refactoring apply.
	
	self assert: 'm1: arg1 withObject: sourceObject ^self m2: sourceObject iv1' equals: (targetClass sourceCodeAt: #m1:withObject:).
	self assert: 'm1: arg1 m2: aTargetClass
	^aTargetClass m1: arg1 withObject: self.' equals: (sourceClass sourceCodeAt: #m1:m2:).
	! !

!BrowserWindow methodsFor: '*MoveMethodRefactoring' stamp: 'mc 4/28/2024 20:29:11'!
moveMethod
	
	model selectedMessageName ifNotNil: [ :selectorToInline |
		RefactoringApplier moveMethodApplier
			createAndValueHandlingExceptionsOn: model
			forMethod: (MethodReference class: model selectedClassOrMetaClass selector: selectorToInline )]! !

!SmalltalkEditor methodsFor: '*MoveMethodRefactoring' stamp: 'mc 8/9/2023 15:14:57'!
contextualMoveMethod
	"self halt."
	self isEditingClassDefinition ifTrue: [ ^morph flash ].
	self ifSourceCodeRefactoringCanBeAppliedDo: [
		self
			withMethodNodeAndClassDo: [ :methodNode :selectedClass | self contextualMoveMethodOf: methodNode in: selectedClass ]
			ifErrorsParsing: [ :anError | morph flash ]	]	
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

!RefactoringApplier class methodsFor: '*MoveMethodRefactoring' stamp: 'mc 12/11/2023 00:26:05'!
moveMethodApplier
	"self halt."
	^self applierAt: self moveMethodApplierId ifAbsent: [ MoveMethodApplier ]! !

!RefactoringApplier class methodsFor: '*MoveMethodRefactoring' stamp: 'mc 8/6/2023 15:07:01'!
moveMethodApplierId
	^#moveMethodApplier! !

!RefactoringApplier class methodsFor: '*MoveMethodRefactoring' stamp: 'mc 8/6/2023 15:13:19'!
registerMoveMethodApplier: aMoveMethodApplierClass

	self registerApplierAt: self moveMethodApplierId with: aMoveMethodApplierClass
! !
TesisMoveMethodRefactoringMenu initialize!
MoveMethodApplier initialize!
