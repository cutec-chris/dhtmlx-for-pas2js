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
  var
    i, a: Integer;
    aObj: TJSObject;
  begin
    DataSet.DisableControls;
    for i := 0 to RecordCount-1 do
      begin
        aObj := TJSObject.new;
        ActiveRecord:=i;
        for a := 0 to DataSet.FieldCount-1 do
          if DataSet.Fields[a].FieldName=FIdField then
            aObj.Properties['id'] := DataSet.Fields[a].AsJSValue
          else
            aObj.Properties[DataSet.Fields[a].FieldName] := DataSet.Fields[a].AsJSValue;
        Datastore.add(aObj);
      end;
    DataSet.EnableControls;
  end;

begin
  writeln('ActiveChanged');
  inherited ActiveChanged;
  Dataprocessor.ignore(@AddRows);
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
  deDataSetChange:writeln('DataEvent ','deDataSetChange');
  deDataSetScroll:writeln('DataEvent ','deDataSetScroll');
  deLayoutChange:writeln('DataEvent ','deLayoutChange');
  deUpdateRecord:writeln('DataEvent ','deUpdateRecord');
  deUpdateState:writeln('DataEvent ','deUpdateState');
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

