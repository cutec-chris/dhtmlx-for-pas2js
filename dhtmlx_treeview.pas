unit dhtmlx_treeview;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web,dhtmlx_base;

type

  { TSidebar }

  TDHTMLXTreeview = class external name 'dhtmlXTreeView' (TJSElement)
    Constructor New(Pattern : JSValue);varargs;
    procedure addItem(id : JSValue;Text : JSValue);varargs;   //adds a new item into TreeView
    area : JSValue;
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    //checkItem	checks the item's checkbox
    //clearAll	removes all the loaded items from TreeView and repaints the component
    //closeItem	collapses an item
    //deleteChildItems	deletes child items of the node
    procedure deleteItem(id : JSValue);	                                        //deletes an item
    procedure detachEvent(id : JSValue);	                                //detaches a handler from an event
    //disableCheckbox	disables a particular checkbox in TreeView
    //enableCheckbox	enables a particular checkbox in TreeView
    //enableCheckboxes	shows/hides checkboxes (all checkboxes in the treeview)
    //enableContextMenu	enables context menu
    //enableDragAndDrop	enables drag-n-drop in TreeView
    //enableMultiselect	allows selecting multiple items in TreeView
    //getAllChecked	returns an array of checked items' ids
    //getAllUnchecked	returns an array of unchecked items' ids
    //getItemText	returns the item's text
    //getLevel	returns the level index of the specified item
    //getParentId	returns the item's parent id
    //getSelectedId	returns the selected item's id
    function getSubItems(aId : JSValue) : TJSArray;	                        //returns a comma-delimited list of ids of all children nested on the sublevel in relation to the specified item
    function getUserData(id : JSValue;name: string) : JSValue;                  //returns any user data set into the given input by the setUserData method
    procedure hideCheckbox(id : JSValue);	                                //hides the item's checkbox
    //isCheckboxEnabled	checks if the item's checkbox is enabled
    //isCheckboxVisible	checks if the item's checkbox is visible
    //isItemChecked	returns the state of the item's checkbox
    //loadStruct	loads data to the component via XML or JSON, usually component config
    procedure openItem(id : JSValue);	                                        //opens the specified item
    procedure refreshItem(id : JSValue);	                                //reloads subitems of the specified node
    procedure selectItem(id : JSValue);	                                        //selects an item
    //setIconColor	sets a color for the item's icon, if Font Awesome is used
    //setIconset	enables the font-awesome iconset
    procedure setItemIcons(id : JSValue;icons : TJSObject);	                //sets custom icons for an item
    //setItemText	sets a new item's text
    //setSizes	adjusts the TreeView sizes, if dimension of its parent was changed
    //setSkin	sets a skin for TreeView
    procedure setUserData(id : JSValue;name : string;value : JSValue);          //allows attaching user data to a treeview without modifying the DOM
    procedure showCheckbox(id : JSValue);	                                //shows the item's checkbox
    procedure showItem(id : JSValue);	                                        //scrolls a TreeView to make the specified item visible
    //silent	calls treeview function w/o triggering events
    procedure uncheckItem(id : JSValue);	                                //unchecks the item's checkbox
    //unload	destructor, unloads TreeView
    procedure unselectItem(id : JSValue);	                                //unselects the item, if it's selected
  end;

implementation

end.

