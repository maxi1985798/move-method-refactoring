'From Cuis 6.0 [latest update: #5706] on 28 April 2023 at 1:47:10 am'!
'Description '!
!provides: 'MoveMethodRefactoring' 1 8!
SystemOrganization addCategory: 'MoveMethodRefactoring'!


!classDefinition: #XXXXReplacerForNode category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #XXXXReplacerForNode
	instanceVariableNames: 'compiledMethod intervalsToReject node intervalsToModify nodeInterval nodeOffsetInSourceCode readAccessOnInstanceVariables writeAccessOnInstanceVariables'
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
	instanceVariableNames: 'methodName sourceClass targetClass'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodRefactoring class' category: 'MoveMethodRefactoring'!
MoveMethodRefactoring class
	instanceVariableNames: ''!

!classDefinition: #XXXXReplacerResult category: 'MoveMethodRefactoring'!
Object subclass: #XXXXReplacerResult
	instanceVariableNames: 'sourceCode readAccessOnInstanceVariables writeAccessOnInstanceVariables'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXReplacerResult class' category: 'MoveMethodRefactoring'!
XXXXReplacerResult class
	instanceVariableNames: ''!


!XXXXReplacerForNode methodsFor: 'initialization' stamp: 'mc 4/18/2023 02:00:26'!
initializeFor: aCompiledMethod rejectingIntervals: aFewIntervalsToReject onNode: aNodeToGetCode 
	compiledMethod := aCompiledMethod.
	intervalsToReject := aFewIntervalsToReject.
	node := aNodeToGetCode.
	intervalsToModify := OrderedCollection new.
	readAccessOnInstanceVariables := OrderedCollection new.
	writeAccessOnInstanceVariables := OrderedCollection new.! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/18/2023 02:01:48'!
apply
	| newCode newCodeForNode result |
	self initializeNodeInterval.
	self initializeOffset.
	node accept: self.
	intervalsToModify := intervalsToModify collect: [ :anAssociation | (anAssociation key - nodeOffsetInSourceCode) -> anAssociation value ].
	newCodeForNode := compiledMethod sourceCode copyFrom: nodeInterval first to: nodeInterval last.
	
	((node isMethodNode) and: ((readAccessOnInstanceVariables isEmpty not) or: (writeAccessOnInstanceVariables isEmpty not))) ifTrue: [
		(compiledMethod methodNode selectorAndArgumentsAsString includes: $:) 
				ifTrue: [intervalsToModify add: (1 to: compiledMethod methodNode selectorLastPosition ) -> (compiledMethod methodNode selectorAndArgumentsAsString, ' sourceObject: sourceObject')]
				ifFalse: [intervalsToModify add: (1 to: compiledMethod methodNode selectorLastPosition ) -> (compiledMethod methodNode selectorAndArgumentsAsString, ': sourceObject')].
	].
	"self halt."
	intervalsToModify sort: [ :left :right | left key first < right key first ].
	newCode := newCodeForNode copyReplacing: intervalsToModify.
	result := XXXXReplacerResult newWith: newCode modifiedReads: readAccessOnInstanceVariables modifiedWrites: writeAccessOnInstanceVariables.
	^result 
	"^newCode"! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/14/2023 00:49:47'!
firstUnseenIntervalFor: aNode 
	| completeRangesOfassigmentNode |
	completeRangesOfassigmentNode := self sourceRangesOf: aNode.
	self removeSeenRanges: completeRangesOfassigmentNode.
	^completeRangesOfassigmentNode detectMin: [ :anInterval | anInterval first]! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/28/2023 01:46:20'!
firstUnseenIntervalFor: aNode ifAbsent: anAbsentBlock 
	
	| completeRangesOfassigmentNode |
	
	completeRangesOfassigmentNode := compiledMethod methodNode completeSourceRangesOf: aNode ifAbsent: anAbsentBlock.
	self removeSeenRanges: completeRangesOfassigmentNode.
	^completeRangesOfassigmentNode detectMin: [ :anInterval | anInterval first]! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/18/2023 01:21:54'!
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

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/14/2023 02:19:49'!
initializeOffset

	^ nodeOffsetInSourceCode := nodeInterval first -1! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/26/2023 02:33:42'!
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

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/14/2023 00:53:08'!
registerInterval: anInterval withModification: sourceCodeForInterval 
	intervalsToReject add: anInterval.
	intervalsToModify add: anInterval -> sourceCodeForInterval! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/14/2023 00:53:08'!
removeSeenRanges: rangesOfNode 
	^rangesOfNode removeAllSuchThat: [ :aSourceInterval | intervalsToReject anySatisfy: [ :aSourceIntervalToModify | aSourceIntervalToModify includesAllOf: aSourceInterval ] ]! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/14/2023 00:51:07'!
sourceRangesOf: aNode 
	^compiledMethod methodNode completeSourceRangesOf: aNode ifAbsent: []! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/26/2023 02:43:22'!
visitAssignmentNode: anAssignmentNode 
	| assigmentValue completeRangesOfassigmentNode nodeXXXReplacer resultForValue setterSelectorAsString |
	"self halt."
	completeRangesOfassigmentNode := self firstUnseenIntervalFor: anAssignmentNode.
	"completeRangesOfassigmentNodeValue := self firstUnseenIntervalFor: anAssignmentNode value."
	"intervalToUse := self firstIntervalOn: completeRangesOfassigmentNode."
	nodeXXXReplacer := XXXXReplacerForNode 
					for: compiledMethod
					rejectingIntervals: intervalsToReject 
					onNode: anAssignmentNode value.
					
	resultForValue :=			nodeXXXReplacer apply.
	(((anAssignmentNode value isMessageNode and: [anAssignmentNode value isKeywordMessageSend])) or: [anAssignmentNode value isAssignmentNode ])
		ifTrue: [assigmentValue := '(', resultForValue sourceCode , ')'.] 
		ifFalse: [assigmentValue := resultForValue sourceCode .].
	
	
	setterSelectorAsString := anAssignmentNode variable name, ':'.
	compiledMethod methodClass  methodDict 
					at: setterSelectorAsString asSymbol 
					ifPresent: [ :setterCandidate | (self method: setterCandidate isSetterOf: anAssignmentNode variable name) 
												ifFalse: 	[setterSelectorAsString := anAssignmentNode variable name, '_SETTER_CHANGE_ME:'.]
							]
					ifAbsent: [].

	
	self registerInterval: completeRangesOfassigmentNode withModification: ('sourceObject ', setterSelectorAsString, ' ', assigmentValue).
	readAccessOnInstanceVariables addAll: resultForValue readAccessOnInstanceVariables.
	writeAccessOnInstanceVariables addAll: resultForValue writeAccessOnInstanceVariables.
	writeAccessOnInstanceVariables add: anAssignmentNode variable name.! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/18/2023 00:40:08'!
visitInstanceVariableNode: anInstanceVariableNode 
	| sourceCodeForInterval anInterval |
	"self halt."
	anInterval := self firstUnseenIntervalFor: anInstanceVariableNode.
	sourceCodeForInterval := 'sourceObject ', anInstanceVariableNode key.
	self registerInterval: anInterval withModification: sourceCodeForInterval.
	readAccessOnInstanceVariables add: anInstanceVariableNode key.! !

!XXXXReplacerForNode methodsFor: 'visiting' stamp: 'mc 4/28/2023 01:41:33'!
visitVariableNode: aVariableNode 
	| anInterval sourceCodeForInterval |
	anInterval := self firstUnseenIntervalFor: aVariableNode ifAbsent: [^self].
	sourceCodeForInterval := 'sourceObject'.
	self registerInterval: anInterval withModification: sourceCodeForInterval.
	readAccessOnInstanceVariables add: aVariableNode name.! !

!XXXXReplacerForNode methodsFor: 'private - visiting' stamp: 'mc 4/14/2023 02:12:28'!
firstIntervalOn: aCollectionOfIntervals
	^aCollectionOfIntervals detectMin: [ :anInterval | anInterval first]! !

!XXXXReplacerForNode class methodsFor: 'instance creation' stamp: 'mc 4/17/2023 01:19:56'!
for: aCompiledMethod 
	
	^self for: aCompiledMethod rejectingIntervals: OrderedCollection new onNode: aCompiledMethod methodNode! !

!XXXXReplacerForNode class methodsFor: 'instance creation' stamp: 'mc 4/14/2023 00:00:15'!
for: aCompiledMethod rejectingIntervals: aFewIntervalsToReject onNode: aNodeToGetCode 
	^self new initializeFor: aCompiledMethod rejectingIntervals: aFewIntervalsToReject onNode: aNodeToGetCode ! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/5/2023 01:50:00'!
test001MethodShouldExistsOnSourceClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	
	
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'] 
		failsWith: [MoveMethodRefactoring methodShouldExistsOnSourceClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/5/2023 01:50:38'!
test002MethodShouldNotExistsOnTargetClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	targetClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'] 
		failsWith: [MoveMethodRefactoring methodShouldNotExistsOnTargertClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/5/2023 01:50:53'!
test003TargetClassShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := nil.
	sourceClass compile: 'm1 ^1' .
	
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'] 
		failsWith: [MoveMethodRefactoring targetClassShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/5/2023 01:51:06'!
test004SourceClassShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := nil.
	targetClass := self createClassNamed: #TargetClass.
	
	
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'] 
		failsWith: [MoveMethodRefactoring sourceClassShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/5/2023 01:51:25'!
test005MethodShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: nil from: sourceClass to: targetClass accessingThrough: 'iv1'] 
		failsWith: [MoveMethodRefactoring methodShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/5/2023 02:08:21'!
test006InstanceVariableToAccessingThroughShouldNotBeNil
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: nil] 
		failsWith: [MoveMethodRefactoring instanceVariableToAccessingThroughShouldNotBeNilErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/5/2023 02:12:02'!
test007InstanceVariableToAccessingThroughShouldExistsInSourceClass
	
	| sourceClass targetClass |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1' .
	
	self
		assertCreation: [MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv2'] 
		failsWith: [MoveMethodRefactoring instanceVariableToAccessingThroughShouldExistsInSourceClassErrorMessage].! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/13/2023 01:47:09'!
test100CanMoveMethodWithoutReferences
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^1.' .
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass compiledMethodAt: #m1) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/13/2023 01:47:02'!
test101CanMoveMethodWithoutReferences
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^2.' .
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1 ^2.' equals: (targetClass compiledMethodAt: #m1) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/17/2023 00:59:48'!
test102CanMoveMethodWhenReferencesAnInstanceVariable
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv2.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv2.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	self assert: 'iv2', String newLineString, String tab, '^iv2.' equals: (sourceClass compiledMethodAt: #iv2) sourceCode.
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/17/2023 22:51:09'!
test103CanMoveMethodWhenReferencesAnInstanceVariableForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	self assert: 'iv3', String newLineString, String tab, '^iv3.' equals: (sourceClass compiledMethodAt: #iv3) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/16/2023 22:12:49'!
test104CanMoveMethodWhenReferencesTwoInstanceVariableForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3 + iv4.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3 + sourceObject iv4.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	self assert: 'iv3', String newLineString, String tab, '^iv3.' equals: (sourceClass compiledMethodAt: #iv3) sourceCode.
	self assert: 'iv4', String newLineString, String tab, '^iv4.' equals: (sourceClass compiledMethodAt: #iv4) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/18/2023 22:04:44'!
test105CanMoveMethodWhenReferencesAnInstanceVariableForWriting
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3 := 1.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3: 1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	self assert: 'iv3: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass compiledMethodAt: #iv3:) sourceCode.
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/18/2023 22:08:08'!
test106CanMoveMethodWhenReferencesTwoInstanceVariableForWriting
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 iv3 := iv4 := 1.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject sourceObject iv3: (sourceObject iv4: 1).' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	self assert: 'iv3: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass compiledMethodAt: #iv3:) sourceCode.
	self assert: 'iv4: anObject', String newLineString, String tab, '^iv4 := anObject.' equals: (sourceClass compiledMethodAt: #iv4:) sourceCode.! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/17/2023 00:52:23'!
test107CanMoveMethodWhenReferencesTwoInstanceVariableForWritingAndOneForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4 iv5'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 iv3 := iv4 := iv5.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject sourceObject iv3: (sourceObject iv4: sourceObject iv5).' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/17/2023 00:52:34'!
test108CanMoveMethodWhenReferencesAnInstanceVariableAndHasAParameter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1: anObject ^iv2.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: anObject sourceObject: sourceObject ^sourceObject iv2.' equals: (targetClass compiledMethodAt: #m1:sourceObject:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/21/2023 08:12:59'!
test109AfterMovingMethodWhichReferencesAnInstanceVariableForReadingShouldUseTheExistentGetter
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3 ^iv3.'.
	sourceClass compile: 'm1 ^iv3 + 1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'iv3 ^iv3.' equals: (sourceClass compiledMethodAt: #iv3) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/24/2023 00:48:03'!
test110AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter___wip
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3: anObject ^iv3 := anObject.'.
	sourceClass compile: 'm1 ^iv3 := 1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'iv3: anObject ^iv3 := anObject.' equals: (sourceClass compiledMethodAt: #iv3:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/26/2023 02:35:54'!
test111AfterMovingMethodWhichReferencesAnInstanceVariableForWritingShouldUseTheExistentSetter___wip2
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'iv3: anObject iv3 := anObject.'.
	sourceClass compile: 'm1 ^iv3 := 1.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3_SETTER_CHANGE_ME: 1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self assert: 'iv3_SETTER_CHANGE_ME: anObject', String newLineString, String tab, '^iv3 := anObject.' equals: (sourceClass compiledMethodAt: #iv3_SETTER_CHANGE_ME:) sourceCode! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/27/2023 01:17:57'!
test200CanMoveMethodWhenSendsMessageToSelf
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'justOne ^1.'.
	sourceClass compile: 'm1 ^self justOne.'.
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject justOne.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.! !

!MoveMethodRefactoring methodsFor: 'initialization' stamp: 'mc 4/5/2023 01:39:26'!
initializeMethodNamed: aMethodName from: aSourceClass to: aTargetClass 
	methodName := aMethodName.
	sourceClass := aSourceClass.
	targetClass := aTargetClass.! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/28/2023 01:19:26'!
apply
	| compiledMethod xxxxreplacerResult |
	compiledMethod := sourceClass methodDict at: methodName.
	xxxxreplacerResult := self codeReplacingInstVarRef: compiledMethod.
	
	xxxxreplacerResult readAccessOnInstanceVariables do: [ :anInstanceVariable | anInstanceVariable = 'self' ifFalse: [self createGetterIfNotExistsFor: anInstanceVariable] ].
	xxxxreplacerResult writeAccessOnInstanceVariables do: [ :anInstanceVariable | self createSetterIfNotExistsFor: anInstanceVariable ].
	targetClass compile: xxxxreplacerResult sourceCode.
	sourceClass removeSelector: methodName ! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/18/2023 02:03:10'!
codeReplacingInstVarRef: compiledMethod
	| replacer |
	"replacer := XXXXReplacer for: compiledMethod."
	replacer := XXXXReplacerForNode for: compiledMethod.
	^replacer apply.! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/20/2023 22:57:24'!
createGetterFor: anInstanceVariable

	^ sourceClass compile: anInstanceVariable, String newLineString, String tab, '^', anInstanceVariable, '.'! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/20/2023 23:01:44'!
createGetterIfNotExistsFor: anInstanceVariable
	
	| getterCandidate |
	getterCandidate := sourceClass methodDict at: anInstanceVariable asSymbol ifAbsent:[^self createGetterFor: anInstanceVariable].
	(getterCandidate isGetterOf: anInstanceVariable at: (sourceClass instVarNames indexOf: anInstanceVariable)) 
		ifFalse: 	[self createGetterFor: anInstanceVariable]! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/24/2023 23:50:24'!
createSetterChangeMeFor: anInstanceVariable 
	^ sourceClass compile: anInstanceVariable, '_SETTER_CHANGE_ME: anObject', String newLineString, String tab, '^', anInstanceVariable, ' := anObject.'! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/21/2023 08:55:38'!
createSetterFor: anInstanceVariable

	^ sourceClass compile: anInstanceVariable, ': anObject', String newLineString, String tab, '^', anInstanceVariable, ' := anObject.'! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/24/2023 23:48:56'!
createSetterIfNotExistsFor: anInstanceVariable
	
	| setterCandidate |
	setterCandidate := sourceClass methodDict at: (anInstanceVariable, ':') asSymbol ifAbsent:[^self createSetterFor: anInstanceVariable].
	(self method: setterCandidate isSetterOf: anInstanceVariable)
	"(setterCandidate isSetterOf: anInstanceVariable at: (sourceClass instVarNames indexOf: anInstanceVariable)) "
		ifFalse: 	[self createSetterChangeMeFor: anInstanceVariable]! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/8/2023 16:36:28'!
hasReferencesToInstVars: compiledMethod 
	^sourceClass instVarNames anySatisfy: [ :anInstanceVariable | compiledMethod accessesInstanceVariable: anInstanceVariable]! !

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

!MoveMethodRefactoring class methodsFor: 'instance creation' stamp: 'mc 4/5/2023 02:15:05'!
methodNamed: methodName from: sourceClass to: targetClass accessingThrough: instanceVariable  

	
	(targetClass isNil) ifTrue: [ self refactoringError: self targetClassShouldNotBeNilErrorMessage ].
	(sourceClass isNil) ifTrue: [ self refactoringError: self sourceClassShouldNotBeNilErrorMessage].
	(methodName isNil) ifTrue: [ self refactoringError: self methodShouldNotBeNilErrorMessage ].
	(instanceVariable isNil) ifTrue: [ self refactoringError: self instanceVariableToAccessingThroughShouldNotBeNilErrorMessage ].
	(sourceClass includesSelector: methodName) ifFalse: [ self refactoringError: self methodShouldExistsOnSourceClassErrorMessage ].
	(sourceClass allInstVarNames includes: instanceVariable) ifFalse: [ self refactoringError: self instanceVariableToAccessingThroughShouldExistsInSourceClassErrorMessage ].
	(targetClass includesSelector: methodName) ifTrue: [ self refactoringError: self methodShouldNotExistsOnTargertClassErrorMessage ].
	^self new initializeMethodNamed: methodName from: sourceClass to: targetClass ! !

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

!XXXXReplacerResult methodsFor: 'nil' stamp: 'mc 4/18/2023 00:13:31'!
initielizeWith: newCode modifiedReads: modifiedReads modifiedWrites: modifiedWrites
	sourceCode := newCode.
	readAccessOnInstanceVariables := modifiedReads.
	writeAccessOnInstanceVariables := modifiedWrites ! !

!XXXXReplacerResult methodsFor: 'nil' stamp: 'mc 4/17/2023 23:02:43'!
readAccessOnInstanceVariables
	^readAccessOnInstanceVariables ! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 4/17/2023 23:03:43'!
sourceCode
	^sourceCode ! !

!XXXXReplacerResult methodsFor: 'as yet unclassified' stamp: 'mc 4/17/2023 23:03:25'!
writeAccessOnInstanceVariables
	^writeAccessOnInstanceVariables! !

!XXXXReplacerResult class methodsFor: 'nil' stamp: 'mc 4/18/2023 00:12:41'!
newWith: newCode modifiedReads: modifiedReads modifiedWrites: modifiedWrites
	^self new initielizeWith: newCode modifiedReads: modifiedReads modifiedWrites: modifiedWrites! !
