unit dhtmlx_dataprocessor;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web;

type
  TDHTMLXDataProcessor = class external name 'dataProcessor' (TJSElement)
    constructor New;varargs;
    //clearVerificator	cancels verifying of a column
    //defineAction	defines a handler function for a specific response status
    procedure enableDataNames(mode : Boolean);	                                //changes the default names of incoming parameters (c0-cN) to the columns' ids in the grid
    procedure enableDebug(mode : Boolean);	                                //enables debug output
    procedure enablePartialDataSend(mode : Boolean);	                        //enables mode when only updated properties will be sent to server side
    //enableUTFencoding	set data escaping mode
    function getState(id : JSValue) : string;	                                //returns state of item ( is updated or not )
    function getSyncState : boolean;	                                        //return state of dataprocessor
    //ignore	exec block without triggering dataprocessor
    procedure init(obj : TJSObject);	                                        //link dataprocessor to the component
    procedure sendData(id : JSValue);	                                        //sends to the server side all data which aren't saved yet
    //setTransactionMode	configures data sending mode
    //setUpdateMode	defines the action that will trigger data saving
    //setUpdated	marks item as updated
    //setVerificator	specifies a column which values should be varified before sending to the server
    //url	sets url to the server side data saving script
  end;

implementation

end.

