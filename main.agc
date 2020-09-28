
// Project: RockPaperScissors 
// Created: 2020-09-27
// Author: Michael Tang

// show all errors
SetErrorMode(2)

// set window properties
SetWindowTitle( "Rock Paper Scissors" )
SetWindowSize( 1024, 768, 0 )
SetWindowAllowResize( 1 ) // allow the user to resize the window

// set display properties
SetVirtualResolution( 1024, 768 ) // doesn't have to match the window
SetOrientationAllowed( 1, 1, 1, 1 ) // allow both portrait and landscape on mobile devices
SetSyncRate( 30, 0 ) // 30fps instead of 60 to save battery
SetScissor( 0,0,0,0 ) // use the maximum available screen space, no black borders
UseNewDefaultFonts( 1 ) // since version 2.0.22 we can use nicer default fonts

// --- CODE STARTS HERE --- //

do
	// Inputs //
	do
		// Title //
		
		Print( "Welcome to Rock Paper Scissors" )
		Print( "Press '1' for Rock, '2' for Paper, and '3' for Scissors")
		
		if GetRawKeyPressed(49) = 1 // If '1' on the keyboard is pressed.
			player = 1
			Print ('You Chose Rock!')
			exit // breaks out of current loop.
		else
			if GetRawKeyPressed(50) = 1 // If '2' is pressed
				player = 2
				Print('You Chose Paper!')
				exit
			else
				if GetRawKeyPressed(51) =  1 // If '3' is pressed
					player = 3
					Print('You Chose Scissors!')
					exit
				endif
			endif
		endif
		//Print(player)	
		
		Sync()
	loop // For input
	// Processing
	// Computer chooses 
	computer = Random(1,3) // Chooses 1, 2, or 3
	if computer = 1
		Print("Computer chose Rock")
	else
		if computer = 2 
			Print("Computer chose Paper")
		else
			if computer = 3
				Print("Computer chose Scissors")
			endif
		endif
	endif
	
	// Who Wins?
	
	result = player - computer // calculation
	
	// Outputs
	if result = 0
		Print ("You tied!")
	else
		if result = -2
			Print("You Won!")
		else
			if result = 1
				Print("You Won!")
			else
				 Print("You Lose!")
			 endif
		 endif
	 endif
	 // Play Again?
	 Print ('Want to play again? (y) yes or (n) no')
	 	 
	Sync()
	
	do
		if GetRawKeyPressed(89) = 1 // 'y' key pressed
			ClearScreen() //erases the screen
			exit
		else
			if GetRawKeyPressed(78) = 1 // 'n' key pressed
				end
			endif
		endif
	
	
	
	loop
loop
