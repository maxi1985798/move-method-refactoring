'From Cuis7.3 [latest update: #7092] on 25 March 2025 at 11:06:11 pm'!
'Description '!
!provides: 'MoveMethodRefactoringLiveTyping' 1 0!
!requires: 'MoveMethodRefactoring' 1 138 nil!
SystemOrganization addCategory: #MoveMethodRefactoringLiveTyping!


!classDefinition: #MoveMethodWithActualScopeApplier category: #MoveMethodRefactoringLiveTyping!
MoveMethodApplier subclass: #MoveMethodWithActualScopeApplier
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoringLiveTyping'!
!classDefinition: 'MoveMethodWithActualScopeApplier class' category: #MoveMethodRefactoringLiveTyping!
MoveMethodWithActualScopeApplier class
	instanceVariableNames: ''!


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

!MoveMethodWithActualScopeApplier class methodsFor: 'instance creation' stamp: 'HAW 3/22/2025 20:42:57'!
initialize
	
	RefactoringApplier registerMoveMethodApplier: MoveMethodWithActualScopeApplier! !
MoveMethodWithActualScopeApplier initialize!
