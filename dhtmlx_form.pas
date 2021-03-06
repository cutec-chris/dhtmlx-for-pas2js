unit dhtmlx_form;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  web;

type
  TDHTMLXOptionElement = class external name 'HTMLOptionElement'
    constructor New(parent : JSValue);varargs;
  end;

  TDHTMLXFormOptions = class external name 'HTMLOptionsCollection'
    procedure add(item : TDHTMLXOptionElement);
  end;

  TDHTMLXForm = class external name 'dhtmlXForm' (TJSElement)
    constructor New(parent : JSValue);varargs;
    procedure addItem(pId : JSValue;itemData : JSValue);varargs;                //adds an item to the form
    procedure adjustParentSize;	                                                //adjusts the parent's size to the form content
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    //checkItem	checks a checkbox or a radio button
    procedure clear;	                                                        //clears the list of files
    //clearBackup	deletes the specified backup
    //clearNote	removes the note block from an input or a radio button
    procedure clearValidation(name : string);varargs;	                        //removes all validation rules from an input
    procedure detachEvent(id : JSValue);	                                //detaches a handler from an event
    procedure disableItem(name : string);varargs;                               //disables an item
    procedure enableItem(name : string);varargs;	                        //enables an item
    procedure enableLiveValidation(enable : Boolean);	                        //sets the mode when validation is invoked just after an input goes out of focus
    procedure forEachItem(Iterator : JSValue);	                                //iterator, calls a user-defined handler for each item
    //getCalendar	returns dhtmlxCalendar instance
    //getCheckedValue	returns the value of the checked radio button
    //getColorPicker	returns dhtmlxColorPicker instance
    //getColumnNode	returns the DOM node of the specified column
    //getCombo	returns dhtmlxCombo instance
    function getContainer(id : JSValue) : TJSHtmlElement;                       //returns the HTMLElement object of the container control
    //getEditor	returns dhtmlxEditor instance
    //getFirstActive	returns the first element of the form
    //getForm	returns dhtmlxForm instance
    //getFormData	returns a hash of data values
    //getInput	returns item object (input, textarea, password, calendar, colorpicker, hidden only)
    //getItemLabel	returns the label of an item
    //getItemText	returns the text of an item
    //getItemType	returns the type of an item
    function getItemValue(name : string) : JSValue;	                        //returns the value of an item
    //getItemWidth	returns the width of an item set either by init or by the [setItemWidth()](setItemWidth) method
    //getItemsList	returns an array with the names of the form's items
    function getOptions(item : JSValue) : TDHTMLXFormOptions;	                                //returns the options of an item (select, multiselect only)
    //getSelect	returns an item's object (select, multiselect only)
    //getUploader	returns the uploader instance
    //getUploaderStatus	returns the status of uploading
    function getUserData(name,value,udKey : string) : JSValue;	                //returns any user data set into the given input by the setUserData() method
    procedure hideItem(name : string);	                                        //hides an item
    function isItem(name : string) : Boolean;	                                //returns "true" if an item exists
    //isItemChecked	returns "true" if an item is checked (a checkbox and a radio button only)
    //isItemEnabled	returns "true" if an item is enabled
    function isItemHidden(name : string) : Boolean;                          	//returns "true" if an item is hidden
    //isLocked	returns "true" if the form is locked
    //isReadonly	returns "true" if an item is readonly
    //load	loads data to the component via XML or JSON, usually data-values pairs
    procedure loadStruct(struct : JSValue);	                                //loads data to the component via XML or JSON, usually component config
    //loadStructHTML	loads dhtmlxForm from HTML form structure
    //loadStructString	loads XML string into dhtmlxForm instance
    procedure lock;	                                                        //locks the form (disables all the items)
    //reloadOptions	reloads options of the item (combo, select, multiselect only)
    //removeColumn	removes the specified item
    procedure removeItem(id : JSValue);	                                        //removes an item
    procedure reset;	                                                        //resets the items of the form saved by means of the load or save methods to their initial states
    //resetDataProcessor	sets the mode of saving, if Form is used together with DataProcessor
    //resetValidateCss	resets CSS treatment of the form's validation
    //restoreBackup	restores the specified backup
    //save	saves the form's data in DB
    //saveBackup	creates a backup of the form
    //send	saves data to the server side script
    procedure setCalendarDateFormat(name,mask,servermask : string);             //sets the format of date presentation in the calendar input
    procedure setFocusOnFirstActive;	                                        //moves the focus on the first form's element
    //setFontSize	sets the font size for the whole form
    //setFormData	sets values for all items (form's controls) in the component
    procedure setItemFocus(name : string);	                                //sets the keyboard focus on the specified item
    //setItemHeight	sets the height of a textarea
    //setItemLabel	sets the label of an item
    //setItemText	sets the text of an item
    procedure setItemValue(name : string;value : JSValue);                      //sets the value of an item or clears the list in uploader (if the 2nd param is omitted)
    //setItemWidth	sets the width of an item
    //setNote	adds the note block under the specified input
    //setNumberFormat	allows setting the format of numeric data (for inputs only)
    //setReadonly	makes an item readonly
    procedure setRequired(name : string;required : Boolean);	                //makes/unmakes a certain field required
    //setSkin	sets skin for a form
    //setTooltip	sets a tooltip for an item
    procedure setUserData(name,value : string;udValue : JSValue);	        //allows attaching user data to a form without modifying the DOM
    //setValidateCss	sets CSS treatment of the form validation
    procedure setValidation(name : string;rule : string);	                //adds a validation rule to the input with the specified name
    procedure showItem(name : string);	                                        //shows an item
    //uncheckItem	unchecks an item (a checkbox or a radio button only)
    //unload	destructor, removes the form instance and cleans the used memory
    procedure unlock;	                                                        //unlocks the form (enables all the items)
    //updateValues	updates the inputs' values
    procedure validate;	                                                        //starts the form's validation
    function validateItem(name : string) : JSValue;	                        //invokes the validation of the specified item
    cont : TJSHTMLElement;
  end;

implementation

end.

