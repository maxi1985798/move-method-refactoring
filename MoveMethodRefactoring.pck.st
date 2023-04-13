'From Cuis 6.0 [latest update: #5706] on 13 April 2023 at 2:16:02 am'!
'Description '!
!provides: 'MoveMethodRefactoring' 1 3!
SystemOrganization addCategory: 'MoveMethodRefactoring'!


!classDefinition: #XXXXReplacer category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #XXXXReplacer
	instanceVariableNames: 'compiledMethod intervalsToModify intervalsToReject'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXReplacer class' category: 'MoveMethodRefactoring'!
XXXXReplacer class
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


!XXXXReplacer methodsFor: 'initialization' stamp: 'mc 4/11/2023 22:36:46'!
initializeFor: aCompiledMethod 
	
	compiledMethod := aCompiledMethod.
	intervalsToModify := OrderedCollection new.
	intervalsToReject := OrderedCollection new.! !

!XXXXReplacer methodsFor: 'applying' stamp: 'mc 4/11/2023 01:10:15'!
apply
	| methodNode |
	"self halt."
	"compiledMethod selector: (compiledMethod selector, ': sourceObject')."
	
	methodNode := compiledMethod methodNode.
	intervalsToModify add: (1 to: methodNode selectorLastPosition ) -> (methodNode selectorAndArgumentsAsString, ': sourceObject').
	methodNode accept: self.
	
	^compiledMethod sourceCode copyReplacing: intervalsToModify.! !

!XXXXReplacer methodsFor: 'applying' stamp: 'mc 4/11/2023 23:17:33'!
firstUnseenIntervalFor: aNode 
	| completeRangesOfassigmentNode |
	completeRangesOfassigmentNode := self sourceRangesOf: aNode.
	self removeSeenRanges: completeRangesOfassigmentNode.
	^completeRangesOfassigmentNode detectMin: [ :anInterval | anInterval first]! !

!XXXXReplacer methodsFor: 'applying' stamp: 'mc 4/11/2023 22:54:37'!
registerInterval: anInterval withModification: sourceCodeForInterval 
	intervalsToReject add: anInterval.
	intervalsToModify add: anInterval -> sourceCodeForInterval! !

!XXXXReplacer methodsFor: 'applying' stamp: 'mc 4/11/2023 22:35:38'!
removeSeenRanges: rangesOfNode 
	^rangesOfNode removeAllSuchThat: [ :aSourceInterval | intervalsToReject anySatisfy: [ :aSourceIntervalToModify | aSourceIntervalToModify includesAllOf: aSourceInterval ] ]! !

!XXXXReplacer methodsFor: 'applying' stamp: 'mc 4/11/2023 22:34:54'!
sourceRangesOf: aNode 
	^compiledMethod methodNode completeSourceRangesOf: aNode ifAbsent: []! !

!XXXXReplacer methodsFor: 'visiting' stamp: 'mc 4/13/2023 01:47:49'!
visitAssignmentNode: anAssignmentNode 
	 
	| completeRangesOfassigmentNode completeRangesOfassigmentNodeValue newCodeForNode |
	"self halt."
	completeRangesOfassigmentNode := self firstUnseenIntervalFor: anAssignmentNode.
	completeRangesOfassigmentNodeValue := self firstUnseenIntervalFor: anAssignmentNode value.
	"intervalToUse := self firstIntervalOn: completeRangesOfassigmentNode."
	newCodeForNode := compiledMethod sourceCode copyFrom: completeRangesOfassigmentNodeValue first to: completeRangesOfassigmentNodeValue last.
	self registerInterval: completeRangesOfassigmentNode withModification: ('sourceObject ', anAssignmentNode variable name, ': ', newCodeForNode)! !

!XXXXReplacer methodsFor: 'visiting' stamp: 'mc 4/11/2023 22:55:21'!
visitInstanceVariableNode: anInstanceVariableNode 
	| sourceCodeForInterval anInterval |
	"self halt."
	anInterval := self firstUnseenIntervalFor: anInstanceVariableNode.
	sourceCodeForInterval := 'sourceObject ', anInstanceVariableNode key.
	self registerInterval: anInterval withModification: sourceCodeForInterval.! !

!XXXXReplacer class methodsFor: 'instance creation' stamp: 'mc 4/9/2023 03:42:51'!
for: aCompiledMethod 
	
	^self new initializeFor: aCompiledMethod ! !

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

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/13/2023 01:46:52'!
test102CanMoveMethodWhenReferencesAnInstanceVariable
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv2.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv2.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/13/2023 01:46:47'!
test103CanMoveMethodWhenReferencesAnInstanceVariableForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/13/2023 01:46:40'!
test104CanMoveMethodWhenReferencesTwoInstanceVariableForReading
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3 + iv4.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3 + sourceObject iv4.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/13/2023 01:46:33'!
test105CanMoveMethodWhenReferencesAnInstanceVariableForWriting
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 ^iv3 := 1.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv3: 1.' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 4/13/2023 02:15:36'!
wiptest106CanMoveMethodWhenReferencesTwoInstanceVariableForWriting
	
	| sourceClass targetClass refactoring |
	
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv3 iv4'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'm1 iv3 := iv4 := 1.' .
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1'.
	refactoring apply.
	
	self assert: 'm1: sourceObject sourceObject iv3: (sourceObject iv4: 1).' equals: (targetClass compiledMethodAt: #m1:) sourceCode.
	self deny: (sourceClass includesSelector: #m1).
	! !

!MoveMethodRefactoring methodsFor: 'initialization' stamp: 'mc 4/5/2023 01:39:26'!
initializeMethodNamed: aMethodName from: aSourceClass to: aTargetClass 
	methodName := aMethodName.
	sourceClass := aSourceClass.
	targetClass := aTargetClass.! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/8/2023 02:38:59'!
apply
	| compiledMethod sourceCode |
	compiledMethod := sourceClass methodDict at: methodName.
	(self hasReferencesToInstVars: compiledMethod)
		ifTrue:  [ sourceCode := self codeReplacingInstVarRef: compiledMethod]
		ifFalse: [ sourceCode := compiledMethod sourceCode ].
	targetClass compile: sourceCode.
	sourceClass removeSelector: methodName ! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/9/2023 03:41:49'!
codeReplacingInstVarRef: compiledMethod
	| replacer |
	replacer := XXXXReplacer for: compiledMethod.
	^replacer apply.! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 4/8/2023 16:36:28'!
hasReferencesToInstVars: compiledMethod 
	^sourceClass instVarNames anySatisfy: [ :anInstanceVariable | compiledMethod accessesInstanceVariable: anInstanceVariable]! !

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
