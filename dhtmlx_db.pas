unit dhtmlx_db;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, DB, dhtmlx_dataprocessor,js,dhtmlx_datastore;

type

  { TDHTMLXDataSource }

  { TDHTMLXDataLink }

  TDHTMLXDataLink = class(TDataLink)
  private
    FDataprocessor: TDHTMLXDataProcessor;
    FDatastore: TDHTMLXDataStore;
  protected
    procedure UpdateData; override;
    procedure RecordChanged(Field: TField); override;
    procedure ActiveChanged; override;
  public
    constructor Create;
    property Dataprocessor : TDHTMLXDataProcessor read FDataprocessor;
    property Datastore : TDHTMLXDataStore read FDatastore;
  end;

implementation

constructor TDHTMLXDataLink.Create;
begin
  inherited Create;
  FDataprocessor := TDHTMLXDataProcessor.New('');
  FDatastore := TDHTMLXDataStore.New('');
end;

procedure TDHTMLXDataLink.UpdateData;
begin
  writeln('UpdateData');
end;

procedure TDHTMLXDataLink.RecordChanged(Field: TField);
begin
  writeln('RecordChanged');
  inherited RecordChanged(Field);
end;

procedure TDHTMLXDataLink.ActiveChanged;
  procedure AddRows;
  begin
    Datastore.add(js.new([]));
    Datastore.add(js.new([]));
    Datastore.add(js.new([]));
  end;

begin
  writeln('ActiveChanged');
  inherited ActiveChanged;
  Dataprocessor.ignore(@AddRows);
end;

end.

