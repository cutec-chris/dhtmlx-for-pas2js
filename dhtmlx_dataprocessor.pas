unit dhtmlx_dataprocessor;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web;

type
  TDHTMLXDataProcessor = class external name 'dataProcessor' (TJSElement)
    constructor New;varargs;
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    procedure detachEvent(id : JSValue);	                                //detaches a handler from an event
    procedure clearVerificator(col : Integer);	                                //cancels verifying of a column
    //defineAction	defines a handler function for a specific response status
    procedure enableDataNames(mode : Boolean);	                                //changes the default names of incoming parameters (c0-cN) to the columns' ids in the grid
    procedure enableDebug(mode : Boolean);	                                //enables debug output
    procedure enablePartialDataSend(mode : Boolean);	                        //enables mode when only updated properties will be sent to server side
    //enableUTFencoding	set data escaping mode
    function getState(id : JSValue) : string;	                                //returns state of item ( is updated or not )
    function getSyncState : boolean;	                                        //return state of dataprocessor
    procedure ignore(Fuc : JSValue);	                                        //exec block without triggering dataprocessor
    procedure init(obj : TJSElement);	                                        //link dataprocessor to the component
    procedure sendData(id : JSValue);	                                        //sends to the server side all data which aren't saved yet
    procedure setTransactionMode(mode : string);	                        //configures data sending mode
    //setUpdateMode	defines the action that will trigger data saving
    procedure setUpdated(id : JSValue);	                                        //marks item as updated
    procedure setVerificator(col : Integer;func : JSValue);	                //specifies a column which values should be varified before sending to the server
    procedure url(aurl : string);	                                        //sets url to the server side data saving script
  end;

implementation

end.

