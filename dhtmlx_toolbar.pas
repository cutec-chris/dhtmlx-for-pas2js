unit dhtmlx_toolbar;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web;

type
  TDHTMLXToolbar = class external name 'dhtmlXForm' (TJSElement)
    constructor New(parent : JSValue);varargs;
    //addButton	adds a button to the toolbar
    //addButtonSelect	adds a select button to the toolbar
    //addButtonTwoState	adds a two-state button to the toolbar
    //addInput	adds an input item to the toolbar
    //addListOption	adds a listed option to a select button
    //addSeparator	adds a separator to the toolbar
    //addSlider	adds a slider to the toolbar
    //addSpacer	moves all items to the right side of the specified one
    //addText	adds a text item to the toolbar
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    //clearAll	removes all items from the toolbar
    //clearItemImage	removes an image of an item in the enabled state
    //clearItemImageDis	removes the image of an item in the disabled state
    //clearListOptionImage	removes an image (if exists) of a listed option
    procedure detachEvent(id : JSValue);	                                //detaches a handler from an event
    //disableItem	disables the specified item
    //disableListOption	disables a listed option
    //enableItem	enables the specified item
    //enableListOption	enables a listed option
    //forEachItem	iterator, calls a user-defined handler for each item
    //forEachListOption	calls a user-defined handler for each listed option of a parentId
    //getAllListOptions	returns an array with ids of all the listed options of a parentId
    //getInput	returns an item's object (input only)
    //getItemState	returns the current state of a two-state button
    //getItemText	returns the current text of an item
    //getItemToolTip	returns the current item's tooltip
    //getItemToolTipTemplate	returns the current tooltip template of a slider
    //getListOptionImage	returns the image of a listed option
    //getListOptionPosition	returns the position of a listed option
    //getListOptionSelected	returns the selected listed option
    //getListOptionText	returns the text of a listed option
    //getListOptionToolTip	returns the tooltip of a listed option
    //getListOptionUserData	returns the userdata of a listed option
    //getMaxValue	returns current maximal value and the label of a slider
    //getMinValue	returns the current minimal value and the label of a slider
    //getParentId	returns the parent id of a listed option
    //getPosition	returns the current position of an item
    //getType	returns item type by item id
    //getTypeExt	returns the extended item type by the item id (button select node)
    //getUserData	returns userdata of an item
    //getValue	returns the current value of a slider or an input item
    //getWidth	returns the current width of an input item
    //hideItem	hides the specified item
    //hideListOption	hides a listed option
    //isEnabled	returns "true" if an item is enabled
    //isListOptionEnabled	checks whether a listed option is enabled
    //isListOptionVisible	checks whether a listed option is visible
    //isVisible	returns "true" if an item is visible
    //loadStruct	loads data to the component via XML or JSON, usually component config
    //loadXML	loads toolbar data from an XML file and calls the onLoadFunction when the loading is done
    //loadXMLString	loads menu data from an XML string and calls onLoadFunction when loading is done
    //removeItem	completely removes an item from the toolbar
    //removeListOption	completely removes a listed option from a select button
    //removeSpacer	removes the free space between the specified item and the items on its right side
    //setAlign	moves the toolbar items to the left/right side
    //setIconPath	defines the url to the folder where the user-defined icons are located
    //setIconSize	sets the size of icons in the toolbar (applied to all items at once)
    //setIconsPath	sets the path to the folder with the user-defined images
    //setIconset	sets the font awesome iconset
    //setItemImage	sets an image for an item in the enabled state
    //setItemImageDis	sets an image for an item in the disabled state
    //setItemState	sets the pressed/released state for a two-state button
    //setItemText	sets a new text for an item
    //setItemToolTip	sets a tooltip for an item
    //setItemToolTipTemplate	sets a tooltip template for a slider
    //setListOptionImage	sets an image for a listed option
    //setListOptionPosition	sets the position of a listed option (moves a listed option)
    //setListOptionSelected	sets a listed option selected
    //setListOptionText	sets a text for a listed option
    //setListOptionToolTip	sets a tooltip for a listed option
    //setListOptionUserData	sets userdata for a listed option
    //setMaxOpen	defines the maximal number of listed options shown for a select button
    //setMaxValue	sets the maximal value and a label for a slider
    //setMinValue	sets the minimal value and a label for a slider
    //setPosition	sets a new position for an item (moves an item to the desired position)
    //setSkin	sets a skin on the fly
    //setUserData	sets userdata for an item
    //setValue	sets a value for a slider or an input item
    //setWidth	sets a width for a text/input/buttonSelect item
    //showItem	shows the specified item
    //showListOption	shows a listed option
    //unload	destructor, completely unloads the toolbar
  end;

implementation

end.

