unit dhtmlx_db;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, dhtmlx_dataprocessor;

type

  { TDHTMLXDataSource }

  TDHTMLXDataSource = class(TDataSource)
  private
    FDataprocessor: TDHTMLXDataProcessor;
  public
    constructor Create(AOwner: TComponent); override;
    property Dataprocessor : TDHTMLXDataProcessor read FDataprocessor;
  end;

implementation

{ TDHTMLXDataSource }

constructor TDHTMLXDataSource.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataprocessor := TDHTMLXDataProcessor.New();
end;

end.

