'From Cuis 4.0 of 21 April 2012 [latest update: #1260] on 22 April 2012 at 8:41:41 pm'!
'Description Please enter a description for this package '!
!classDefinition: #G9Logger category: #SimpleLogger!
Object subclass: #G9Logger
	instanceVariableNames: 'logFile'
	classVariableNames: ''
	poolDictionaries: ''
	category: 'SimpleLogger'!
!classDefinition: 'G9Logger class' category: #SimpleLogger!
G9Logger class
	instanceVariableNames: ''!


!G9Logger commentStamp: 'gsa 4/22/2012 20:40' prior: 0!
A G9Logger is a simple logger for Pharo/Squeak and Cuis.

***This is the Cuis Version***

Developed by Germán S. Arduino on July 2010.
Adapted to Cuis on March 2012.

This product is MIT licensed.

Instance Variables
	logFile:		<Object>

logFile
	- xxxxx
!

!G9Logger methodsFor: 'actions' stamp: 'gsa 4/22/2012 20:37'!
closeLogFile 
	
	logFile nextPutAll: '------------------------------------------------------------------------------',String crlf.
	logFile nextPutAll: 'G9Logger ended at: ', DateAndTime now date asString, '-', DateAndTime now time asString, String crlf.
	logFile nextPutAll: '------------------------------------------------------------------------------',String crlf.
	logFile nextPutAll: '-------------------G9Logger is a product from Arduino Software--------------------',String crlf.
	logFile nextPutAll: '----------Web: http://www.arduinosoftware.com---Mail: info@arsol.net----------',String crlf.

	logFile close. 
	! !

!G9Logger methodsFor: 'actions' stamp: 'gsa 4/22/2012 20:38'!
createLogFile

	logFile := FileDirectory default newFileNamed:   DateAndTime now date asString, '-',DateAndTime now time asString, '.txt'.
	
	logFile nextPutAll: '------------------------------------------------------------------------------',String crlf.
	logFile nextPutAll: 'G9Logger started at:  ',DateAndTime now date asString, '-',DateAndTime now time asString, String crlf.
	logFile nextPutAll: '------------------------------------------------------------------------------',String crlf.

! !

!G9Logger methodsFor: 'initialize-release' stamp: 'gsa 4/22/2012 20:39'!
initialize
	self createLogFile.! !

!G9Logger methodsFor: 'actions' stamp: 'gsa 4/22/2012 20:38'!
log: anObject
	
	logFile nextPutAll: anObject, String crlf.
! !

!G9Logger methodsFor: 'accessing' stamp: 'gsa 4/22/2012 20:39'!
logFile
	^ logFile! !

!G9Logger methodsFor: 'accessing' stamp: 'gsa 4/22/2012 20:39'!
logFile: anObject
	logFile := anObject! !

!G9Logger methodsFor: 'actions' stamp: 'gsa 4/22/2012 20:38'!
logSeparator
	
	logFile nextPutAll: '------------------------------------------------------------------------------',String crlf.
	! !

!G9Logger methodsFor: 'actions' stamp: 'gsa 4/22/2012 20:39'!
logWithTimeStamp: anObject
	
	logFile nextPutAll: anObject,' ',DateAndTime now date asString, '-',DateAndTime now time asString, String crlf.
! !
