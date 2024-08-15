data segment
    ;welcome page                                                           
    
   m1 db  13,10 ,"             ******************************************$" 
   m2 db   13,10,"             **                Welcome               **$" 
   m3 db   13,10,"             **                   To                 **$"
   m4 db   13,10,"             **              Online Book             **$"
   m5 db   13,10,"             **                  Shop                **$"
   m6 db   13,10,"             ******************************************$"

   ;choose
   m7 db   13,10,"             Books List -----$"
   m8 db   13,10,"             Enter Your Choice:$"
   m19 db   13,10,"                   Enter 1 to Display Books Listt:$"
   m34 db   13,10,"                       Pick your Book:$"
   m35 db   13,10,"                       Enter Quantity :$"
   m36 db   13,10,"                Invalid Input !! Return the Program$"
   m37 db   13,10,"                        Total Price:$"
   m38 db   13,10,"            1.Books List :$"
   m39 db   13,10,"            2.Exit:$"

    ;Book list
   m9 db    13,10,"                  1. Programming Book$"
   m10 db   13,10,"                    2. English Books$"
   m11 db   13,10,"                      3.Islamic Books$" 
   ;Programming book list
   m12 db   13,10,"             **************  Programming Book Lists *******************$" 
   m13 db   13,10,"                 1.Clean Code by Robert C. Martin            50/-$" 
   m14 db   13,10,"                 2.The Pragmatic Programmer by Andrew Hunt   50/-$"  
   m15 db   13,10,"                 3.Effective Java by Joshua Bloch            50/-$"  
   m16 db   13,10,"                 4.Programming Pearls by Jon Bentley         50/-$"
   m17 db   13,10,"                 5.Learning Python by Mark Lutz              50/-$"
   m18 db   13,10,"                 6.Python Crash Course by Eric Matthes       50/-$"
   
     ;english books
                                         
   m20 db   13,10,"             *****************  English Books Lists *******************$" 
   m21 db   13,10,"                 1.1984 by George Orwell                       100/-$" 
   m22 db   13,10,"                 2.To Kill a Mockingbird by Harper Lee         100/-$"  
   m23 db   13,10,"                 3.The Great Gatsby by F. Scott Fitzgerald     100/-$"  
   m24 db   13,10,"                 4.Pride and Prejudice by Jane Austen          100/-$"
   m25 db   13,10,"                 5.The Catcher in the Rye by J.D. Salinger     100/-$"
   m26 db   13,10,"                 6.Lord of the Flies by William Golding        100/-$" 
    ; islamic book list
                                            
   m27 db   13,10,"             *****************  Islamic Books Lists *******************$" 
   m28 db   13,10,"                 1.Muhammad by martin lings                      200/-$" 
   m29 db   13,10,"                 2.The quranby m. a. s. abdel haleem             200/-$"  
   m30 db   13,10,"                 3.The road to mecca by muhammad asad            200/-$"  
   m31 db   13,10,"                 4.The fundamentals of tawheed by abu ameenah    200/-$"
   m32 db   13,10,"                 5.The sealed nectar by safi-ur-rahman           200/-$"
   m33 db   13,10,"                 6.Purification of the heart by hamza yusuf      200/-$"                                   



ends                                       
                                                 
                                                    
code segment
    main proc
        mov ax, @data       
        mov ds, ax         
                   ;welcome page display
              lea dx,m1
              mov ah ,09h
              int 21h
                     
                     lea dx,m2
              mov ah ,09h
              int 21h  
              lea dx,m3
              mov ah ,09h
              int 21h
              lea dx,m4
              mov ah ,09h
              int 21h
              lea dx,m5
              mov ah ,09h
              int 21h
              lea dx,m6
              mov ah ,09h
              int 21h 
               ;new line
               mov ah,02h
               mov dl,10
               mov dl,13
               int 21h
               
               mov ah,02h
               mov dl,10 
               int 21h
               mov dl,13
               int 21h
               ;take input to start
               mov ah,09h
               lea dx,m19
               int 21h
               mov ah ,01h
               int 21h
               mov bh,al
               sub bh,48
               
               cmp bh,1
               je BookList
               jmp Invalid
               
               BookList:
               ;new line
               
                    mov ah,02h
               mov dl,10
               int 21h
               mov dl,13
               int 21h
               
               mov ah,02h
               mov dl,10
               int 21h
               mov dl,13
               int 21h   
               
               mov ah,09h
               lea dx,m7
               int 21h
                
                lea dx,m9
               int 21h 
               
               lea dx,m10
               int 21h 
               
               lea dx,m11
               int 21h
               
                         
               ;list choose
               lea dx, m8
               int 21h
               
               mov ah,01h
               int 21h
               mov bh,al
               sub bh,48
               
               cmp bh,1
               je Programmingbook
               cmp bh,2
               
                je Englishbook
                cmp bh,3
                je Islamicbook
                
                jmp Invalid
                
                
                ;programmong book list
                
                Programmingbook:
                 ;new line
                 
                    mov ah,02h
               mov dl,10 
               int 21h 
               mov dl,13
               int 21h
               
               mov ah,02h
               mov dl,10 
               int 21h
               mov dl,13
               int 21h
               ;list start 
               
               
               
                        
                  mov ah,09h
               lea dx,m12
               
               int 21h 
                    
                     mov ah,02h
               mov dl,10 
               int 21h
               mov dl,13
               int 21h   
               mov ah,09h
               lea dx,m13
               int 21h
               
                 lea dx,m14
               int 21h
               
               lea dx,m15
               int 21h
               
               lea dx,m16
               int 21h
               
               lea dx,m17
               int 21h
               
               lea dx,m18
               int 21h
              
              
              
              
             ;condition checking
             lea dx,m34
             int 21h
             
             
             mov ah,01h
             int 21h
             
             mov bl,al
             
             sub bl,48
             
             cmp bl,1
              
                  je fifty 
                  
              cmp bl,2
              
                  je fifty 
                     
                  cmp bl,3
              
                  je fifty 
                      cmp bl,4
              
                  je fifty 
                      cmp bl,5
              
                  je fifty 
                      cmp bl,6
              
                  je fifty 
                     
              
              
              
                   jmp Invalid
                   
                   
              
                   Englishbook:
                   ;new line
                   
                       
                     mov ah,02h
               mov dl,10 
               int 21h 
               mov dl,13
               int 21h
               
               mov ah,02h
               mov dl,10 
               int 21h
               mov dl,13
               int 21h
               ;list start 
               
               
               
                        
                  mov ah,09h
               lea dx,m20
               
               int 21h 
                    
                     mov ah,02h
               mov dl,10 
               int 21h
               mov dl,13
               int 21h   
               mov ah,09h
               lea dx,m21
               int 21h
               
                 lea dx,m22
               int 21h
               
               lea dx,m23
               int 21h
               
               lea dx,m24
               int 21h
               
               lea dx,m25
               int 21h
               
               lea dx,m26
               int 21h
               
                 ;condition checking
             lea dx,m34
             int 21h
             
             
             mov ah,01h
             int 21h
             
             mov bl,al
             sub  bl,48
             
             cmp bl,1
              
                  je Hundred 
                  
              cmp bl,2
              
                  je Hundred 
                     
                  cmp bl,3
              
                  je Hundred 
                      cmp bl,4
              
                  je Hundred 
                      cmp bl,5
              
                  je Hundred
                      cmp bl,6
              
                  je Hundred 
                     
              
              
              
                   jmp Invalid
               
                           ;for exit
                           
                           mov ah,02h
                           mov dl,10
                           int 21h
                           mov dl,13
                           int 21h
                           
                           mov ah,09h
                           lea dx,m38
                           
                           mov ah,01h
                           int 21h
                           
                           mov bh,al
                           cmp bh,1
                           jmp Exit
                           
                           Islamicbook:
              
                                 ;new line
                   
                       
                     mov ah,02h
               mov dl,10
               int 21h
               mov dl,13
               int 21h 
               int 21h
               
               mov ah,02h
               mov dl,10
               mov dl,13
               int 21h   
               
               
               ;list start
               mov ah,09h
               lea dx,m27
               int 21h
               
                mov ah,02h
               mov dl,10
               mov dl,13
               int 21h
              
              
              
                  mov ah,09h
                  
                  
                  lea dx,m28
                  int 21h
                         
                         
                  lea dx,m29
                  int 21h
                  
                  
                  lea dx,m30
                  int 21h
                  
                  
                  lea dx,m31
                  int 21h
                  
                  
                  lea dx,m32
                  int 21h
                  
                  
                  lea dx,m33
                  int 21h
                           
                           
                       
                 ;condition checking
             lea dx,m34
             int 21h
             
             
             mov ah,01h
             int 21h
             
             mov bl,al
             sub  bl,48
             
             cmp bl,1
              
                  je Twohundred 
                  
              cmp bl,2
              
                  je Twohundred 
                     
                  cmp bl,3
              
                  je Twohundred  
                      cmp bl,4
              
                  je Twohundred  
                      cmp bl,5
              
                  je Twohundred 
                      cmp bl,6
              
                  je Twohundred 
                   
                            jmp Invalid
                     
                         fifty:
                         mov bl,5
                         lea dx,m35
                         mov ah,09h
                         int 21h
                         
                         
                         mov ah,01h
                         int 21h
                         sub al,48
                         
                         mul bl
                      
                        aam 
                         
                         mov cx,ax
                         
                             add ch,48
                             add cl,48
                             
                             lea dx,m37
                             mov ah,09h
                             int 21h
                             
                             mov ah,02h
                             mov dl,ch
                             int 21h
                             
                            ; mov dl,ch
                            ; int 21h
                             
                             mov dl,cl
                             int 21h
                             
                             mov dl,'0'
                             int 21h
                              
                              mov dl,47
                              int 21h
                              mov dl ,45
                              int 21h
                              
                              
                              ;for exist or main menu
                              
                              
                              mov ah ,02h
                              mov dl,10
                              int 21h
                              mov dl,13
                              int 21h
                              
                               mov ah,09h
                               lea dx,m38
                               int 21h
                               
                               
                                  mov ah,09h
                               lea dx,m39
                               int 21h
                               
                               mov ah,09h
                               lea dx,m8
                               int 21h
                                         
                                         
                               mov ah,01
                               int 21h
                               
                               sub al,48
                               
                               cmp al,1
                               je    BookList
                               
                               cmp al,2
                               je  Exit 
                               jmp Invalid
                               
                               Hundred:
                                 mov bl,10
                                 lea dx,m35
                                 mov ah,09h
                                 int 21h
                                 
                                       mov ah,01h
                                       int 21h
                                       
                                       sub al,48
                                       
                                       mul bl
                                       
                                       aam
                                       
                                       mov cx,ax
                                       
                                       add ch,48
                                       add cl,48
                                         lea dx,m37
                             mov ah,09h
                             int 21h
                             
                             mov ah,02h
                             mov dl,ch
                             int 21h
                             
                            ; mov dl,ch
                             ;int 21h
                             
                             mov dl,cl
                             int 21h
                             
                             mov dl,'0'
                             int 21h
                              
                              mov dl,47
                              int 21h
                              mov dl ,45
                              int 21h
                              
                                       
                                       
                                  mov ah ,02h
                              mov dl,10
                              int 21h
                              mov dl,13
                              int 21h
                              
                               mov ah,09h
                               lea dx,m38
                               int 21h
                               
                               
                                  mov ah,09h
                               lea dx,m39
                               int 21h
                               
                               mov ah,09h
                               lea dx,m8
                               int 21h
                                         
                                         
                               mov ah,01
                               int 21h
                               
                               sub al,48
                               
                               cmp al,1
                               je    BookList
                               
                               cmp al,2
                               je  Exit 
                               jmp Invalid 
                                 
                               Twohundred:
                               
                                         mov bl,20
                                 lea dx,m35
                                 mov ah,09h
                                 int 21h
                                 
                                       mov ah,01h
                                       int 21h
                                       
                                       sub al,48
                                       
                                       mul bl
                                       
                                       aam
                                       
                                       mov cx,ax
                                       
                                       add ch,48
                                       add cl,48
                                         lea dx,m37
                             mov ah,09h
                             int 21h
                             
                             mov ah,02h
                             mov dl,ch
                             int 21h
                             
                             ;mov dl,ch
                             ;int 21h
                             
                             mov dl,cl
                             int 21h
                             
                             mov dl,'0'
                             int 21h
                              
                              mov dl,47
                              int 21h
                              mov dl ,45
                              int 21h
                              
                                       
                                       
                                  mov ah ,02h
                              mov dl,10
                              int 21h
                              mov dl,13
                              int 21h
                              
                               mov ah,09h
                               lea dx,m38
                               int 21h
                               
                               
                                  mov ah,09h
                               lea dx,m39
                               int 21h
                               
                               mov ah,09h
                               lea dx,m8
                               int 21h
                                         
                                         
                               mov ah,01
                               int 21h
                               
                               sub al,48
                               
                               cmp al,1
                               je    BookList
                               
                               cmp al,2
                               je  Exit 
                               jmp Invalid 
                               
                               
                               
                               Invalid:
                               ;new line
                                
                              
                              
                              
                                  
                     mov ah,02h
               mov dl,10
               mov dl,13
               int 21h
               
               mov ah,02h
               mov dl,10
               mov dl,13
               int 21h 
               
               mov ah,09h
               lea dx,m37
               int 21h
               jmp Exit
               
               
                              
                              
         Exit:                   
                              
                             
              
              
                     
        mov ax, 4c00h       ; Exit code
        int 21h             ; DOS interrupt
    main endp
code ends

end main
