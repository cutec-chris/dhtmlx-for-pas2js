unit dhtmlx_layout;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web,dhtmlx_base;

type

  TDHTMLXLayoutCell = class external name 'dhtmlXLayoutCell' (TJSElement)
    procedure appendObject(aObj : JSValue);	                                //attaches an object to a cell without clearing cell content
    function attachAccordion(conf : TJSObject): JSValue;	                //attaches dhtmlxAccordion to a cell
    function attachCarousel(conf : TJSObject): JSValue;	                        //attaches a carousel object to a cell
    function attachChart(conf : TJSObject): JSValue;	                        //attaches dhtmlxChart to a cell
    function attachDataView(conf : TJSObject): JSValue;	                        //attaches dhtmlxDataView to a cell
    //attachEditor	attaches dhtmlxEditor to a cell
    function attachForm(conf : TJSObject): JSValue;	                        //attaches dhtmlxForm to a cell
    function attachGrid(conf : TJSObject): JSValue;	                        //attaches dhtmlxGrid to a cell
    //attachHTMLString	attaches HTML content to a cell
    function attachLayout(conf : TJSObject): JSValue;	                        //attaches dhtmlxLayout to a cell
    //attachList	attaches dhtmlxList to a cell
    //attachMap	attaches Google Maps to a cell
    //attachMenu	attaches dhtmlxMenu to a cell
    //attachObject	attaches an HTML object to a cell
    //attachRibbon	attaches dhtmlxRibbon to a cell
    //attachScheduler	attaches dhtmlxScheduler to a cell
    //attachSidebar	attaches dhtmlxSidebar to a cell
    //attachStatusBar	attaches a status bar to a cell
    //attachTabbar	attaches dhtmlxTabbar to a cell
    //attachToolbar	attaches dhtmlxToolbar to a cell
    function attachTreeView(): JSValue;varargs;	                                //attaches dhtmlxTree to a cell
    //attachTreeView	attaches dhtmlxTreeView to a cell
    //attachURL	attaches the specified URL to a cell
    //attachVault	attaches dhtmlxVault to a cell
    procedure collapse;	                                                        //collapses a cell
    cell : JSValue;
    conf : TJSObject;
    //detachMenu	detaches dhtmlxMenu from a cell
    //detachObject	detaches any attached content from a cell
    //detachRibbon	detaches dhtmlxRibbon from a cell
    //detachStatusBar	detaches status bar from a cell
    //detachToolbar	detaches dhtmlxToolbar from a cell
    procedure dock;	                                                        //docks content from the window to layout cell
    procedure expand;	                                                        //expands a cell
    procedure fixSize;varargs;	                                                //fixes the size of a cell
    //getAttachedMenu	returns dhtmlxMenu instance attached to a cell
    //getAttachedObject	returns the object attached to a cell
    //getAttachedRibbon	returns dhtmlxRibbon instance attached to a cell
    //getAttachedStatusBar	returns status bar object attached to a cell
    //getAttachedToolbar	returns dhtmlxToolbar instance attached to a cell
    function getCollapsedText : string;	                                        //returns text for collapsed cell
    //getFrame	returns an iframe object when an URL is attached to a cell
    function getHeight : Integer;	                                        //returns cell height
    function getId : JSValue;	                                                //returns the id of a cell
    //getIndex;depricated;	returns cell index
    function getText: string;	                                                //returns header text
    //getViewName	returns the name of the current view
    function getWidth : Integer;	                                        //returns cell width
    procedure hideArrow;	                                                //hides the header arrow for the specified cell
    procedure hideHeader;	                                                //hides cell header
    //hideMenu	hides dhtmlxMenu attached to a cell
    //hideRibbon	hides dhtmlxRibbon attached to a cell
    //hideStatusBar	hides status bar object attached to a cell
    procedure hideToolbar;	                                                //hides dhtmlxToolbar attached to a cell
    //isArrowVisible	returns true if the header arrow is visible
    //isCollapsed	returns true if a cell is collapsed
    //isHeaderVisible	returns true if a header is visible
    procedure progressOff;	                                                //hides the progress indicator in a cell
    procedure progressOn;	                                                //shows the progress indicator in a cell
    //reloadURL	reloads the attached URL in a cell
    procedure setCollapsedText(text : string);	                                //sets header text for collapsed cell
    procedure setHeight(height : Integer);	                                //sets cell height
    //setMinHeight	sets minimal height of a layout cell
    //setMinWidth	sets minimal width of a layout cell
    procedure setText(text : string);	                                        //set header text
    procedure setWidth(width : Integer);	                                //sets cell width
    //showArrow	shows the header arrow for the specified cell
    procedure showHeader;	                                                //shows the header of a cell
    procedure showInnerScroll;	                                                //shows inner cell scrolls
    //showMenu	shows dhtmlxMenu attached to a cell
    //showRibbon	shows dhtmlxRibbon attached to a cell
    //showStatusBar	shows status bar object attached to a cell
    //showToolbar	shows dhtmlxToolbar attached to a cell
    //showView	shows the specified view, creates a new one if it doesn't exist
    //undock	undocks content from layout cell to the window
    //unloadView	unloads the specified view
  end;

  TDHTMLXLayout = class external name 'dhtmlXLayoutObject' (TJSElement)
    constructor New(Pattern : JSValue);varargs;
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    //attachFooter	attaches footer to component's bottom
    //attachHeader	attaches header to component's top
    //attachMenu	attaches dhtmlxMenu to component's top
    //attachRibbon	attaches dhtmlxRibbon to component's top
    //attachStatusBar	attaches a status bar object to component's bottom
    function attachToolbar(conf : TJSObject) : JSValue;	                        //attaches dhtmlxToolbar to component's top
    function cells(name : string) : TDHTMLXLayoutCell;                          //returns the cell object by the id
    conf : TJSObject;
    //detachEvent	detaches a handler from an event
    //detachFooter	detaches footer from component's bottom
    //detachHeader	detaches header from component's top
    //detachMenu	detaches dhtmlxMenu from component's top
    //detachRibbon	detaches dhtmlxRibbon from component's top
    //detachStatusBar	detaches status bar object from component's bottom
    //detachToolbar	detaches dhtmlxToolbar from component's top
    //dockWindow	docks content from the window to layout cell
    //forEachItem	iterator, calls a user-defined function for each cell
    //getAttachedMenu	returns dhtmlxMenu instance attached to component's top
    //getAttachedRibbon	returns dhtmlxRibbon instance attached to component's top
    //getAttachedStatusBar	returns status bar object attached to component's bottom
    //getAttachedToolbar	returns dhtmlxToolbar instance attached to component's top
    //getEffect	returns true if the effect is enabled
    //getIdByIndex	returns cell id by index
    //getIndexById	returns cell index by id
    //hideMenu	hides dhtmlxMenu attached to component's top
    //hidePanel	hides cell header
    //hideRibbon	hides dhtmlxRibbon attached to component's top
    //hideStatusBar	hides status bar object attached to component's bottom
    //hideToolbar	hides dhtmlxToolbar attached to component's top
    //isPanelVisible	returns true, if cell header is visible
    //listAutoSizes	returns array with autosize settings for loaded layout (depends on pattern)
    //listPatterns	returns array with available layout patterns
    //listViews	returns array with available layout patterns
    procedure progressOff;	                                                //hides progress indicator for full component
    procedure progressOn;	                                                //shows progress indicator for full component
    procedure setAutoSize;	                                                //sets autosize for the layout
    //setEffect	sets effect
    //setImagePath	sets path to images
    procedure setOffsets(conf : TJSObject);     	                        //sets offsets for parent container from each side
    //setSeparatorSize	sets the width of a separator line in pixels
    procedure setSizes;	                                                        //adjusts layout's outer size when parent's size changed
    //setSkin	sets skin
    //showMenu	shows dhtmlxMenu attached to component's top
    //showPanel	shows cell header
    //showRibbon	shows dhtmlxRibbon attached to component's top
    //showStatusBar	shows status bar object attached to component's bottom
    //showToolbar	shows dhtmlxToolbar attached to component's bottom
    //unDockWindow	undocks content from layout cell to the window
    //unload	destructor, unloads layout
  end;


implementation

end.

