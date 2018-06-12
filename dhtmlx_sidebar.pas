unit dhtmlx_sidebar;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web,dhtmlx_base;

type

  { TSidebar }

  TDHTMLXSidebar = class external name 'dhtmlXSideBar' (TJSElement)
    Constructor New(Pattern : JSValue);varargs;
    procedure addItem(obj : JSValue);                                           //adds an item to Sidebar
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    procedure attachFooter(id : JSValue;height : Integer);varargs;              //attaches footer to component's bottom
    procedure attachHeader(id : JSValue;height : Integer);varargs;	        //attaches header to component's top
    //attachMenu	attaches dhtmlxMenu to component's top
    //attachRibbon	attaches dhtmlxRibbon to component's top
    //attachStatusBar	attaches a status bar object to component's bottom
    //attachToolbar	attaches dhtmlxToolbar to component's top
    //cells	alias for items()
    //clearAll	removes all items and separators from sidebar
    //detachEvent	detaches a handler from an event
    //detachFooter	detaches footer from component's bottom
    //detachHeader	detaches header from component's top
    //detachMenu	detaches dhtmlxMenu from component's top
    //detachRibbon	detaches dhtmlxRibbon from component's top
    //detachStatusBar	detaches status bar object from component's bottom
    //detachToolbar	detaches dhtmlxToolbar from component's top
    procedure forEachCell(const aCallBack : JSValue);	                //alias for forEachItem()
    procedure forEachItem(const aCallBack : JSValue);	                //an iterator, calls a user-defined handler for each item
    //getActiveItem	returns id of the active item
    //getAllItems	returns an array of the sidebar items' ids
    //getAttachedMenu	returns dhtmlxMenu instance attached to component's top
    //getAttachedRibbon	returns dhtmlxRibbon instance attached to component's top
    //getAttachedStatusBar	returns status bar object attached to component's bottom
    //getAttachedToolbar	returns dhtmlxToolbar instance attached to component's top
    //getNumberOfItems	returns the number of items
    //goToNextItem	selects the item next to the active one or the first one, if nothing is selected
    //goToPrevItem	selects the item prevous to the active one or the first one, if nothing's selected
    //hideMenu	hides dhtmlxMenu attached to component's top
    //hideRibbon	hides dhtmlxRibbon attached to component's top
    //hideSide	hides the navigation panel
    //hideStatusBar	hides status bar object attached to component's bottom
    //hideToolbar	hides dhtmlxToolbar attached to component's top
    //items	returns dhtmlXSideBarCell instance (sidebar's item)
    //loadStruct	loads data to the component via XML or JSON, usually component config
    //progressOff	hides progress indicator for full component
    //progressOn	shows progress indicator for full component
    //removeSep	removes a separator by id
    //setOffsets	sets offsets for parent container from each side
    //setSideWidth	sets the width of sidebar
    //setSizes	adjusts the size of the sidebar when the parent's size is changed
    //setTemplate	applies a template for sidebar
    //showMenu	shows dhtmlxMenu attached to component's top
    //showRibbon	shows dhtmlxRibbon attached to component's top
    //showSide	shows the navigation panel
    //showStatusBar	shows status bar object attached to component's bottom
    //showToolbar	shows dhtmlxToolbar attached to component's bottom
    //unload	unloads sidebar (desctructor)
  end;

  TSidebar = class
  private
    FControl : TDHTMLXSidebar;
  public
    constructor Create(parent : JSValue);
  end;

implementation

{ TSidebar }

constructor TSidebar.Create(parent: JSValue);
begin
  FControl := TDHTMLXSidebar.New(new(['parent',parent]));
end;

end.

