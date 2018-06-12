unit dhtmlx_windows;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web,dhtmlx_base;

type

  TDHTMLXWindowsCell  = class external name 'dhtmlXWindowsCell' (TJSElement)
    //addUserButton	adds a user button
    //adjustPosition	adjusts window position inside viewport
    //allowMove	allows a window to be moved
    //allowPark	allows a window to be parked
    //allowResize	allows a window to be resized
    //appendObject	attaches an object to a cell without clearing cell content
    //attachAccordion	attaches dhtmlxAccordion to a cell
    //attachCarousel	attaches a carousel object to a cell
    //attachChart	attaches dhtmlxChart to a cell
    //attachContextMenu	attaches a context menu to windows globally, if a custom menu hasn't been set for each window
    //attachDataView	attaches dhtmlxDataView to a cell
    //attachEditor	attaches dhtmlxEditor to a cell
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    function attachForm(conf : TJSObject): JSValue;	                        //attaches dhtmlxForm to a cell
    //attachGrid	attaches dhtmlxGrid to a cell
    //attachHTMLString	attaches HTML content to a cell
    //attachLayout	attaches dhtmlxLayout to a cell
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
    //attachTree	attaches dhtmlxTree to a cell
    //attachTreeView	attaches dhtmlxTreeView to a cell
    //attachURL	attaches the specified URL to a cell
    //attachVault	attaches dhtmlxVault to a cell
    //bringToBottom	brings/sends a window to the bottom (z-positioning)
    //bringToTop	brings/sends a window to the top (z-positioning)
    //button	returns the button instance (dhtmlXWindowBtn object) found by id
    //center	centers a window in the viewport
    //centerOnScreen	centers a window on the screen
    //clearIcon	clears window's header icon
    procedure close;	                                                        //closes a window
    //denyMove	doesn't allow a window to be moved
    //denyPark	doesn't allow a window to be parked
    //denyResize	doesn't allow a window to be resized
    //detachContextMenu	detaches a context menu from windows globally or detaches a custom window's menu
    //detachEvent	detaches a handler from an event
    //detachMenu	detaches dhtmlxMenu from a cell
    //detachObject	detaches any attached content from a cell
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
    //hide	hides a window
    //hideHeader	hides window's header
    //hideMenu	hides dhtmlxMenu attached to a cell
    //hideRibbon	hides dhtmlxRibbon attached to a cell
    //hideStatusBar	hides status bar object attached to a cell
    //hideToolbar	hides dhtmlxToolbar attached to a cell
    //isHidden	checks the window's state: shown or hidden
    //isMaximized	checks if the window is maximized
    //isModal	checks if the window is modal
    //isMovable	checks if the window is movable
    //isOnBottom	checks if the window is at the bottom
    //isOnTop	checks if the window is on the top
    //isParkable	checks if the window is parkable
    //isParked	checks if the window is parked
    //isResizable	checks if the window is resizable
    //isSticked	checks if the window is sticked
    //keepInViewport	keeps a window within the viewport
    //maximize	maximizes a window
    //minimize	minimizes a window
    //park	parks a window (next action is based on window's current state)
    //progressOff	hides the progress indicator in a cell
    //progressOn	shows the progress indicator in a cell
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
    //show	shows a window
    //showHeader	shows window's header
    //showInnerScroll	shows inner cell scrolls
    //showMenu	shows dhtmlxMenu attached to a cell
    //showRibbon	shows dhtmlxRibbon attached to a cell
    //showStatusBar	shows status bar object attached to a cell
    //showToolbar	shows dhtmlxToolbar attached to a cell
    //showView	shows the specified view, creates a new one if it doesn't exist
    //stick	sticks a window
    //unloadView	unloads the specified view
    //unstick	unsticks a window
  end;

  TDHTMLXWindows = class external name 'dhtmlXWindows' (TJSElement)
    Constructor New();varargs;
    //attachContextMenu	attaches a context menu to a window icon
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    //attachViewportTo	attaches a viewport to an existing object on the page (renders an object as a viewport)
    procedure createWindow(id : string;x,y,width,height : Integer);             //creates a new window and returns its handler
    //detachContextMenu	detaches a context menu from windows globally or detaches a custom window's menu
    //detachEvent	detaches a handler from an event
    //enableAutoViewport	if set to true, allows an object to adjust the viewport automatically to document.body
    //findByText	returns an array of window handlers found by header text
    //forEachWindow	iterator - goes through all windows and calls a user handler
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

