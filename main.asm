*= $4000

;Usar SID para geração de valores randomicos
;Use SID for random number generation


startRadom
        LDA #$FF 
        STA $D40E
        STA $D40F
        LDA #$80
        STA $D412
        LDX #00
        STX $C000

main
        LDX $C000
        LDA $D41B
        CPX #255
        BEQ reset2
        CMP #127
        BCC menor
        JMP maior

menor
        LDA #205
        STA $0400,x
        INC $C000
        JMP main
maior
        LDA #206
        STA $0400,x
        INC $C000
        JMP main

;;Proxima Parte da tela 2

reset2
        LDX #0
        STX $C000


main2
        LDX $C000
        LDA $D41B
        CPX #255
        BEQ reset3
        CMP #127
        BCC menor2
        JMP maior2

menor2
        LDA #205
        STA $04FF,x
        INC $C000
        JMP main2
maior2
        LDA #206
        STA $04FF,x
        INC $C000
        JMP main2


;;Proxima Parte da tela 3

reset3
        LDX #0
        STx $C000


main3
        LDX $C000
        LDA $D41B
        CPX #255
        BEQ reset4
        CMP #127
        BCC menor3
        JMP maior3

menor3
        LDA #205
        STA $05FE,x
        INC $C000
        JMP main3
maior3
        LDA #206
        STA $05FE,x
        INC $C000
        JMP main3

;;Proxima Parte da tela 4

reset4
        LDX #0
        STx $C000


main4
        LDX $C000
        LDA $D41B
        CPX #255
        BEQ end
        CMP #127
        BCC menor4
        JMP maior4

menor4
        LDA #205
        STA $06FD,x
        INC $C000
        JMP main4
maior4
        LDA #206
        STA $06FD,x
        INC $C000
        JMP main4

;;Loop end

end
        JMP end



