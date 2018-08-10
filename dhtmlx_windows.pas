unit dhtmlx_windows;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web,dhtmlx_base;

type

  TDHTMLXWindowsCell  = class external name 'dhtmlXWindowsCell' (TJSElement)
    //addUserButton	adds a user button
    procedure adjustPosition;	                                                //adjusts window position inside viewport
    procedure allowMove;	                                                //allows a window to be moved
    procedure allowPark;	                                                //allows a window to be parked
    procedure allowResize;	                                                //allows a window to be resized
    procedure appendObject(aObj : JSValue);	                                //attaches an object to a cell without clearing cell content
    function attachAccordion(conf : TJSObject): JSValue;	                //attaches dhtmlxAccordion to a cell
    function attachCarousel(conf : TJSObject): JSValue;	                        //attaches a carousel object to a cell
    function attachChart(conf : TJSObject): JSValue;	                        //attaches dhtmlxChart to a cell
    function attachContextMenu(conf : TJSObject): JSValue;	                //attaches a context menu to windows globally, if a custom menu hasn't been set for each window
    function attachDataView(conf : TJSObject): JSValue;	                        //attaches dhtmlxDataView to a cell
    function attachEditor(conf : TJSObject): JSValue;	                        //attaches dhtmlxEditor to a cell
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
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
    procedure bringToBottom;	                                                //brings/sends a window to the bottom (z-positioning)
    procedure bringToTop;	                                                //brings/sends a window to the top (z-positioning)
    //button	returns the button instance (dhtmlXWindowBtn object) found by id
    procedure center;	                                                        //centers a window in the viewport
    procedure centerOnScreen;	                                                //centers a window on the screen
    //clearIcon	clears window's header icon
    procedure close;	                                                        //closes a window
    //denyMove	doesn't allow a window to be moved
    //denyPark	doesn't allow a window to be parked
    //denyResize	doesn't allow a window to be resized
    //detachContextMenu	detaches a context menu from windows globally or detaches a custom window's menu
    procedure detachEvent(id : JSValue);	                                //detaches a handler from an event
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
    //getContextMenu	returns the context menu object attached to a window
    //getDimension	returns current window's dimension
    //getFrame	returns an iframe object when an URL is attached to a cell
    //getIcon	returns current window's header icon
    //getId	returns the id of a cell
    //getMaxDimension	returns current max dimension of the window
    //getMinDimension	returns current min dimension of the window
    //getPosition	returns current window's position
    function getText : string;	                                                //returns window's header text
    //getViewName	returns the name of the current view
    procedure hide;	                                                        //hides a window
    procedure hideHeader;	                                                //hides window's header
    procedure hideMenu;	                                                        //hides dhtmlxMenu attached to a cell
    procedure hideRibbon;	                                                //hides dhtmlxRibbon attached to a cell
    procedure hideStatusBar;	                                                //hides status bar object attached to a cell
    procedure hideToolbar;	                                                //hides dhtmlxToolbar attached to a cell
    function isHidden : Boolean;                                                //checks the window's state: shown or hidden
    function isMaximized : Boolean;	                                        //checks if the window is maximized
    function isModal : Boolean;	                                        	//checks if the window is modal
    function isMovable : Boolean;	                                        //checks if the window is movable
    function isOnBottom : Boolean;	                                        //checks if the window is at the bottom
    function isOnTop : Boolean;	                                                //checks if the window is on the top
    function isParkable : Boolean;	                                        //checks if the window is parkable
    function isParked : Boolean;	                                        //checks if the window is parked
    function isResizable : Boolean;	                                        //checks if the window is resizable
    function isSticked : Boolean;	                                        //checks if the window is sticked
    //keepInViewport	keeps a window within the viewport
    procedure maximize;	                                                        //maximizes a window
    procedure minimize;	                                                        //minimizes a window
    //park	parks a window (next action is based on window's current state)
    procedure progressOff;	                                                //hides the progress indicator in a cell
    procedure progressOn;	                                                //shows the progress indicator in a cell
    //reloadURL	reloads the attached URL in a cell
    //removeUserButton	removes a user button
    //restoreIcon	restores default window's header icon (based on skin)
    //setDimension	sets window's dimension
    //setIcon	sets window's header icon
    //setIconCss	sets CSS style for an icon of the window
    //setMaxDimension	sets max window's dimension
    //setMinDimension	sets min window's dimension
    //setModal	makes a window modal/modeless
    //setPosition	sets window's position (moves a window to the point set by a user)
    procedure setText(text : string);	                                        //sets window's header text
    //setToFullScreen	sets a window to the fullscreen mode
    procedure show;	                                                        //shows a window
    //showHeader	shows window's header
    //showInnerScroll	shows inner cell scrolls
    //showMenu	shows dhtmlxMenu attached to a cell
    //showRibbon	shows dhtmlxRibbon attached to a cell
    //showStatusBar	shows status bar object attached to a cell
    //showToolbar	shows dhtmlxToolbar attached to a cell
    //showView	shows the specified view, creates a new one if it doesn't exist
    procedure stick;	                                                        //sticks a window
    //unloadView	unloads the specified view
    procedure unstick;	                                                        //unsticks a window
  end;

  TDHTMLXWindows = class external name 'dhtmlXWindows' (TJSElement)
    Constructor New();varargs;
    //attachContextMenu	attaches a context menu to a window icon
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    //attachViewportTo	attaches a viewport to an existing object on the page (renders an object as a viewport)
    function createWindow(id : JSValue;x,y,width,height : Integer) : TDHTMLXWindowsCell;
                                                                                //creates a new window and returns its handler
    //detachContextMenu	detaches a context menu from windows globally or detaches a custom window's menu
    //detachEvent	detaches a handler from an event
    //enableAutoViewport	if set to true, allows an object to adjust the viewport automatically to document.body
    function findByText(text : string) : TJSArray;	                        //returns an array of window handlers found by header text
    procedure forEachWindow(handler : JSValue);	                        //iterator - goes through all windows and calls a user handler
    //getBottommostWindow	returns the bottommost window
    //getContextMenu	returns the context menu object attached to a window
    //getEffect	returns true, if the effect is enabled
    //getTopmostWindow	returns the topmost window
    //isWindow	checks if a window with the specified id exists
    //setEffect	sets a visual effect
    //setImagePath	sets path to the directory where used images are located
    //setSkin	changes window's skin
    //setViewport	sets a user-defined viewport
    //unload	unloads an object and clears memory
    function window(id : string) : TDHTMLXWindowsCell;	                        //returns a window instance (dhtmlXWindowsCell object) found by id
  end;

var Windows : TDHTMLXWindows;

implementation

function LoadWindows(aValue: JSValue): JSValue;
begin
  Windows := TDHTMLXWindows.New();
end;

initialization
  WidgetsetLoaded._then(@LoadWindows);
end.

