// =================================
// Title....: 2D Interactive Canvas
// Author...: Ken Meiro C. Villareal
// Date.....: November 30, 2025
// =================================

@SCREEN
D=A
@addr
M=D          // addr = start of screen

@32
D=A
@count
M=D          // 32 words = 512 pixels (full row)

(LOOP)
    @count
    D=M
    @END
    D;JEQ     // if count == 0 → END

    // draw one 16-pixel block
    @addr
    A=M
    M=-1      // sets 16 pixels to black (1111111111111111)

    // move to next word
    @addr
    M=M+1

    // decrement counter
    @count
    M=M-1

    @LOOP
    0;JMP

(END)
    @END
    0;JMP