/// <summary>
/// ***************************************************************************
///
/// Colarvest
///
/// Copyright 2023-2025 Patrick PREMARTIN under AGPL 3.0 license.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
/// THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
/// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
/// DEALINGS IN THE SOFTWARE.
///
/// ***************************************************************************
///
/// Author(s) :
/// Patrick PREMARTIN
///
/// Site :
/// https://colarvest.gamolf.fr/
///
/// Project site :
/// https://github.com/DeveloppeurPascal/Colarvest-LudumDare52
///
/// ***************************************************************************
/// File last update : 2025-04-07T10:01:23.177+02:00
/// Signature : dee0dcd0dbdc0a0eac3037bb1e1c0ed72932aad1
/// ***************************************************************************
/// </summary>

program Colarvest;

uses
  System.StartUpCopy,
  FMX.Forms,
  fMain in 'fMain.pas' {frmMain},
  cButton in 'cButton.pas' {cadButton: TFrame},
  FMX.DzHTMLText in '..\Libraries\DzHTMLText\FMX.DzHTMLText.pas',
  uGameData in 'uGameData.pas',
  cInventoryItem in 'cInventoryItem.pas' {cadInventoryItem: TFrame},
  udmLDJam52_Icones_AS303523361 in 'udmLDJam52_Icones_AS303523361.pas' {dmLDJam52_Icones_AS303523361: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmLDJam52_Icones_AS303523361, dmLDJam52_Icones_AS303523361);
  Application.Run;
end.
