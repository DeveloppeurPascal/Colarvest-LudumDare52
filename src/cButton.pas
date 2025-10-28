(* C2PP
  ***************************************************************************

  Colarvest

  Copyright 2023-2025 Patrick PREMARTIN under AGPL 3.0 license.

  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
  THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
  DEALINGS IN THE SOFTWARE.

  ***************************************************************************

  Author(s) :
  Patrick PREMARTIN

  Site :
  https://colarvest.gamolf.fr/

  Project site :
  https://github.com/DeveloppeurPascal/Colarvest-LudumDare52

  ***************************************************************************
  File last update : 2025-10-28T18:21:03.248+01:00
  Signature : 644a4eaf67058edfa2f5663a0fe7b4541a89831c
  ***************************************************************************
*)

unit cButton;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  FMX.Objects;

type
  TcadButton = class(TFrame)
    Background: TRectangle;
    Text: TText;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
    procedure DisableButton;
    procedure EnableButton;
    constructor Create(AOwner: TComponent); override;
  end;

implementation

{$R *.fmx}
{ TcadButton }

constructor TcadButton.Create(AOwner: TComponent);
begin
  inherited;
  EnableButton;
end;

procedure TcadButton.DisableButton;
begin
  hittest := false;
  enabled := false;
  opacity := 0.5;
end;

procedure TcadButton.EnableButton;
begin
  hittest := true;
  enabled := true;
  opacity := 1;
end;

end.
