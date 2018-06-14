unit dhtmlx_db;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, dhtmlx_dataprocessor,js;

type

  { TDHTMLXDataSource }

  TDHTMLXDataSource = class(TDataSource)
  private
    FDataprocessor: TDHTMLXDataProcessor;
    FDataSet: TDataSet;
    procedure SetDataSet(AValue: TDataSet);
  public
    constructor Create(AOwner: TComponent); override;
    property Dataprocessor : TDHTMLXDataProcessor read FDataprocessor;
    property DataSet : TDataSet read FDataSet write SetDataSet;
  end;

implementation

{ TDHTMLXDataSource }

procedure TDHTMLXDataSource.SetDataSet(AValue: TDataSet);
begin
  if FDataSet=AValue then Exit;
  FDataSet:=AValue;
end;

constructor TDHTMLXDataSource.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
  FDataprocessor := TDHTMLXDataProcessor.New(js.new([]));
end;

end.

