unit dhtmlx_carousel;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web;

type
  TDHTMLXCarouselCell = class external name 'dhtmlXCarouselCell' (TJSElement)
    procedure appendObject(aObj : JSValue);	                                //attaches an object to a cell without clearing cell content
    function attachAccordion(conf : TJSObject): JSValue;	                //attaches dhtmlxAccordion to a cell
    function attachCarousel(conf : TJSObject): JSValue;	                        //attaches a carousel object to a cell
    function attachChart(conf : TJSObject): JSValue;	                        //attaches dhtmlxChart to a cell
    function attachContextMenu(conf : TJSObject): JSValue;	                //attaches a context menu to windows globally, if a custom menu hasn't been set for each window
    function attachDataView(conf : TJSObject): JSValue;	                        //attaches dhtmlxDataView to a cell
    function attachEditor(conf : TJSObject): JSValue;	                        //attaches dhtmlxEditor to a cell
    function attachForm(conf : TJSObject): JSValue;	                        //attaches dhtmlxForm to a cell
    function attachGrid(conf : TJSObject): JSValue;                             //attaches dhtmlxGrid to a cell
    procedure attachHTMLString(htmlString : string);	                        //attaches HTML content to a cell
    function attachLayout(conf : TJSObject): JSValue;	                        //attaches dhtmlxLayout to a cell
    function attachList(conf : TJSObject): JSValue;	                        //attaches dhtmlxList to a cell
    function attachMap(conf : TJSObject): JSValue;	                        //attaches Google Maps to a cell
    function attachMenu(conf : TJSObject): JSValue;	                        //attaches dhtmlxMenu to a cell
    procedure attachObject(aObj : JSValue);	                                //attaches an HTML object to a cell
    function attachRibbon(conf : TJSObject): JSValue;	                        //attaches dhtmlxRibbon to a cell
    function attachScheduler(conf : TJSObject): JSValue;	                //attaches dhtmlxScheduler to a cell
    function attachSidebar(conf : TJSObject): JSValue;	                        //attaches dhtmlxSidebar to a cell
    function attachStatusBar(conf : TJSObject): JSValue;	                //attaches a status bar to a cell
    function attachTabbar(conf : TJSObject): JSValue;	                        //attaches dhtmlxTabbar to a cell
    function attachToolbar(conf : TJSObject): JSValue;	                        //attaches dhtmlxToolbar to a cell
    function attachTree(conf : TJSObject): JSValue;	                        //attaches dhtmlxTree to a cell
    function attachTreeView(conf : TJSObject): JSValue;	                        //attaches dhtmlxTreeView to a cell
    procedure attachURL(url : string);varargs;	                                //attaches the specified URL to a cell
    function attachVault(conf : TJSObject): JSValue;	                        //attaches dhtmlxVault to a cell
    //detachMenu	detaches dhtmlxMenu from a cell
    procedure detachObject(obj : JSValue);	                                //detaches any attached content from a cell
    //detachRibbon	detaches dhtmlxRibbon from a cell
    //detachStatusBar	detaches status bar from a cell
    //detachToolbar	detaches dhtmlxToolbar from a cell
    //getAttachedMenu	returns dhtmlxMenu instance attached to a cell
    //getAttachedObject	returns the object attached to a cell
    //getAttachedRibbon	returns dhtmlxRibbon instance attached to a cell
    //getAttachedStatusBar	returns status bar object attached to a cell
    //getAttachedToolbar	returns dhtmlxToolbar instance attached to a cell
    //getFrame	returns an iframe object when an URL is attached to a cell
    //getId	returns the id of a cell
    //getIndex	returns the index of a cell
    //getViewName	returns the name of the current view
    //hideMenu	hides dhtmlxMenu attached to a cell
    //hideRibbon	hides dhtmlxRibbon attached to a cell
    //hideStatusBar	hides status bar object attached to a cell
    //hideToolbar	hides dhtmlxToolbar attached to a cell
    procedure progressOff;	                                                //hides the progress indicator in a cell
    procedure progressOn;	                                                //shows the progress indicator in a cell
    //reloadURL	reloads the attached URL in a cell
    //remove	removes the specified cell
    //setActive	selects the specified cell
    //showInnerScroll	shows inner cell scrolls
    //showMenu	shows dhtmlxMenu attached to a cell
    //showRibbon	shows dhtmlxRibbon attached to a cell
    //showStatusBar	shows status bar object attached to a cell
    //showToolbar	shows dhtmlxToolbar attached to a cell
    //showView	shows the specified view, creates a new one if it doesn't exist
    //unloadView	unloads the specified view
  end;

  TDHTMLXCarousel = class external name 'dhtmlXCarousel' (TJSElement)
    constructor New(parent : JSValue);varargs;
    procedure addCell(id : JSValue;index : Integer);	                        //adds a new cell to the carousel
    //attachEvent	adds any user-defined handler to available events
    //attachFooter	attaches footer to component's bottom
    //attachHeader	attaches header to component's top
    //attachMenu	attaches dhtmlxMenu to component's top
    //attachRibbon	attaches dhtmlxRibbon to component's top
    //attachStatusBar	attaches a status bar object to component's bottom
    //attachToolbar	attaches dhtmlxToolbar to component's top
    function cells(id : JSValue): TDHTMLXCarouselCell;	                        //returns dhtmlXCarouselCell instance (a cell of carousel)
    //detachEvent	detaches a handler from an event
    //detachFooter	detaches footer from component's bottom
    //detachHeader	detaches header from component's top
    //detachMenu	detaches dhtmlxMenu from component's top
    //detachRibbon	detaches dhtmlxRibbon from component's top
    //detachStatusBar	detaches status bar object from component's bottom
    //detachToolbar	detaches dhtmlxToolbar from component's top
    //enableHotKeys	enables hot keys for arrow buttons
    //forEachCell	an iterator, calls a user-defined handler for each cell
    //getActiveCell	returns object of the active cell
    //getActiveId	returns the id of the active cell
    //getActiveIndex	returns the index of the active cell
    //getAttachedMenu	returns dhtmlxMenu instance attached to component's top
    //getAttachedRibbon	returns dhtmlxRibbon instance attached to component's top
    //getAttachedStatusBar	returns status bar object attached to component's bottom
    //getAttachedToolbar	returns dhtmlxToolbar instance attached to component's top
    //goFirst	switches to the first carousel cell
    //goLast	switches to the last carousel cell
    //goNext	switches to the next cell
    //goPrev	switches to the previous cell
    procedure hideControls;	                                                //hides the button controls used for switching carousel cells
    //hideMenu	hides dhtmlxMenu attached to component's top
    //hideRibbon	hides dhtmlxRibbon attached to component's top
    //hideStatusBar	hides status bar object attached to component's bottom
    //hideToolbar	hides dhtmlxToolbar attached to component's top
    //progressOff	hides progress indicator for full component
    //progressOn	shows progress indicator for full component
    //setCellSize	sets width and height of the cell
    //setOffset	sets cell offsets withing visible area
    //setOffsets	sets offsets for parent container from each side
    procedure setSizes;	                                                        //changes object instance's size according to the outer container
    //showControls	shows the button controls used for switching carousel cells
    //showMenu	shows dhtmlxMenu attached to component's top
    //showRibbon	shows dhtmlxRibbon attached to component's top
    //showStatusBar	shows status bar object attached to component's bottom
    //showToolbar	shows dhtmlxToolbar attached to component's bottom
    //unload	unloads the carousel component (destructor)
    area : TJSHTMLElement;
  end;

implementation

end.

