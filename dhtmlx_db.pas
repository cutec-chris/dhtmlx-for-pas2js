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
        else if ((DataSet.Fields[a] is TDateField)
             or (DataSet.Fields[a] is TDateTimeField)) then
          aObj.Properties[DataSet.Fields[a].FieldName] := DataSet.Fields[a].AsJSValue
        else
          aObj.Properties[DataSet.Fields[a].FieldName] := DataSet.Fields[a].DisplayText;
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
  procedure DoAddRows(resolve, reject: TJSPromiseResolver);
  begin
    Dataprocessor.ignore(@AddRows)
  end;
begin
  writeln('ActiveChanged');
  inherited ActiveChanged;
  if Active then
    TJSPromise.new(@DoAddRows)
  else Datastore.clearAll;
end;

function TDHTMLXDataLink.GetRecordCount: Integer;
begin
  Result:=DataSet.RecordCount;
end;

procedure TDHTMLXDataLink.DataEvent(Event: TDataEvent; Info: JSValue);
begin
  case Event of
  deFieldChange://A field value changed.
    writeln('DataEvent ','deFieldChange');
  deRecordChange://The contents of the current record changed.
    writeln('DataEvent ','deRecordChange');//
  deDataSetChange://A change occurred that affects the entire dataset (such as the insertion or deletion of records, changes to the key, or edits).
    begin
      writeln('DataEvent ','deDataSetChange');
    end;
  deDataSetScroll://The set of displayed records was scrolled.
    writeln('DataEvent ','deDataSetScroll');
  deLayoutChange://The layout of data in a data-aware control changed.
    writeln('DataEvent ','deLayoutChange');
  deUpdateRecord://Edits to the current record were posted.
    writeln('DataEvent ','deUpdateRecord');
  deUpdateState://The state of the dataset changed.
    begin
      writeln('DataEvent ','deUpdateState');
    end;
  deCheckBrowseMode://The state of the dataset is about to change.
    writeln('DataEvent ','deCheckBrowseMode');
  dePropertyChange://A property of the dataset or one of its fields changed.
    writeln('DataEvent ','dePropertyChange');
  deFieldListChange://The list of fields in the dataset changed.
    writeln('DataEvent ','deFieldListChange');
  deFocusControl://Focus needs to shift to the representation of a specified field.
    writeln('DataEvent ','deFocusControl');
  deParentScroll://The parent for which the dataset is a nested detail scrolled.
    writeln('DataEvent ','deParentScroll');
  deConnectChange://The connection to a remote dataset changed.
    writeln('DataEvent ','deConnectChange');
  deReconcileError://The dataset encountered reconcile errors when applying updates.
    writeln('DataEvent ','deReconcileError');
  deDisabledStateChange://not avalible in current Emba impl ??!
    writeln('DataEvent ','deDisabledStateChange');
  end;
  inherited;
end;

end.

