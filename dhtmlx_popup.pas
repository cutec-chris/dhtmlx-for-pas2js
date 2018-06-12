unit dhtmlx_popup;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web,dhtmlx_base;

type

  TDHTMLXPopup = class external name 'dhtmlXPopup ' (TJSElement)
    constructor New(Pattern : JSValue);varargs;
    //attachAccordion	adds an accordion object to the popup
    //attachCalendar	adds a calendar object to the popup
    //attachCarousel	attaches a carousel object to the popup
    //attachColorPicker	adds a color picker object to the popup
    //attachEditor	adds an editor object to the popup
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    //attachForm	adds a form object to the popup
    //attachGrid	adds a grid object to the popup
    //attachHTML	adds the HTML markup to the popup
    //attachLayout	adds a layout object to the popup
    //attachList	adds a list-like structure to the popup
    //attachObject	adds a DOM element to the popup
    //attachSidebar	attaches dhtmlxSidebar to a cell
    //attachTabbar	adds a tabbar object to the popup
    //attachTree	adds a tree object to the popup
    //attachTreeView	adds a treeview object to the popup
    //attachVault	adds an accordion object to the popup
    //clear	clears attached content (object / list / html / dhtmlx component)
    //detachEvent	detaches a handler from an event
    //getItemData	returns items of the list attached through the attachList method
    //hide	hides the popup
    function isVisible : Boolean; 	                                        //returns true if popup visible
    //setDimension	sets the dimensions of the popup, when a component is attached to it
    //setSkin	sets the skin to apply
    procedure show(id : JSValue);                                               //shows the popup
    //unload	destructor
  end;


implementation

end.

