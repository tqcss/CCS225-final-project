// =================================
// Title....: 2D Interactive Canvas
// Author...: Ken Meiro C. Villareal
// Date.....: November 30, 2025
// =================================


// ---------------
// GLOBAL VARIBLES
// ---------------

@VAR_user_input
M=0


// ---------
// KEY ENUMS
// ---------

// KEY_c = 67
@67
D=A
@KEY_c
M=D

// KEY_d = 68
@68
D=A
@KEY_d
M=D

// KEY_e = 69
@69
D=A
@KEY_e
M=D

// KEY_f = 70
@70
D=A
@KEY_f
M=D

// KEY_q = 81
@81
D=A
@KEY_q
M=D

// KEY_r = 82
@82
D=A
@KEY_r
M=D

// KEY_s = 83
@83
D=A
@KEY_s
M=D


// FUNCTIONS
(FCALL_get_user_input)
    // compare the value of VAR_user_input to the current keyboard input
    @VAR_user_input
    D=M
    @KBD
    D=D+M

    // if both @VAR_user_input and @KBD reads no input from the user,
    // loop through the function again
    @FCALL_get_user_input
    D;JEQ

    // else, set VAR_user_input to the current keyboard input
    @KBD
    D=M
    @VAR_user_input
    M=D
@FEND_get_user_input
0;JMP


// PROGRAM_LOOP
(main_loop)

    @FCALL_get_user_input
    0;JMP
    (FEND_get_user_input)

    // if the user inputs `q`, end the program
    @VAR_user_input
    D=M
    @KEY_q
    D=D-M
    @HALT
    D;JEQ
    
@main_loop
0;JMP

// kill program; stop cpu from executing other instructions
(HALT)
@HALT
0;JMP
