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
001100110224/* 02/24/11 DLK - ADD CC EMAIL OPTION                                         */
001200170830/* 08/29/17 DLK - ADD SUBJECT PARM AND MAKE THE ZIP CHOICE A                  */
001300170830/*                SEPERATE OPTION.                                            */
001400170907/* 09/07/17 DLK - INCREASE SIZE OF TOFILE PARM                                */
001500240617/*   TEST 6/17/24                                                             */
001600240617/*   TEST AGAIN 6/17/24                                                       */
001700000000/*____________________________________________________________________________*/
001800000000
001900001110             CMD        PROMPT('E-Mail a File')
002000001108
002100001108             PARM       KWD(FILE) TYPE(*NAME) MIN(1) PROMPT('AS/400 +
002200001110                          File')
002300001108
002400020112             PARM       KWD(LIB) TYPE(*CHAR) LEN(10) DFT(*LIBL) +
002500020112                          PROMPT('AS/400 Library')
002600001108
002700011018             PARM       KWD(EMAIL) TYPE(*CHAR) LEN(40) DFT(*CURRENT) +
002800011018                          CHOICE('*CURRENT will send to yourself') +
002900011018                          PROMPT('To E-Mail Address')
003000011018
003100110224             PARM       KWD(CC1) TYPE(*CHAR) LEN(40) CHOICE('cc +
003200110224                          email address') PROMPT('cc E-Mail Address 1')
003300110224             PARM       KWD(CC2) TYPE(*CHAR) LEN(40) CHOICE('cc +
003400110224                          email address') PROMPT('cc E-Mail Address 2')
003500110224             PARM       KWD(CC3) TYPE(*CHAR) LEN(40) CHOICE('cc +
003600110224                          email address') PROMPT('cc E-Mail Address 3')
003700110224             PARM       KWD(CC4) TYPE(*CHAR) LEN(40) CHOICE('cc +
003800110224                          email address') PROMPT('cc E-Mail Address 4')
003900110224             PARM       KWD(CC5) TYPE(*CHAR) LEN(40) CHOICE('cc +
004000110224                          email address') PROMPT('cc E-Mail Address 5')
004100110224             PARM       KWD(CC6) TYPE(*CHAR) LEN(40) CHOICE('cc +
004200110224                          email address') PROMPT('cc E-Mail Address 6')
004300110224             PARM       KWD(CC7) TYPE(*CHAR) LEN(40) CHOICE('cc +
004400110224                          email address') PROMPT('cc E-Mail Address 7')
004500110224             PARM       KWD(CC8) TYPE(*CHAR) LEN(40) CHOICE('cc +
004600110224                          email address') PROMPT('cc E-Mail Address 8')
004700110224             PARM       KWD(CC9) TYPE(*CHAR) LEN(40) CHOICE('cc +
004800110224                          email address') PROMPT('cc E-Mail Address 9')
004900110224             PARM       KWD(CC10) TYPE(*CHAR) LEN(40) CHOICE('cc +
005000110224                          email address') PROMPT('cc E-Mail Address 10')
005100110224
005200170907             PARM       KWD(TOFILE) TYPE(*NAME) LEN(50) MIN(1) +
005300170907                          PROMPT('PC File')
005400011018
005500170830             PARM       KWD(EXT) TYPE(*CHAR) LEN(4) RSTD(*YES) +
005600170830                          VALUES('.TXT' '.HTM' '.CSV' '.txt' '.htm' +
005700170830                          '.csv' '.DAT') MIN(1) PROMPT('File +
005800170830                          Extension')
005900170830
006000170830             PARM       KWD(ZIP) TYPE(*CHAR) LEN(1) RSTD(*YES) +
006100170830                          VALUES('Y' ' ') PROMPT('Zip the file?')
006200001113
006300170829             PARM       KWD(SUBJECT) TYPE(*CHAR) LEN(44) +
006400170829                          PROMPT('Subject Text')
006500170829
006600170829             PARM       KWD(MSGTXT) TYPE(*CHAR) LEN(256) +
006700170829                          PROMPT('Message Text')
006800001108
