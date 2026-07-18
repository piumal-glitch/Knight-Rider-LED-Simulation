; TODO INSERT CONFIG CODE HERE USING CONFIG BITS GENERATOR

RES_VECT  CODE    0x0000            ; processor reset vector
    GOTO    START                   ; go to beginning of program

; TODO ADD INTERRUPTS HERE IF USED

MAIN_PROG CODE                      ; let linker place main program

START
;                  Set up the Constants 
;===================================
    
STATUS		 equ 03h
TRISB		 equ 86h
PORTB		 equ 06h
CounterL		 equ 0Dh
CounterH		 equ 0Eh

;-----------------------------------
    ;*****Set up the port*****
;===================================
bsf STATUS, 5
clrf TRISB
bcf STATUS, 5
clrf PORTB    
    

    Start bsf PORTB,0
    call Delay
    
    bsf PORTB,1
    call Delay
    
     bsf PORTB,2
    call Delay
    
     bsf PORTB,3
    call Delay
    
     bsf PORTB,4
    call Delay
    
     bsf PORTB,5
    call Delay
    
     bsf PORTB,6
    call Delay
    
     bsf PORTB,7
     call Delay
     
      bcf PORTB,0
    call Delay
    
     bcf PORTB,1
    call Delay
    
     bcf PORTB,2
    call Delay
    
     bcf PORTB,3
    call Delay
    
     bcf PORTB,4
    call Delay
    
     bcf PORTB,5
    call Delay
    
     bcf PORTB,6
    call Delay
    
     bcf PORTB,7
    call Delay
    
   bsf PORTB,7
    call Delay
    
    bsf PORTB,6
    call Delay
    
     bsf PORTB,5
    call Delay
    
     bsf PORTB,4
    call Delay
    
     bsf PORTB,3
    call Delay
    
     bsf PORTB,2
    call Delay
    
     bsf PORTB,1
    call Delay
    
     bsf PORTB,0
     call Delay
     
      bcf PORTB,7
    call Delay
    
     bcf PORTB,6
    call Delay
    
     bcf PORTB,5
    call Delay
    
     bcf PORTB,4
    call Delay
    
     bcf PORTB,3
    call Delay
    
     bcf PORTB,2
    call Delay
    
     bcf PORTB,1
    call Delay
    
     bcf PORTB,0
    call Delay
    
   
 goto Start  
    
;*****Delay loop1*****
;===================================
Delay decfsz CounterL,1
goto Delay
decfsz CounterH,1
goto Delay
RETURN

   

    END