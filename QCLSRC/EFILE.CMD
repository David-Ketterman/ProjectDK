000100000000/*____________________________________________________________________________*/
000200000000/*                                                                            */
000300000000/*  Description:  e-mail a file +
000400000000/*                                                                            */
000500000000/*  (c)Copyright 2000 by Innovative Outsourcing, Inc.                     */
000600000000/*                                                                            */
000700000000/*    Created by:  JALLEN - November 08, 2000 +
000800011018/*                                                                            */
000900011018/* 10/18/01 DLK - ADD DEFAULT - SEND TO *CURRENT USER                         */
001000020403/* 04/03/02 DLK - ADD .DAT EXTENSION CHOICE                                   */
001001110224/* 02/24/11 DLK - ADD CC EMAIL OPTION                                         */
001002170830/* 08/29/17 DLK - ADD SUBJECT PARM AND MAKE THE ZIP CHOICE A                  */
001100170830/*                SEPERATE OPTION.                                            */
001101170907/* 09/07/17 DLK - INCREASE SIZE OF TOFILE PARM                                */
001102170830/*                                                                            */
001200000000/*____________________________________________________________________________*/
001300000000
001400001110             CMD        PROMPT('E-Mail a File')
001500001108
001600001108             PARM       KWD(FILE) TYPE(*NAME) MIN(1) PROMPT('AS/400 +
001700001110                          File')
001800001108
001900020112             PARM       KWD(LIB) TYPE(*CHAR) LEN(10) DFT(*LIBL) +
002000020112                          PROMPT('AS/400 Library')
002100001108
002200011018             PARM       KWD(EMAIL) TYPE(*CHAR) LEN(40) DFT(*CURRENT) +
002300011018                          CHOICE('*CURRENT will send to yourself') +
002400011018                          PROMPT('To E-Mail Address')
002500011018
002501110224             PARM       KWD(CC1) TYPE(*CHAR) LEN(40) CHOICE('cc +
002502110224                          email address') PROMPT('cc E-Mail Address 1')
002503110224             PARM       KWD(CC2) TYPE(*CHAR) LEN(40) CHOICE('cc +
002504110224                          email address') PROMPT('cc E-Mail Address 2')
002505110224             PARM       KWD(CC3) TYPE(*CHAR) LEN(40) CHOICE('cc +
002506110224                          email address') PROMPT('cc E-Mail Address 3')
002507110224             PARM       KWD(CC4) TYPE(*CHAR) LEN(40) CHOICE('cc +
002508110224                          email address') PROMPT('cc E-Mail Address 4')
002509110224             PARM       KWD(CC5) TYPE(*CHAR) LEN(40) CHOICE('cc +
002510110224                          email address') PROMPT('cc E-Mail Address 5')
002511110224             PARM       KWD(CC6) TYPE(*CHAR) LEN(40) CHOICE('cc +
002512110224                          email address') PROMPT('cc E-Mail Address 6')
002513110224             PARM       KWD(CC7) TYPE(*CHAR) LEN(40) CHOICE('cc +
002514110224                          email address') PROMPT('cc E-Mail Address 7')
002515110224             PARM       KWD(CC8) TYPE(*CHAR) LEN(40) CHOICE('cc +
002516110224                          email address') PROMPT('cc E-Mail Address 8')
002517110224             PARM       KWD(CC9) TYPE(*CHAR) LEN(40) CHOICE('cc +
002518110224                          email address') PROMPT('cc E-Mail Address 9')
002519110224             PARM       KWD(CC10) TYPE(*CHAR) LEN(40) CHOICE('cc +
002520110224                          email address') PROMPT('cc E-Mail Address 10')
002521110224
002700170907             PARM       KWD(TOFILE) TYPE(*NAME) LEN(50) MIN(1) +
002800170907                          PROMPT('PC File')
002900011018
003000170830             PARM       KWD(EXT) TYPE(*CHAR) LEN(4) RSTD(*YES) +
003100170830                          VALUES('.TXT' '.HTM' '.CSV' '.txt' '.htm' +
003200170830                          '.csv' '.DAT') MIN(1) PROMPT('File +
003300170830                          Extension')
003301170830
003302170830             PARM       KWD(ZIP) TYPE(*CHAR) LEN(1) RSTD(*YES) +
003303170830                          VALUES('Y' ' ') PROMPT('Zip the file?')
003400001113
003500170829             PARM       KWD(SUBJECT) TYPE(*CHAR) LEN(44) +
003600170829                          PROMPT('Subject Text')
003601170829
003602170829             PARM       KWD(MSGTXT) TYPE(*CHAR) LEN(256) +
003603170829                          PROMPT('Message Text')
003700001108
