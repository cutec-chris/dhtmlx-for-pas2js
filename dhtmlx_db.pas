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
    FIdField: string;
    procedure AddRows;
  protected
    procedure UpdateData; override;
    procedure RecordChanged(Field: TField); override;
    procedure ActiveChanged; override;
    function GetRecordCount: Integer; override;
    procedure DataEvent(Event: TDataEvent; Info: JSValue); override;
  public
    constructor Create;
    property Dataprocessor : TDHTMLXDataProcessor read FDataprocessor;
    property Datastore : TDHTMLXDataStore read FDatastore;
    property IdField : string read FIdField write FIdField;
  end;

implementation

constructor TDHTMLXDataLink.Create;
begin
  inherited Create;
  FDataprocessor := TDHTMLXDataProcessor.New('');
  FDatastore := TDHTMLXDataStore.New('');
end;

procedure TDHTMLXDataLink.AddRows;
var
  i, a: Integer;
  aObj: TJSObject;
  aRec: TBookMark;
begin
  DataSet.DisableControls;
  Datastore.clearAll;
  aRec := DataSet.GetBookmark;
  DataSet.First;
  while not DataSet.EOF do
    begin
      aObj := TJSObject.new;
      for a := 0 to DataSet.FieldCount-1 do
        if DataSet.Fields[a].FieldName=FIdField then
          aObj.Properties['id'] := DataSet.Fields[a].AsJSValue
        else
          aObj.Properties[DataSet.Fields[a].FieldName] := DataSet.Fields[a].AsJSValue;
      try
        Datastore.add(aObj);
      except
      end;
      DataSet.Next;
    end;
  DataSet.GotoBookmark(aRec);
  DataSet.EnableControls;
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
begin
  writeln('ActiveChanged');
  inherited ActiveChanged;
  if Active then
    Dataprocessor.ignore(@AddRows)
  else Datastore.clearAll;
end;

function TDHTMLXDataLink.GetRecordCount: Integer;
begin
  Result:=DataSet.RecordCount;
end;

procedure TDHTMLXDataLink.DataEvent(Event: TDataEvent; Info: JSValue);
begin
  case Event of
  deFieldChange:writeln('DataEvent ','deFieldChange');
  deRecordChange:writeln('DataEvent ','deRecordChange');
  deDataSetChange:
    begin
      writeln('DataEvent ','deDataSetChange');
    end;
  deDataSetScroll:writeln('DataEvent ','deDataSetScroll');
  deLayoutChange:writeln('DataEvent ','deLayoutChange');
  deUpdateRecord:writeln('DataEvent ','deUpdateRecord');
  deUpdateState:
    begin
      writeln('DataEvent ','deUpdateState');
    end;
  deCheckBrowseMode:writeln('DataEvent ','deCheckBrowseMode');
  dePropertyChange:writeln('DataEvent ','dePropertyChange');
  deFieldListChange:writeln('DataEvent ','deFieldListChange');
  deFocusControl:writeln('DataEvent ','deFocusControl');
  deParentScroll:writeln('DataEvent ','deParentScroll');
  deConnectChange:writeln('DataEvent ','deConnectChange');
  deReconcileError:writeln('DataEvent ','deReconcileError');
  deDisabledStateChange:writeln('DataEvent ','deDisabledStateChange');
  end;
  inherited;
end;

end.

