unit dhtmlx_dataview;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web,SysUtils;

type
  TDHTMLXDataView = class external name 'dhtmlXDataView' (TJSElement)
    constructor New(parent : JSValue);varargs;
    procedure add(obj : TJSObject);varargs;                                     //adds a data item to the dataview
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    //changeId	changes the id of an item
    procedure clearAll;	                                                        //deletes all items
    //copy	creates a copy of an item
    procedure customize(properties : TJSObject);	                        //customizes the currently active template by replacing default properties with the one from provided object
    //dataCount	returns the total count of items in the dataview
    procedure define(prop : string;value : JSValue);	                        //configures some mode of DataView
    //detachEvent	detaches a handler from an event
    //edit	switches the specified item to the edit state
    //exists	returns true if the item with the defined ID already exists
    //filter	filters DataView by the provided parameters
    function first: JSValue;	                                                //returns the ID of the first item (item with the index == 0)
    function get(id : JSValue) : TJSObject;	                                //gets the object of the data item with the specified id
    //getSelected	returns the currently selected ID
    //idByIndex	returns the ID of the item with the specified index
    //indexById	returns the index of the item with the specified ID
    //isEdit	gets the status of the edit operation
    //isSelected	returns true, if an item is selected
    function last : JSValue;	                                                //returns the ID of the last item (the item with the index == dataCount-1)
    //load	loads data to the component via XML or JSON, usually data-values pairs
    //locate	returns an item's ID by HTML event (checks if any item is in the area of HTML event)
    //move	moves an item to the defined position
    //moveBottom	sets an item as the last item in the view
    //moveDown	changes the index of an item by moving it to the end of the view by the defined count of steps
    //moveTop	sets an item as the first item in the view
    //moveUp	changes the index of an item by moving it to the start of the view by the defined count of steps
    function next: JSValue;	                                                //returns ID of the next item (item with the index == current + 1)
    //parse	parses an object or a string and fills the dataview with the parsed items
    function previous : JSValue;	                                        //returns ID of the previous item (item with the index == current - 1)
    //refresh	repaints an item or the whole dataview
    procedure remove(id : JSValue);	                                        //removes a data item from the dataview
    procedure select(id : JSValue);	                                        //marks an item as selected
    procedure selectAll;	                                                //selects all items in the dataview
    //serialize	serializes component back to json
    //set	associates the hash of data with some ID
    //show	adjusts the scrollbars of dataview to make the item in question visible
    //sort	adds any user-defined handler for available events
    //stopEdit	if there was some item in the edit state, this command switches it back to the normal state
    //unselect	removes selection from a certain item
    //unselectAll	removes selection from all the items in the dataview
    //update	updates a particular item in the dataview
    procedure Destroy; external name 'destructor';
  end;

implementation
initialization
  if Now()<0 then
    begin
    end;
end.

