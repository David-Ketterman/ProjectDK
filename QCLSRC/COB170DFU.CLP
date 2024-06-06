000100140627 /* S/36 COB170 CONVERTED TO COB170DFU                                       */
000200140627 /* SSK 06/27/2014                                                           */
000300140627 /*                                                                          */
000400140627             PGM
000500140627             DCL        VAR(&USER) TYPE(*CHAR) LEN(10)
000600140627             RTVJOBA    USER(&USER)
000700140627             IF         COND(&USER = 'LISA' *OR &USER = 'DLK' *OR +
000800140627                          &USER = 'SHELLY' *OR &USER = 'KRISTIL' +
000900140627                          *OR &USER = 'JASON' *OR &USER = +
001000140627                          'GBSTEST') THEN(DO)
001100140627             CALL       PGM(COMPNY)
001200140627             CHGDTA     DFUPGM(UPCOB) FILE(F.MEMBER)
001300140627             ENDDO
001400140627             ENDPGM
001500140627 /*                                                                          */
001600140627 /* ORIGINAL SOURCE OF OCL                                                   */
001700140627 /*                                                                          */
001800140627 /*  // IF ?USER?/LISA            GOTO OK                                    */
001900140627 /*  // IF ?USER?/DLK             GOTO OK                                    */
002000140627 /*  // IF ?USER?/SHELLY          GOTO OK                                    */
002100140627 /*  // IF ?USER?/KRISTIL         GOTO OK                                    */
002200140627 /*  // IF ?USER?/JASON           GOTO OK                                    */
002300140627 /*  // IF ?USER?/GBSTEST         GOTO OK                                    */
002400140627 /*  // * 'YOU ARE NOT AUTHORIZED TO USE THIS PROCEDURE....'                 */
002500140627 /*  // PAUSE                                                                */
002600140627 /*  // CANCEL                                                               */
002700140627 /*  // TAG OK                                                               */
002800140627 /*  COMPNY    ** USE LDA 201-253 FOR COMPANY,NAME,FILE PREFIX,TIME          */
002900140627 /*  CHGDTA DFUPGM(UPCOB) FILE(?L'241,1'?.MEMBER)                            */
