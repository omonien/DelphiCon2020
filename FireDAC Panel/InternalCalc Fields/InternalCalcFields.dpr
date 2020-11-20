(* Copyright (c) 2017-2020. Cary Jensen, Jensen Data Systems, Inc.

   This code sample is intended for attendees of DelphiCon Worldwide

   No guarantees or warranties are expressed or implied concerning
   the applicability of techniques or code included in this example
   or mentioned in the presentation. If you wish to use techniques or
   code included in this example or those described, it is
   your responsibility to test and certify any code, techniques,
   or design you adopt.

   For more information about "Delphi in Depth: FireDAC"
   by Cary Jensen, including links to order the book, please visit:
   http://www.JensenDataSystems.com/FireDACBook
   ISBN-13: 978-1546391272 
   ISBN-10: 1546391274

*)
program InternalCalcFields;

uses
  Vcl.Forms,
  mainformu in 'mainformu.pas' {mainform};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmainform, mainform);
  Application.Run;
end.
