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
001600000000/*____________________________________________________________________________*/
001700000000
001800001110             CMD        PROMPT('E-Mail a File')
001900001108
002000001108             PARM       KWD(FILE) TYPE(*NAME) MIN(1) PROMPT('AS/400 +
002100001110                          File')
002200001108
002300020112             PARM       KWD(LIB) TYPE(*CHAR) LEN(10) DFT(*LIBL) +
002400020112                          PROMPT('AS/400 Library')
002500001108
002600011018             PARM       KWD(EMAIL) TYPE(*CHAR) LEN(40) DFT(*CURRENT) +
002700011018                          CHOICE('*CURRENT will send to yourself') +
002800011018                          PROMPT('To E-Mail Address')
002900011018
003000110224             PARM       KWD(CC1) TYPE(*CHAR) LEN(40) CHOICE('cc +
003100110224                          email address') PROMPT('cc E-Mail Address 1')
003200110224             PARM       KWD(CC2) TYPE(*CHAR) LEN(40) CHOICE('cc +
003300110224                          email address') PROMPT('cc E-Mail Address 2')
003400110224             PARM       KWD(CC3) TYPE(*CHAR) LEN(40) CHOICE('cc +
003500110224                          email address') PROMPT('cc E-Mail Address 3')
003600110224             PARM       KWD(CC4) TYPE(*CHAR) LEN(40) CHOICE('cc +
003700110224                          email address') PROMPT('cc E-Mail Address 4')
003800110224             PARM       KWD(CC5) TYPE(*CHAR) LEN(40) CHOICE('cc +
003900110224                          email address') PROMPT('cc E-Mail Address 5')
004000110224             PARM       KWD(CC6) TYPE(*CHAR) LEN(40) CHOICE('cc +
004100110224                          email address') PROMPT('cc E-Mail Address 6')
004200110224             PARM       KWD(CC7) TYPE(*CHAR) LEN(40) CHOICE('cc +
004300110224                          email address') PROMPT('cc E-Mail Address 7')
004400110224             PARM       KWD(CC8) TYPE(*CHAR) LEN(40) CHOICE('cc +
004500110224                          email address') PROMPT('cc E-Mail Address 8')
004600110224             PARM       KWD(CC9) TYPE(*CHAR) LEN(40) CHOICE('cc +
004700110224                          email address') PROMPT('cc E-Mail Address 9')
004800110224             PARM       KWD(CC10) TYPE(*CHAR) LEN(40) CHOICE('cc +
004900110224                          email address') PROMPT('cc E-Mail Address 10')
005000110224
005100170907             PARM       KWD(TOFILE) TYPE(*NAME) LEN(50) MIN(1) +
005200170907                          PROMPT('PC File')
005300011018
005400170830             PARM       KWD(EXT) TYPE(*CHAR) LEN(4) RSTD(*YES) +
005500170830                          VALUES('.TXT' '.HTM' '.CSV' '.txt' '.htm' +
005600170830                          '.csv' '.DAT') MIN(1) PROMPT('File +
005700170830                          Extension')
005800170830
005900170830             PARM       KWD(ZIP) TYPE(*CHAR) LEN(1) RSTD(*YES) +
006000170830                          VALUES('Y' ' ') PROMPT('Zip the file?')
006100001113
006200170829             PARM       KWD(SUBJECT) TYPE(*CHAR) LEN(44) +
006300170829                          PROMPT('Subject Text')
006400170829
006500170829             PARM       KWD(MSGTXT) TYPE(*CHAR) LEN(256) +
006600170829                          PROMPT('Message Text')
006700001108
