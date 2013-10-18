'From VisualWorks® Personal Use Edition, 7.8.1 of 4 janvier 2012 on 18 octobre 2013 at 15:54:42'!


!MuxReader class methodsFor: 'testing'!

testScan

	| connect line info ugm i delay finished |
	self allInstances do: 
			[:mr |
			mr streamIn close.
			mr streamOut close].
	connect := self connect.
	ugm := UIGoogleMap new.
	ugm open.
	(Delay forSeconds: 60) wait.
	Transcript
		cr;
		show: 'starting ...';
		cr.
	i := 0.
	delay := 0.
	finished := false.
	[6 * 60 timesRepeat: 
			[(Delay forSeconds: 1) wait.
			delay := delay + 1]] fork.
	connect
		process: 
			[[finished or: [connect streamIn atEnd]] whileFalse: 
					[line := connect streamIn upTo: Character cr.
					info := connect scanLine: line.
					finished := info size = 1.
					finished
						ifFalse: 
							[i := i + 1.
							Transcript
								show: info printString;
								cr.
							[ugm changeMousePositionFromName: (info at: 2)] value.
							Processor yield.
							(Delay forMilliseconds: 1000) wait]].
			connect streamIn close.
			connect streamOut close]
					fork.
	^connect! !