'From Cuis 6.0 [latest update: #5962] on 10 August 2023 at 1:05:03 am'!
'Description '!
!provides: 'MoveMethodRefactoring' 1 47!
SystemOrganization addCategory: 'MoveMethodRefactoring'!


!classDefinition: #MoveMethodMessageSendsSet category: 'MoveMethodRefactoring'!
MessageSet subclass: #MoveMethodMessageSendsSet
	instanceVariableNames: ''
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodMessageSendsSet class' category: 'MoveMethodRefactoring'!
MoveMethodMessageSendsSet class
	instanceVariableNames: ''!

!classDefinition: #XXXXMessageNodeReferenceChanger category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #XXXXMessageNodeReferenceChanger
	instanceVariableNames: 'methodReference instanceVariable collectionOfMessageNodesToChange xXXXReplacerResult messageNodeReferenceFather newCodeForFather currentNodeToChange intervalsToModify nodeOffsetInSourceCode currentNodeInterval readAccessOnInstanceVariables writeAccessOnInstanceVariables readAccessOnClassVariables'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXMessageNodeReferenceChanger class' category: 'MoveMethodRefactoring'!
XXXXMessageNodeReferenceChanger class
	instanceVariableNames: ''!

!classDefinition: #XXXXMessageNodeReferenceChangerForReceiver category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #XXXXMessageNodeReferenceChangerForReceiver
	instanceVariableNames: 'methodReference instanceVariable collectionOfMessageNodesToChange xXXXReplacerResult messageNodeReferenceFather newCodeForFather currentNodeToChange intervalsToModify nodeOffsetInSourceCode currentNodeInterval readAccessOnInstanceVariables readAccessOnClassVariables writeAccessOnClassVariables'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXMessageNodeReferenceChangerForReceiver class' category: 'MoveMethodRefactoring'!
XXXXMessageNodeReferenceChangerForReceiver class
	instanceVariableNames: ''!

!classDefinition: #XXXXMessageNodeReferenceChangerForReceiverResult category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #XXXXMessageNodeReferenceChangerForReceiverResult
	instanceVariableNames: 'sourceCode readAccessOnInstanceVariables writeAccessOnInstanceVariables readAccessOnClassVariables writeAccessOnClassVariables'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXMessageNodeReferenceChangerForReceiverResult class' category: 'MoveMethodRefactoring'!
XXXXMessageNodeReferenceChangerForReceiverResult class
	instanceVariableNames: ''!

!classDefinition: #XXXXMessageNodeReferenceChangerResult category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #XXXXMessageNodeReferenceChangerResult
	instanceVariableNames: 'sourceCode readAccessOnInstanceVariables writeAccessOnInstanceVariables readAccessOnClassVariables unicodeString'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXMessageNodeReferenceChangerResult class' category: 'MoveMethodRefactoring'!
XXXXMessageNodeReferenceChangerResult class
	instanceVariableNames: ''!

!classDefinition: #XXXXMethodChanger category: 'MoveMethodRefactoring'!
ParseNodeVisitor subclass: #XXXXMethodChanger
	instanceVariableNames: 'methodReference collectionOfMessageNodesToChange instanceVariable compiledMethod xXXXReplacerResult shouldAddParenthesis referenceToReplace currentNodeInterval intervalsToReject'
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

!classDefinition: #MoveMethodUsagesStepWindow category: 'MoveMethodRefactoring'!
MessageSetWindow subclass: #MoveMethodUsagesStepWindow
	instanceVariableNames: 'applier'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodUsagesStepWindow class' category: 'MoveMethodRefactoring'!
MoveMethodUsagesStepWindow class
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

!classDefinition: #MoveMethodApplier category: 'MoveMethodRefactoring'!
RefactoringApplier subclass: #MoveMethodApplier
	instanceVariableNames: 'model methodReference methodToMove sourceClass accessingThroughinstanceVariableName targetClass scopeChoice sendsToChange shouldShowChanges wizardStepWindow'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'MoveMethodApplier class' category: 'MoveMethodRefactoring'!
MoveMethodApplier class
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

!classDefinition: #XXXXSenderReplacerResult category: 'MoveMethodRefactoring'!
Object subclass: #XXXXSenderReplacerResult
	instanceVariableNames: 'sourceCode'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'MoveMethodRefactoring'!
!classDefinition: 'XXXXSenderReplacerResult class' category: 'MoveMethodRefactoring'!
XXXXSenderReplacerResult class
	instanceVariableNames: ''!


!MoveMethodMessageSendsSet class methodsFor: 'as yet unclassified' stamp: 'mc 8/8/2023 00:33:58'!
applier: anMoveMethodApplier

	^(self messageList: anMoveMethodApplier messageSendsToInline) initializeApplier: anMoveMethodApplier! !

!XXXXMessageNodeReferenceChanger methodsFor: 'initialization' stamp: 'mc 7/15/2023 19:24:26'!
initializeNewWith: aMethodReference andWith: anInstanceVariableName andWith: aCollectionOfMessageNodesToChange andWith: aXXXXReplacerResult andWith: aMessageNodeReferenceFather andWith: someCurrentNodeToGetCode
	
	methodReference := aMethodReference.
	instanceVariable := anInstanceVariableName.
	collectionOfMessageNodesToChange := aCollectionOfMessageNodesToChange.
	xXXXReplacerResult := aXXXXReplacerResult..
	messageNodeReferenceFather := aMessageNodeReferenceFather.
	currentNodeToChange := someCurrentNodeToGetCode.
	intervalsToModify := OrderedCollection new.
	readAccessOnInstanceVariables := Set new.
	writeAccessOnInstanceVariables := Set new.
	readAccessOnClassVariables := Set new.! !

!XXXXMessageNodeReferenceChanger methodsFor: 'as yet unclassified' stamp: 'mc 6/20/2023 18:36:03'!
registerInterval: anInterval withModification: sourceCodeForInterval 
	intervalsToModify add: anInterval -> sourceCodeForInterval! !

!XXXXMessageNodeReferenceChanger methodsFor: 'as yet unclassified' stamp: 'mc 7/15/2023 19:29:04'!
value
	
	
	"currentNodeToChange := messageNodeReferenceFather messageNode ."
	| newCodeForCurrentNode newCode |
	self initializeNodeInterval.
	self initializeOffset.
	currentNodeToChange accept: self.
	intervalsToModify := intervalsToModify collect: [ :anAssociation | (anAssociation key - nodeOffsetInSourceCode) -> anAssociation value ].
	newCodeForCurrentNode := messageNodeReferenceFather compiledMethod sourceCode copyFrom: currentNodeInterval first to: currentNodeInterval last.
	
	
	newCode := newCodeForCurrentNode copyReplacing: intervalsToModify.
	^XXXXMessageNodeReferenceChangerResult with: newCode with: readAccessOnInstanceVariables with: readAccessOnClassVariables.
	
	! !

!XXXXMessageNodeReferenceChanger methodsFor: 'private' stamp: 'mc 6/16/2023 19:37:25'!
codeForMessageSend: argumentNodeToGetCode
	| argumentsCode indexNewSend newSend newReceiver |
	argumentNodeToGetCode receiver isTemp 
	ifTrue: [
		xXXXReplacerResult readAccessOnInstanceVariables add: instanceVariable.
		newReceiver := argumentNodeToGetCode receiver key, ' ', instanceVariable.]
	ifFalse: [ newReceiver := instanceVariable.		].
	argumentsCode := OrderedCollection new.
	argumentNodeToGetCode argumentsInEvaluationOrder do: [ :anArgumentNode |
		( anArgumentNode isMessageNode and: (self isAMessageNodeToReplace: anArgumentNode)) 
			ifTrue: [ argumentsCode add: '(', (self codeForMessageSend: anArgumentNode), ')' ]
			ifFalse: [
				argumentsCode add: (methodReference compiledMethod sourceCode 
					copyFrom: (self firstUnseenIntervalFor: anArgumentNode) first 
					to: (self firstUnseenIntervalFor: anArgumentNode) last).
				].
		].
	
	indexNewSend := 1.
	newSend := ''.
	argumentNodeToGetCode selectorSymbol keywords do: [ :aKeyword | newSend := newSend, ' ', aKeyword, ' ', (argumentsCode at: indexNewSend). indexNewSend := indexNewSend +1].
	
	newSend := newReceiver, newSend.
	
	xXXXReplacerResult methodWithSelfReferences 
		ifTrue: [
			newSend := newSend, ' sourceObject: self'].
	^newSend.! !

!XXXXMessageNodeReferenceChanger methodsFor: 'private' stamp: 'mc 6/20/2023 18:40:31'!
firstIntervalOn: aCollectionOfIntervals
	^aCollectionOfIntervals detectMin: [ :anInterval | anInterval first]! !

!XXXXMessageNodeReferenceChanger methodsFor: 'private' stamp: 'mc 6/16/2023 19:38:10'!
firstUnseenIntervalFor: aNode 
	| completeRangesOfassigmentNode |
	completeRangesOfassigmentNode := self sourceRangesOf: aNode.
	"self removeSeenRanges: completeRangesOfassigmentNode."
	^completeRangesOfassigmentNode detectMin: [ :anInterval | anInterval first]! !

!XXXXMessageNodeReferenceChanger methodsFor: 'private' stamp: 'mc 6/20/2023 18:42:15'!
initializeNodeInterval
	| posibleRangesForNode |
	posibleRangesForNode := self sourceRangesOf: currentNodeToChange .
	"self removeSeenRanges: posibleRangesForNode."
	currentNodeInterval := self firstIntervalOn: posibleRangesForNode.! !

!XXXXMessageNodeReferenceChanger methodsFor: 'private' stamp: 'mc 6/20/2023 18:43:36'!
initializeOffset
	^ nodeOffsetInSourceCode := currentNodeInterval first -1! !

!XXXXMessageNodeReferenceChanger methodsFor: 'private' stamp: 'mc 6/16/2023 19:37:51'!
isAMessageNodeToReplace: argumentNode 
	^collectionOfMessageNodesToChange anySatisfy: [ :aMessageNodeReference | aMessageNodeReference messageNode equivalentTo: argumentNode ]! !

!XXXXMessageNodeReferenceChanger methodsFor: 'private' stamp: 'mc 6/26/2023 01:20:44'!
isNodeToChange: aMessageNode 
	^collectionOfMessageNodesToChange anySatisfy: [ :aMessageNodeReference | 
		(self sourceRangesOf: aMessageNode) anySatisfy: [ :aRange | aMessageNodeReference completeSourceRange = aRange]
		 ]
	! !

!XXXXMessageNodeReferenceChanger methodsFor: 'private' stamp: 'mc 6/16/2023 19:38:39'!
sourceRangesOf: aNode 
	
	^methodReference compiledMethod methodNode completeSourceRangesOf: aNode ifAbsent: []! !

!XXXXMessageNodeReferenceChanger methodsFor: 'visiting' stamp: 'mc 8/4/2023 09:31:27'!
visitMessageNode: aMessageNode 
	| newCodeForReceiver newSend rangeMessageNode codeForMessage argumentsCode newCodeForArgument indexNewSend newCodeForReceiverResult |
	(self isNodeToChange: aMessageNode)
		ifTrue: [

			
			
			codeForMessage := aMessageNode selector key.
			aMessageNode isKeywordMessageSend
				ifTrue: [
					argumentsCode := OrderedCollection new.
					aMessageNode argumentsInEvaluationOrder do: [ :anArgumentNode |
						newCodeForArgument := (XXXXMessageNodeReferenceChanger 
							newWith:  methodReference
							andWith:  instanceVariable
							andWith:  collectionOfMessageNodesToChange
							andWith:  xXXXReplacerResult
							andWith: messageNodeReferenceFather
							currentNode: anArgumentNode) value sourceCode.
						
						
						( anArgumentNode isMessageNode and: (self isAMessageNodeToReplace: anArgumentNode)) 
							ifTrue: [ argumentsCode add: '(', (newCodeForArgument), ')' ]
							ifFalse: [
								argumentsCode add: (methodReference compiledMethod sourceCode 
									copyFrom: (self firstUnseenIntervalFor: anArgumentNode) first 
									to: (self firstUnseenIntervalFor: anArgumentNode) last).
								].
						].
					
					indexNewSend := 1.
					newSend := ''.
					aMessageNode selectorSymbol keywords do: [ :aKeyword | newSend := newSend, ' ', aKeyword, ' ', (argumentsCode at: indexNewSend). indexNewSend := indexNewSend +1].
					codeForMessage := newSend copyFrom: 2 to: newSend size.
					].
			xXXXReplacerResult methodWithSelfReferences 
				ifTrue: [
					aMessageNode isKeywordMessageSend 
						ifTrue: [
							codeForMessage := codeForMessage, ' sourceObject: self'.
							] 
						ifFalse: [
							codeForMessage := codeForMessage, ': ', aMessageNode receiver key.
							]
					
					]
				ifFalse: [
					xXXXReplacerResult readAccessOnInstanceVariables isEmpty
						ifFalse: [
							aMessageNode isKeywordMessageSend 
							ifTrue:  [
								codeForMessage := codeForMessage, ' sourceObject: ', aMessageNode originalReceiver key.
								]
							ifFalse: [
								codeForMessage := codeForMessage, ': ', aMessageNode receiver key.
								]
							
							]
					].
			
			
			
			"code for receiver"
			newCodeForReceiver := ''.
			aMessageNode receiver 
				ifNil: [
					newSend := codeForMessage.
					] 
				ifNotNil: [
					newCodeForReceiverResult := (XXXXMessageNodeReferenceChangerForReceiver 
					newWith:  methodReference
					andWith:  instanceVariable
					andWith:  collectionOfMessageNodesToChange
					andWith:  xXXXReplacerResult
					andWith: messageNodeReferenceFather
					currentNode: aMessageNode receiver ) value.
				
					newCodeForReceiver := newCodeForReceiverResult sourceCode.
					readAccessOnInstanceVariables addAll: newCodeForReceiverResult readAccessOnInstanceVariables.
					readAccessOnClassVariables addAll: newCodeForReceiverResult readAccessOnClassVariables.
					newSend := newCodeForReceiver, ' ', codeForMessage.
					].
			
			
			
			"TODO: devolver un dao aca tambien y quitar esto"
			"xXXXReplacerResult readAccessOnInstanceVariables addAll: newCodeForReceiverResult readAccessOnInstanceVariables."
			
			"newSend := newCodeForReceiver, ' ', codeForMessage."
			rangeMessageNode := self firstUnseenIntervalFor: aMessageNode.
			self registerInterval: rangeMessageNode withModification: newSend.
			]
		ifFalse: [ super visitMessageNode: aMessageNode  ].
		! !

!XXXXMessageNodeReferenceChanger methodsFor: 'visiting' stamp: 'mc 6/20/2023 02:35:00'!
visitVariableNode: aVariableNode 
	| rangeMessageNode |
	rangeMessageNode := self firstUnseenIntervalFor: aVariableNode.
	self registerInterval: rangeMessageNode withModification: instanceVariable .! !

!XXXXMessageNodeReferenceChanger class methodsFor: 'instance creation' stamp: 'mc 6/20/2023 02:24:21'!
newWith: methodReference andWith: anInstanceVariable andWith: collectionOfMessageNodesToChange andWith: xXXXReplacerResult andWith: messageNodeReferenceFather 
	^self newWith: methodReference 
		andWith: anInstanceVariable 
		andWith: collectionOfMessageNodesToChange 
		andWith: xXXXReplacerResult 
		andWith: messageNodeReferenceFather 
		currentNode: messageNodeReferenceFather messageNode! !

!XXXXMessageNodeReferenceChanger class methodsFor: 'instance creation' stamp: 'mc 6/20/2023 02:04:52'!
newWith: methodReference andWith: anInstanceVariable andWith: collectionOfMessageNodesToChange andWith: xXXXReplacerResult andWith: messageNodeReferenceFather currentNode: currentNodeToGenerateCode 
	^self new 
		initializeNewWith: methodReference 
		andWith: anInstanceVariable 
		andWith: collectionOfMessageNodesToChange 
		andWith: xXXXReplacerResult 
		andWith: messageNodeReferenceFather
		andWith: currentNodeToGenerateCode! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'as yet unclassified' stamp: 'mc 6/23/2023 01:15:56'!
firstIntervalOn: aCollectionOfIntervals
	^aCollectionOfIntervals detectMin: [ :anInterval | anInterval first]! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'as yet unclassified' stamp: 'mc 6/23/2023 02:15:02'!
firstUnseenIntervalFor: aNode 
	| completeRangesOfassigmentNode |
	completeRangesOfassigmentNode := self sourceRangesOf: aNode.
	"self removeSeenRanges: completeRangesOfassigmentNode."
	^completeRangesOfassigmentNode detectMin: [ :anInterval | anInterval first]! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'as yet unclassified' stamp: 'mc 6/23/2023 02:18:17'!
registerInterval: anInterval withModification: sourceCodeForInterval 
	intervalsToModify add: anInterval -> sourceCodeForInterval! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'as yet unclassified' stamp: 'mc 6/23/2023 01:15:33'!
sourceRangesOf: aNode 
	
	^methodReference compiledMethod methodNode completeSourceRangesOf: aNode ifAbsent: []! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'as yet unclassified' stamp: 'mc 7/13/2023 23:47:49'!
value
	
	
	"currentNodeToChange := messageNodeReferenceFather messageNode ."
	| newCodeForCurrentNode newCode |
	self initializeNodeInterval.
	self initializeOffset.
	"self halt."
	currentNodeToChange accept: self.
	intervalsToModify := intervalsToModify collect: [ :anAssociation | (anAssociation key - nodeOffsetInSourceCode) -> anAssociation value ].
	newCodeForCurrentNode := messageNodeReferenceFather compiledMethod sourceCode copyFrom: currentNodeInterval first to: currentNodeInterval last.
	
	
	newCode := newCodeForCurrentNode copyReplacing: intervalsToModify.
	^XXXXMessageNodeReferenceChangerForReceiverResult with: newCode with: readAccessOnInstanceVariables with: readAccessOnClassVariables. 
	"^newCode"
	! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'initialization' stamp: 'mc 7/13/2023 22:49:53'!
initializeNewWith: aMethodReference andWith: anInstanceVariableName andWith: aCollectionOfMessageNodesToChange andWith: aXXXXReplacerResult andWith: aMessageNodeReferenceFather andWith: someCurrentNodeToGetCode
	
	methodReference := aMethodReference.
	instanceVariable := anInstanceVariableName.
	collectionOfMessageNodesToChange := aCollectionOfMessageNodesToChange.
	xXXXReplacerResult := aXXXXReplacerResult..
	messageNodeReferenceFather := aMessageNodeReferenceFather.
	currentNodeToChange := someCurrentNodeToGetCode.
	intervalsToModify := OrderedCollection new.
	readAccessOnClassVariables := Set new.
	writeAccessOnClassVariables := Set new.
	readAccessOnInstanceVariables := Set new.! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'initialization' stamp: 'mc 6/23/2023 01:15:14'!
initializeNodeInterval
	| posibleRangesForNode |
	posibleRangesForNode := self sourceRangesOf: currentNodeToChange .
	"self removeSeenRanges: posibleRangesForNode."
	currentNodeInterval := self firstIntervalOn: posibleRangesForNode.! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'initialization' stamp: 'mc 6/23/2023 01:16:21'!
initializeOffset
	^ nodeOffsetInSourceCode := currentNodeInterval first -1! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'visiting' stamp: 'mc 7/16/2023 02:15:39'!
visitInstanceVariableNode: anInstanceVariableNode 
	| newCode ranges |
	
	ranges := self firstUnseenIntervalFor: anInstanceVariableNode.
	newCode := anInstanceVariableNode key, ' ', instanceVariable.
	"readAccessOnInstanceVariables add: instanceVariable."
	self registerInterval: ranges withModification: newCode.! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'visiting' stamp: 'mc 7/16/2023 02:15:46'!
visitLiteralNode: aLiteralNode 

	| newCode ranges currentCode |
	
	ranges := self firstUnseenIntervalFor: aLiteralNode.
	currentCode := methodReference compiledMethod sourceCode copyFrom: ranges first to: ranges last.
	newCode := currentCode, ' ', instanceVariable.
	"readAccessOnInstanceVariables add: instanceVariable."
	self registerInterval: ranges withModification: newCode.! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'visiting' stamp: 'mc 7/16/2023 02:15:51'!
visitLiteralVariableNode: aLiteralVariableNode 

	| newCode ranges |
	
	ranges := self firstUnseenIntervalFor: aLiteralVariableNode.
	newCode := aLiteralVariableNode name, ' ', instanceVariable.
	"readAccessOnInstanceVariables add: instanceVariable."
	self registerInterval: ranges withModification: newCode.! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'visiting' stamp: 'mc 7/16/2023 02:15:57'!
visitMessageNode: aMessageNode 
	| rangeMessageNode currentCode |
	rangeMessageNode := self firstUnseenIntervalFor: aMessageNode.
	currentCode := methodReference compiledMethod sourceCode copyFrom: rangeMessageNode first to: rangeMessageNode last.
	"readAccessOnInstanceVariables add: instanceVariable."
	self registerInterval: rangeMessageNode withModification: currentCode, ' ', instanceVariable .! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'visiting' stamp: 'mc 7/16/2023 02:16:02'!
visitTempVariableNode: aTempVariableNode 

	| newCode ranges |
	
	ranges := self firstUnseenIntervalFor: aTempVariableNode.
	newCode := aTempVariableNode key, ' ', instanceVariable.
	"readAccessOnInstanceVariables add: instanceVariable."
	self registerInterval: ranges withModification: newCode.! !

!XXXXMessageNodeReferenceChangerForReceiver methodsFor: 'visiting' stamp: 'mc 7/16/2023 02:16:07'!
visitVariableNode: aVariableNode 
	| newCode ranges |
	
	ranges := self firstUnseenIntervalFor: aVariableNode.
	newCode := aVariableNode name, ' ', instanceVariable.
	"readAccessOnInstanceVariables add: instanceVariable."
	self registerInterval: ranges withModification: newCode.! !

!XXXXMessageNodeReferenceChangerForReceiver class methodsFor: 'instance creation' stamp: 'mc 6/23/2023 01:12:56'!
newWith: methodReference andWith: anInstanceVariable andWith: collectionOfMessageNodesToChange andWith: xXXXReplacerResult andWith: messageNodeReferenceFather currentNode: currentNodeToGenerateCode 
	^self new 
		initializeNewWith: methodReference 
		andWith: anInstanceVariable 
		andWith: collectionOfMessageNodesToChange 
		andWith: xXXXReplacerResult 
		andWith: messageNodeReferenceFather
		andWith: currentNodeToGenerateCode! !

!XXXXMessageNodeReferenceChangerForReceiverResult methodsFor: 'initialization' stamp: 'mc 7/13/2023 23:50:47'!
initializeWith: newCode with: instanceVariablesToRead with: classVariablesToRead 
	sourceCode := newCode.
	readAccessOnInstanceVariables := instanceVariablesToRead.
	readAccessOnClassVariables := classVariablesToRead.! !

!XXXXMessageNodeReferenceChangerForReceiverResult methodsFor: 'initialization' stamp: 'mc 7/14/2023 01:04:34'!
readAccessOnInstanceVariables
	^readAccessOnInstanceVariables ! !

!XXXXMessageNodeReferenceChangerForReceiverResult methodsFor: 'initialization' stamp: 'mc 7/13/2023 23:52:27'!
sourceCode
	^sourceCode ! !

!XXXXMessageNodeReferenceChangerForReceiverResult methodsFor: 'accessing' stamp: 'mc 7/15/2023 19:30:48'!
readAccessOnClassVariables
	^readAccessOnClassVariables! !

!XXXXMessageNodeReferenceChangerForReceiverResult class methodsFor: 'instance creation' stamp: 'mc 7/13/2023 23:49:39'!
with: newCode with: instanceVariablesToRead with: classVariablesToRead 
	^self new initializeWith: newCode with: instanceVariablesToRead with: classVariablesToRead ! !

!XXXXMessageNodeReferenceChangerResult methodsFor: 'as yet unclassified' stamp: 'mc 7/14/2023 01:35:16'!
initializeWith: newCode with: instanceVariablesToRead with: classVariablesToRead 
	sourceCode := newCode.
	readAccessOnInstanceVariables := instanceVariablesToRead.
	readAccessOnClassVariables := classVariablesToRead.! !

!XXXXMessageNodeReferenceChangerResult methodsFor: 'as yet unclassified' stamp: 'mc 7/14/2023 01:35:26'!
readAccessOnInstanceVariables
	^readAccessOnInstanceVariables ! !

!XXXXMessageNodeReferenceChangerResult methodsFor: 'as yet unclassified' stamp: 'mc 7/14/2023 01:35:33'!
sourceCode
	^sourceCode ! !

!XXXXMessageNodeReferenceChangerResult methodsFor: 'initialization' stamp: 'mc 7/14/2023 01:39:11'!
initializeWith: aUnicodeString 
	sourceCode := aUnicodeString ! !

!XXXXMessageNodeReferenceChangerResult class methodsFor: 'as yet unclassified' stamp: 'mc 7/14/2023 01:35:46'!
with: newCode with: instanceVariablesToRead with: classVariablesToRead 
	^self new initializeWith: newCode with: instanceVariablesToRead with: classVariablesToRead ! !

!XXXXMessageNodeReferenceChangerResult class methodsFor: 'instance creation' stamp: 'mc 7/14/2023 01:38:47'!
with: aUnicodeString 
	^self new initializeWith: aUnicodeString ! !

!XXXXMethodChanger methodsFor: 'initialization' stamp: 'mc 7/28/2023 01:27:25'!
initializeMethod: aMethodReference nodesToChange: aCollectionOfMessageNodesToChange instanceVariable: anInstanceVariable withResult: aXXXXReplacerResult 
	methodReference := aMethodReference.
	collectionOfMessageNodesToChange := aCollectionOfMessageNodesToChange.
	instanceVariable := anInstanceVariable.
	xXXXReplacerResult := aXXXXReplacerResult.
	shouldAddParenthesis := false.
	intervalsToReject := OrderedCollection new.! !

!XXXXMethodChanger methodsFor: 'as yet unclassified' stamp: 'mc 8/3/2023 23:32:34'!
applyExtractIfItIsNeeded
	| methodWhichReferencesToRefactor numberOfSends messageToMove newMessageNodeReference  referenceToExtract receiverNumber messageNodeIndexCollection messageNodeIndex receiverVarName |
	
	methodWhichReferencesToRefactor := compiledMethod asMethodReference.
	"---------------------------------------------------"
	
	
	receiverNumber := 1.
	
	[ xXXXReplacerResult methodMovedHasExternalDependencies  and: [collectionOfMessageNodesToChange anySatisfy: [ :aMessageNodeReference | aMessageNodeReference messageNode originalReceiver isMessageNode] ]  ] whileTrue: [
		referenceToExtract := (collectionOfMessageNodesToChange select: [:aMessageNodeReference | aMessageNodeReference messageNode receiver isMessageNode]) first.
		messageNodeIndexCollection := OrderedCollection new.
		messageNodeIndex := 0.
		"self halt."
		intervalsToReject := OrderedCollection new.
		compiledMethod methodNode accept: (ParseNodeEnumerator 
								ofBlock: [ :node | 
									(node isMessageNode 
									and: [ (node selector equivalentTo: referenceToExtract messageNode selector) ]) 
										ifTrue: [
											(collectionOfMessageNodesToChange anySatisfy: [ :aMessageNodeReference | (self firstUnseenIntervalFor: node ) = aMessageNodeReference completeSourceRange])
												ifTrue: [
													messageNodeIndexCollection add: messageNodeIndex.
													].
											intervalsToReject add: (self firstUnseenIntervalFor: node).
											messageNodeIndex := messageNodeIndex +1.
											] 
									     ] ).
		
		receiverVarName := 'receiver', receiverNumber asString.
		[self existsVarNamed: receiverVarName] whileTrue: [ 
			receiverNumber := receiverNumber +1.
			receiverVarName := 'receiver', receiverNumber asString. ].
		
		(ExtractToTemporary 
			named: receiverVarName
			at: ((compiledMethod methodNode completeSourceRangesOf: referenceToExtract messageNode receiver ifAbsent: []) select: [ :anInterval | referenceToExtract completeSourceRange includesAllOf: anInterval ]) anyOne
			from: compiledMethod) apply.
		messageNodeIndex := 0.
		receiverNumber := receiverNumber+1.
		compiledMethod := methodWhichReferencesToRefactor compiledMethod .
		collectionOfMessageNodesToChange := OrderedCollection new.
		compiledMethod methodNode accept: (ParseNodeEnumerator 
								ofBlock: [ :node | (node isMessageNode and: [ node selector equivalentTo: referenceToExtract messageNode selector]) ifTrue: [
											(messageNodeIndexCollection includes: messageNodeIndex) ifTrue: [
												newMessageNodeReference := MessageNodeReference 
													messageNode: node
													selector: compiledMethod selector
													class: compiledMethod methodClass 
													completeSourceRange: (compiledMethod methodNode completeSourceRangesOf: node ifAbsent: []) anyOne.
												
												collectionOfMessageNodesToChange add: newMessageNodeReference
												].
											messageNodeIndex := messageNodeIndex +1.
											] ] ).

		].
	! !

!XXXXMethodChanger methodsFor: 'as yet unclassified' stamp: 'mc 8/2/2023 00:09:45'!
existsVarNamed: tmpVarNamed 
	| counter |
	counter := TemporaryVariableDeclarationCounter for: tmpVarNamed.
	compiledMethod methodNode accept: counter.
	^counter count ~= 0
	! !

!XXXXMethodChanger methodsFor: 'as yet unclassified' stamp: 'mc 7/28/2023 01:26:16'!
firstUnseenIntervalFor: aNode 
	| completeRangesOfassigmentNode |
	completeRangesOfassigmentNode := self sourceRangesOf: aNode.
	self removeSeenRanges: completeRangesOfassigmentNode.
	^completeRangesOfassigmentNode detectMin: [ :anInterval | anInterval first]! !

!XXXXMethodChanger methodsFor: 'as yet unclassified' stamp: 'mc 6/11/2023 01:26:10'!
is: aMessageNodeReference childOfAnyOne: aCollectionOfMessageNodesToChange 
	^aCollectionOfMessageNodesToChange anySatisfy: [ :aPosibleFather |
			(aPosibleFather completeSourceRange includesAllOf: aMessageNodeReference completeSourceRange)
			and: (aPosibleFather ~= aMessageNodeReference) ]! !

!XXXXMethodChanger methodsFor: 'as yet unclassified' stamp: 'mc 7/28/2023 09:13:41'!
removeSeenRanges: rangesOfNode 
	^rangesOfNode removeAllSuchThat: [ :aSourceInterval | intervalsToReject anySatisfy: [ :aSourceIntervalToModify | aSourceIntervalToModify = aSourceInterval ] ]! !

!XXXXMethodChanger methodsFor: 'as yet unclassified' stamp: 'mc 6/8/2023 02:01:23'!
shouldAddParenthesis 
	compiledMethod methodNode accept: self.
	^shouldAddParenthesis! !

!XXXXMethodChanger methodsFor: 'as yet unclassified' stamp: 'mc 7/28/2023 02:00:17'!
value
	| codeForSenders sourceCode newCodeForMessage messageNodesFathers nodeReplacer methodWhichReferencesToRefactor nodeReplacerResult |
	
	compiledMethod := methodReference compiledMethod.
	"self halt."
	
	self applyExtractIfItIsNeeded.
	"---------------------------------------------------"
	messageNodesFathers := collectionOfMessageNodesToChange reject: [ :aMessageNodeReference | self is: aMessageNodeReference childOfAnyOne: collectionOfMessageNodesToChange].
	codeForSenders := messageNodesFathers collect: [ :aMessageNodeReference | 
		"self halt."
		referenceToReplace := aMessageNodeReference.
		nodeReplacer := XXXXMessageNodeReferenceChanger 
			newWith: methodReference 
			andWith: instanceVariable 
			andWith: collectionOfMessageNodesToChange
			andWith: xXXXReplacerResult
			andWith: aMessageNodeReference.
		nodeReplacerResult := nodeReplacer value.
		newCodeForMessage := nodeReplacerResult sourceCode.
		xXXXReplacerResult readAccessOnInstanceVariables addAll: nodeReplacerResult readAccessOnInstanceVariables.
		
		"newCodeForMessage := self newCodeForReferenceToReplace."
		self shouldAddParenthesis ifTrue: [ newCodeForMessage := '(', newCodeForMessage, ')'].
		aMessageNodeReference completeSourceRange  -> newCodeForMessage
		].

	sourceCode := methodReference compiledMethod sourceCode.
	methodReference actualClass compile: (sourceCode copyReplacing: codeForSenders).
	! !

!XXXXMethodChanger methodsFor: 'visiting' stamp: 'mc 7/28/2023 01:21:46'!
sourceRangesOf: aNode 
	^compiledMethod methodNode completeSourceRangesOf: aNode ifAbsent: []! !

!XXXXMethodChanger methodsFor: 'visiting' stamp: 'mc 6/16/2023 00:35:55'!
visitMessageNode: aMessageNode 
"self halt."
	shouldAddParenthesis := 
		(aMessageNode receiver equivalentTo: referenceToReplace messageNode)
		or: [aMessageNode argumentsInEvaluationOrder anySatisfy: [ :anArgument | anArgument equivalentTo: referenceToReplace messageNode] ].
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

!MoveMethodUsagesStepWindow methodsFor: 'button creation' stamp: 'mc 8/8/2023 00:26:51'!
createCancelButton

	^RefactoringApplier createCancelButtonOn: self! !

!MoveMethodUsagesStepWindow methodsFor: 'button creation' stamp: 'mc 8/8/2023 00:27:00'!
createJustRefactorButton

	^RefactoringApplier createJustRefactorButtonOn: self ! !

!MoveMethodUsagesStepWindow methodsFor: 'button creation' stamp: 'mc 8/8/2023 00:27:05'!
createRefactorButton

	^RefactoringApplier createRefactorButtonOn: self! !

!MoveMethodUsagesStepWindow methodsFor: 'button creation' stamp: 'mc 8/8/2023 00:27:11'!
createRemoveButton

	^RefactoringApplier createRemoveButtonOn: self! !

!MoveMethodUsagesStepWindow methodsFor: 'GUI building' stamp: 'mc 8/8/2023 02:00:02'!
addButton: button to: row color: buttonColor

	button color: buttonColor.
	row addMorph: button proportionalWidth: 10! !

!MoveMethodUsagesStepWindow methodsFor: 'GUI building' stamp: 'mc 8/8/2023 00:25:58'!
addButtonsTo: row color: buttonColor

	self addButton: self createRemoveButton to: row color: buttonColor.
	self addButton: self createRefactorButton to: row color: buttonColor.
	self addButton: self createJustRefactorButton to: row color: buttonColor.
	self addButton: self createCancelButton to: row color: buttonColor.! !

!MoveMethodUsagesStepWindow methodsFor: 'GUI building' stamp: 'mc 8/8/2023 01:58:12'!
buildLowerPanes

	| codeAndButtons  |

	codeAndButtons := LayoutMorph newColumn.
	codeAndButtons
		addMorph: self buttonsRow fixedHeight: self defaultButtonPaneHeight;
		addAdjusterMorph;
		addMorph: self buildMorphicCodePane proportionalHeight: 1.0.

	^codeAndButtons ! !

!MoveMethodUsagesStepWindow methodsFor: 'GUI building' stamp: 'mc 8/8/2023 01:58:37'!
buttonsRow

	| buttonColor row |

	buttonColor := self buttonColor.
	row := LayoutMorph newRow.
	row doAdoptWidgetsColor.
	row color: buttonColor.

	self addButtonsTo: row color: buttonColor.

	^row

	! !

!MoveMethodUsagesStepWindow methodsFor: 'actions' stamp: 'mc 8/9/2023 18:05:31'!
changeUsages

	applier messageSends: model messageList! !

!MoveMethodUsagesStepWindow methodsFor: 'actions' stamp: 'mc 8/9/2023 01:25:08'!
justRefactor

	applier doNotShowChanges.
	self refactor.! !

!MoveMethodUsagesStepWindow methodsFor: 'actions' stamp: 'mc 8/9/2023 18:04:58'!
refactor
	self changeUsages.
	applier wizardStepWindow: self.
	applier wizardEnded.! !

!MoveMethodUsagesStepWindow methodsFor: 'actions' stamp: 'mc 8/9/2023 17:29:21'!
remove

	model removeMessageFromBrowserKeepingLabel.! !

!MoveMethodUsagesStepWindow methodsFor: 'initialization' stamp: 'mc 8/9/2023 01:24:06'!
initializeFrom: anInlineMethodApplier

	applier := anInlineMethodApplier ! !

!MoveMethodUsagesStepWindow class methodsFor: 'instance creation' stamp: 'mc 8/9/2023 01:36:00'!
openFrom: anInlineMethodApplier

	| messageSendsSet window |
	messageSendsSet := MessageSet messageList: anInlineMethodApplier sendsToChange.
	messageSendsSet autoHighlightString: anInlineMethodApplier methodToMove allOccurrences: false.
	window := self open: messageSendsSet label: 'Message sends of #', anInlineMethodApplier methodToMove , ' to Refactor'.
	window initializeFrom: anInlineMethodApplier.
	^window.

	"messageSendsSet := InlineMethodMessageSendsSet applier: anInlineMethodApplier.

	messageSendsSet autoHighlightString: anInlineMethodApplier selectorToInline allOccurrences: false.

	window := self open: messageSendsSet label: 'Message sends of #', anInlineMethodApplier selectorToInline, ' to Refactor'.
	

	^window."! !

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

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/25/2023 22:22:23'!
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
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'senderToChange ^self iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/25/2023 22:25:13'!
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
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'senderToChange1 ^self iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange1).
	self assert: 'senderToChange2 ^self iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange2).	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/25/2023 22:25:31'!
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
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'senderToChange1 ^self iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange1).
	self assert: 'senderToChange2 ^self m1.' equals: (sourceClass sourceCodeAt: #senderToChange2).	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/25/2023 22:25:51'!
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
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'senderToChange self iv1 m1.^self iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/25/2023 22:26:08'!
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
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'senderToChange self m1.^self iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/25/2023 22:27:10'!
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
	
	self assert: 'm1: anInt1 other: anInt2 ^1+anInt1+anInt2.' equals: (targetClass sourceCodeAt: #m1:other:).
	self assert: 'senderToChange ^self iv1 m1: 1 other: 1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/25/2023 22:27:27'!
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
	
	self assert: 'm1: sourceObject ^sourceObject.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'senderToChange ^self iv1 m1: self.' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/26/2023 01:14:31'!
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
	
	self assert: 'm1: sourceObject ^sourceObject.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'senderToChange ^(self iv1 m1: self) + 1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/26/2023 01:14:06'!
test306MoveMethodShouldChangeSendersAndPassSelfAndAddOne
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^1 + (self m1).'.
	sourceClass compile: 'm1 ^self.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 21).
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'senderToChange ^1 + (self iv1 m1: self).' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/26/2023 01:13:36'!
test307MoveMethodShouldChangeSendersAndPassSelfAndMoreParameters
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^self m1: 1.'.
	sourceClass compile: 'm1: anObject ^self+anObject.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 21).
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anObject sourceObject: sourceObject ^sourceObject+anObject.' equals: (targetClass sourceCodeAt: #m1:sourceObject:).
	self assert: 'senderToChange ^self iv1 m1: 1 sourceObject: self.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/26/2023 01:13:20'!
test308MoveMethodShouldChangeSendersAndRecursions
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^self m1: (self m1: 1).'.
	sourceClass compile: 'm1: anInt ^1+anInt.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 22).
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 32).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt ^1+anInt.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'senderToChange ^self iv1 m1: (self iv1 m1: 1).' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/26/2023 01:12:47'!
test309MoveMethodShouldChangeSendersAndRecursions
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^self m1: (self m1: (self m1: 1)).'.
	sourceClass compile: 'm1: anInt ^1+anInt.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 22).
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 32).
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 42).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt ^1+anInt.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'senderToChange ^self iv1 m1: (self iv1 m1: (self iv1 m1: 1)).' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/13/2023 03:19:05'!
test310MoveMethodShouldChangeSendersWithTmpVarAsReceiver
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange |tmp| ^tmp m1.'.
	sourceClass compile: 'm1 ^1.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 27).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange |tmp| ^tmp iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/13/2023 03:20:29'!
test311MoveMethodShouldChangeSendersWithTmpVarAsReceiver
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange |tmp| ^tmp m1: 1.'.
	sourceClass compile: 'm1: anInt ^1+anInt.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 27).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt ^1+anInt.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange |tmp| ^tmp iv1 m1: 1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/13/2023 19:34:36'!
test312MoveMethodShouldChangeSendersWithTmpVarAsReceiver
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange |tmp| ^tmp m1.'.
	sourceClass compile: 'm1 ^self.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 27).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange |tmp| ^tmp iv1 m1: tmp.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/27/2023 01:37:05'!
test313MoveMethodShouldChangeSendersWithMessageNodeUnaryAsReceiver
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^self m2 m1.'.
	sourceClass compile: 'm1 ^1.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 25).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange ^self m2 iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/27/2023 01:23:01'!
test314MoveMethodShouldChangeSendersWithMessageNodeBinaryAsReceiver
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^(self + 1) m1.'.
	sourceClass compile: 'm1 ^1.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 28).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange ^(self + 1) iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/24/2023 21:56:11'!
test314MoveMethodShouldChangeSendersWithMessageNodeKeywordsAsReceiver
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^(self m2: 1) m1.'.
	sourceClass compile: 'm1 ^1.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 30).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange ^(self m2: 1) iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/24/2023 22:41:50'!
test315MoveMethodShouldChangeSendersWithLiteralNodeAsReceiver
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^1 m1.'.
	sourceClass compile: 'm1 ^1.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 19).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange ^1 iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/25/2023 15:58:22'!
test316MoveMethodShouldChangeSendersWithClassVariableAsReceiver
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass  subclassOf: Object instanceVariableNames: 'iv1' classVariableNames: 'Icv1' poolDictionaries: '' category: self class classCategoryOfTestData.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^Icv1 m1.'.
	sourceClass compile: 'm1 ^1.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 22).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange ^Icv1 iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/25/2023 18:56:44'!
test317MoveMethodShouldChangeSendersWithInstanceVariableNodeAsReceiver
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^iv2 m1.'.
	sourceClass compile: 'm1 ^1.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 21).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1 ^1.' equals: (targetClass sourceCodeAt: #m1).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange ^iv2 iv1 m1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 7/20/2023 00:17:27'!
test318MoveMethodShouldChangeSendersWithExtractVariable
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^self m2 m1.'.
	sourceClass compile: 'm1 ^iv2.'.
	sourceClass compile: 'm2 Transcript show: ', (Character asciiValue: 39) asString, 'Hello World!!', (Character asciiValue: 39) asString.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 25).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv2.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange | receiver1 |
	receiver1 := self m2.
	^receiver1 iv1 m1: receiver1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 7/20/2023 00:17:46'!
test318MoveMethodShouldChangeSendersWithExtractVariable2
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^self m2 m1: 1.'.
	sourceClass compile: 'm1: anInt ^iv2 + anInt.'.
	sourceClass compile: 'm2 Transcript show: ', (Character asciiValue: 39) asString, 'Hello World!!', (Character asciiValue: 39) asString.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 25).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt sourceObject: sourceObject ^sourceObject iv2 + anInt.' equals: (targetClass sourceCodeAt: #m1:sourceObject:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange | receiver1 |
	receiver1 := self m2.
	^receiver1 iv1 m1: 1 sourceObject: receiver1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 7/20/2023 00:18:17'!
test318MoveMethodShouldChangeSendersWithExtractVariable3
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange
	self m3 m1: 1.
	^self m2 m1: 1.
	'.
	sourceClass compile: 'm1: anInt ^iv2 + anInt.'.
	sourceClass compile: 'm2 Transcript show: ', (Character asciiValue: 39) asString, 'Hello World!!', (Character asciiValue: 39) asString.
	sourceClass compile: 'm3 ^self.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 24).
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 41).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt sourceObject: sourceObject ^sourceObject iv2 + anInt.' equals: (targetClass sourceCodeAt: #m1:sourceObject:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange
	| receiver1 receiver2 |
	receiver1 := self m3.
	receiver1 iv1 m1: 1 sourceObject: receiver1.
	receiver2 := self m2.
	^receiver2 iv1 m1: 1 sourceObject: receiver2.
	' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 7/27/2023 00:36:06'!
test318MoveMethodShouldChangeSendersWithExtractVariable_problemsWithExtract
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^((self m2) + (self m3)) m1.'.
	sourceClass compile: 'm1 ^iv2.'.
	sourceClass compile: 'm2 Transcript show: ', (Character asciiValue: 39) asString, 'Hello World!!', (Character asciiValue: 39) asString.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 41).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject iv2.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange | receiver1 |
	receiver1 := (self m2) + (self m3).
	^receiver1 iv1 m1: receiver1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 7/27/2023 01:17:13'!
test319MoveMethodShouldChangeSendersWithExtractVariable2_problemsWithExtract
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange 
	self m2 m1: 1.
	^self m2 m1: 1.'.
	sourceClass compile: 'm1: anInt ^iv2 + anInt.'.
	sourceClass compile: 'm2 Transcript show: ', (Character asciiValue: 39) asString, 'Hello World!!', (Character asciiValue: 39) asString.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 26).
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 43).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt sourceObject: sourceObject ^sourceObject iv2 + anInt.' equals: (targetClass sourceCodeAt: #m1:sourceObject:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange 
	| receiver1 receiver2 |
	receiver1 := self m2.
	receiver1 iv1 m1: 1 sourceObject: receiver1.
	receiver2 := self m2.
	^receiver2 iv1 m1: 1 sourceObject: receiver2.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 7/25/2023 01:44:35'!
test320MoveMethodShouldChangeSendersWithExtractVariable4
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange
	self m3 m1: 1.
	^self m2 m1: 1.
	'.
	sourceClass compile: 'm1: anInt ^iv2 + anInt.'.
	sourceClass compile: 'm2 Transcript show: ', (Character asciiValue: 39) asString, 'Hello World!!', (Character asciiValue: 39) asString.
	sourceClass compile: 'm3 ^self.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 24).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt sourceObject: sourceObject ^sourceObject iv2 + anInt.' equals: (targetClass sourceCodeAt: #m1:sourceObject:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange
	| receiver1 |
	receiver1 := self m3.
	receiver1 iv1 m1: 1 sourceObject: receiver1.
	^self m2 m1: 1.
	' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 7/28/2023 01:49:38'!
test321MoveMethodShouldChangeSendersWithExtractVariable2_problemsWithExtract
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange 
	self m2 m1: 1.
	^self m2 m1: 1.'.
	sourceClass compile: 'm1: anInt ^iv2 + anInt.'.
	sourceClass compile: 'm2 Transcript show: ', (Character asciiValue: 39) asString, 'Hello World!!', (Character asciiValue: 39) asString.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 43).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt sourceObject: sourceObject ^sourceObject iv2 + anInt.' equals: (targetClass sourceCodeAt: #m1:sourceObject:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange 
	| receiver1 |
	self m2 m1: 1.
	receiver1 := self m2.
	^receiver1 iv1 m1: 1 sourceObject: receiver1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 7/28/2023 01:54:42'!
test322MoveMethodShouldChangeSendersWithMessageNodeKeywordsAsReceiver2
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange ^self m1 m1.'.
	sourceClass compile: 'm1 ^self.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 22).
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 25).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject.' equals: (targetClass sourceCodeAt: #m1:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange | receiver1 |
	receiver1 := self iv1 m1: self.
	^receiver1 iv1 m1: receiver1.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/2/2023 00:11:49'!
test323MoveMethodShouldChangeSendersWithExtractVariableIfReceiverVarExistsItShouldDoesntMatter
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange
	| receiver1 |
	receiver1 := 1.
	^self m2 m1: 1.'.
	sourceClass compile: 'm1: anInt ^iv2 + anInt.'.
	sourceClass compile: 'm2 Transcript show: ', (Character asciiValue: 39) asString, 'Hello World!!', (Character asciiValue: 39) asString.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 58).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt sourceObject: sourceObject ^sourceObject iv2 + anInt.' equals: (targetClass sourceCodeAt: #m1:sourceObject:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange
	| receiver1 receiver2 |
	receiver1 := 1.
	receiver2 := self m2.
	^receiver2 iv1 m1: 1 sourceObject: receiver2.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/2/2023 00:14:59'!
test324MoveMethodShouldChangeSendersWithExtractVariableIfReceiverVarExistsItShouldDoesntMatter
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange
	| receiver1 receiver2 |
	receiver1 := 1.
	receiver2 := 1.
	^self m2 m1: 1.'.
	sourceClass compile: 'm1: anInt ^iv2 + anInt.'.
	sourceClass compile: 'm2 Transcript show: ', (Character asciiValue: 39) asString, 'Hello World!!', (Character asciiValue: 39) asString.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 85).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt sourceObject: sourceObject ^sourceObject iv2 + anInt.' equals: (targetClass sourceCodeAt: #m1:sourceObject:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange
	| receiver1 receiver2 receiver3 |
	receiver1 := 1.
	receiver2 := 1.
	receiver3 := self m2.
	^receiver3 iv1 m1: 1 sourceObject: receiver3.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/3/2023 23:54:42'!
test325MoveMethodShouldChangeSendersWithSemicolon
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange
	^self m2; m1: 1.'.
	sourceClass compile: 'm1: anInt ^iv2 + anInt.'.
	sourceClass compile: 'm2 Transcript show: ', (Character asciiValue: 39) asString, 'Hello World!!', (Character asciiValue: 39) asString.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 27).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt sourceObject: sourceObject ^sourceObject iv2 + anInt.' equals: (targetClass sourceCodeAt: #m1:sourceObject:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange
	^self m2; m1: 1 sourceObject: self.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 8/4/2023 09:58:22'!
test326MoveMethodShouldChangeSendersWithSemicolon
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1 iv2'.
	targetClass := self createClassNamed: #TargetClass.
	sourceClass compile: 'senderToChange
	^self m2; m1: 1; m1: 1.'.
	sourceClass compile: 'm1: anInt ^iv2 + anInt.'.
	sourceClass compile: 'm2 Transcript show: ', (Character asciiValue: 39) asString, 'Hello World!!', (Character asciiValue: 39) asString.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 27).
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 34).
	
	refactoring := MoveMethodRefactoring methodNamed: #m1: from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: anInt sourceObject: sourceObject ^sourceObject iv2 + anInt.' equals: (targetClass sourceCodeAt: #m1:sourceObject:).
	self assert: 'iv1', String newLineString, String tab, '^iv1.' equals: (sourceClass sourceCodeAt: #iv1).
	self assert: 'senderToChange
	^self m2; m1: 1 sourceObject: self; m1: 1 sourceObject: self.' equals: (sourceClass sourceCodeAt: #senderToChange).
	
	! !

!MoveMethodRefactoringTest methodsFor: 'as yet unclassified' stamp: 'mc 6/8/2023 21:58:50'!
wip_test400MoveMethodShouldChangeSendersOnDiferentClasses
	
	| sourceClass targetClass refactoring sendersToChange |
	sourceClass := self createClassNamed: #SourceClass instanceVariableNames: 'iv1'.
	targetClass := self createClassNamed: #TargetClass.
	
	sourceClass compile: 'senderToChange ^1 + (self m1).'.
	sourceClass compile: 'm1 ^self.'.
	sendersToChange := OrderedCollection new.
	sendersToChange add: (self messageNodeReferenceOf: sourceClass inMethod: #senderToChange atIndex: 21).
	
	
	refactoring := MoveMethodRefactoring methodNamed: #m1 from: sourceClass to: targetClass accessingThrough: 'iv1' changingSenders: sendersToChange.
	refactoring apply.
	
	self assert: 'm1: sourceObject ^sourceObject.' equals: (targetClass >> #m1:) sourceCode.
	self assert: 'senderToChange ^1 + (iv1 m1: self).' equals: (sourceClass sourceCodeAt: #senderToChange).
	! !

!MoveMethodRefactoring methodsFor: 'initialization' stamp: 'mc 5/30/2023 02:52:27'!
initializeMethodNamed: aMethodName from: aSourceClass to: aTargetClass accessingThrough: anInstanceVariable  changingSenders: aCollectionOfSendersToChange
	methodName := aMethodName.
	sourceClass := aSourceClass.
	targetClass := aTargetClass.
	instanceVariable := anInstanceVariable.
	collectionOfSendersToChange := aCollectionOfSendersToChange
	! !

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 7/16/2023 02:29:45'!
apply
	| compiledMethodToMove xxxxreplacerResult |
	compiledMethodToMove := sourceClass methodDict at: methodName.
	xxxxreplacerResult := self replaceDependenciesFromSource: compiledMethodToMove.
	
	self replaceSendersWithResult: xxxxreplacerResult.
	
	targetClass compile: xxxxreplacerResult sourceCode.
	self createGetterIfNotExistsFor: instanceVariable.
	xxxxreplacerResult readAccessOnInstanceVariables do: [ :anInstanceVariable | self createGetterIfNotExistsFor: anInstanceVariable ].
	xxxxreplacerResult writeAccessOnInstanceVariables do: [ :anInstanceVariable | self createSetterIfNotExistsFor: anInstanceVariable ].
	xxxxreplacerResult readAccessOnClassVariables do: [ :aClassVariable | self createClassVariableGetterIfNotExistsFor: aClassVariable on: sourceClass ].
	xxxxreplacerResult writeAccessOnClassVariables do: [ :aClassVariable | self createClassVariableSetterIfNotExistsFor: aClassVariable on: sourceClass].
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

!MoveMethodRefactoring methodsFor: 'applying' stamp: 'mc 6/3/2023 00:28:23'!
replaceDependenciesFromSource: compiledMethod
	| replacer |
	replacer := XXXXReplacerForNode for: compiledMethod.
	^replacer apply.! !

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

!MoveMethodApplier methodsFor: 'initialization' stamp: 'mc 8/9/2023 02:08:55'!
initializeInitializeOn: aModel forMethod: aMethodReference 
	model := aModel.
	methodReference := aMethodReference.
	shouldShowChanges := true.! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 18:15:09'!
askForMessageSends
	self 
		calculateImplementorsAndMessageSends;
		openMessageSendsSelectionWindow.! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 17:52:04'!
askScope

	| scopeMenu |

	scopeMenu := PopUpMenu labelArray: self scopeOptionLabels.
	scopeChoice := scopeMenu startUpWithCaption: 'Select Refactoring Scope'.
	scopeChoice = 0 ifTrue: [ self endRequest ].! !

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

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/8/2023 01:11:06'!
openMessageSendsSelectionWindow
	| messageSendsSet window |
	"messageSendsSet := MessageSet messageList: sendsToChange.
	messageSendsSet autoHighlightString: methodToMove allOccurrences: false.
	window := MoveMethodUsagesStepWindow open: messageSendsSet label: 'Message sends of #', methodToMove , ' to Refactor'"
	^MoveMethodUsagesStepWindow openFrom: self! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/6/2023 17:24:11'!
requestRefactoringParameters
	self 
		chooseMethodToMove;
		selectClassWichMethodIsDefined;
		chooseInstanceVariableToAccessThrough;
		askTargetClassName;
		askScope;
		askForMessageSends
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

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/9/2023 15:29:20'!
showChanges

	self showChangesInMessageSetWindow! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/9/2023 17:11:38'!
showChangesInMessageSetWindow
	"self halt."
	self messageSetWindowClass openMessageList: (sendsToChange collect: [:aMethodNodeReference | aMethodNodeReference methodReference]) label: 'Changed methods' ! !

!MoveMethodApplier methodsFor: 'evaluating' stamp: 'mc 8/9/2023 15:14:26'!
value

	requestExitBlock := [ ^self ].
	
	self 
		requestRefactoringParametersHandlingRefactoringExceptions.! !

!MoveMethodApplier methodsFor: 'as yet unclassified' stamp: 'mc 8/9/2023 02:24:16'!
closeBrowser

	wizardStepWindow delete.! !

!MoveMethodApplier methodsFor: 'as yet unclassified' stamp: 'mc 8/9/2023 02:57:19'!
createAndApplyRefactoring
	self 
		createRefactoringHandlingRefactoringExceptions;
		applyRefactoring.
		
	shouldShowChanges ifTrue: [ self showChanges ]! !

!MoveMethodApplier methodsFor: 'as yet unclassified' stamp: 'mc 8/9/2023 03:04:39'!
createRefactoring
	^MoveMethodRefactoring 
		methodNamed: methodToMove 
		from: sourceClass 
		to: targetClass 
		accessingThrough: accessingThroughinstanceVariableName 
		changingSenders: sendsToChange. ! !

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
