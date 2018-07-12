unit dhtmlx_popup;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web,dhtmlx_base;

type

  TDHTMLXPopup = class external name 'dhtmlXPopup ' (TJSElement)
    constructor New(Pattern : JSValue);varargs;
    function attachAccordion(conf : TJSObject): JSValue;	                //attaches dhtmlxAccordion to a cell
    function attachCarousel(conf : TJSObject): JSValue;	                        //attaches a carousel object to a cell
    //attachCalendar	adds a calendar object to the popup
    //attachColorPicker	adds a color picker object to the popup
    function attachEditor(conf : TJSObject): JSValue;	                        //attaches dhtmlxEditor to a cell
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    function attachForm(conf : TJSObject): JSValue;	                        //attaches dhtmlxForm to a cell
    function attachGrid(width,heigtht : Integer): JSValue;                             //attaches dhtmlxGrid to a cell
    //attachHTML	adds the HTML markup to the popup
    function attachLayout(conf : TJSObject): JSValue;	                        //attaches dhtmlxLayout to a cell
    function attachList(conf : TJSObject): JSValue;	                        //attaches dhtmlxList to a cell
    procedure attachObject(aObj : JSValue);	                                //attaches an HTML object to a cell
    function attachSidebar(conf : TJSObject): JSValue;	                        //attaches dhtmlxSidebar to a cell
    function attachTabbar(conf : TJSObject): JSValue;	                        //attaches dhtmlxTabbar to a cell
    function attachTree(conf : TJSObject): JSValue;	                        //attaches dhtmlxTree to a cell
    function attachTreeView(conf : TJSObject): JSValue;	                        //attaches dhtmlxTreeView to a cell
    function attachVault(conf : TJSObject): JSValue;	                        //attaches dhtmlxVault to a cell
    //clear	clears attached content (object / list / html / dhtmlx component)
    procedure detachEvent(id : JSValue);	                                //detaches a handler from an event
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

