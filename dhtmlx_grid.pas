unit dhtmlx_grid;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web;

type
  TDHTMLXGridCellObject = class external name 'dhtmlXGridCellObject' (TJSElement)
    function isChecked : Boolean;
    function isDisabled : Boolean;
    //procedure setAttribute(name : string;value : JSValue);
    //function getAttribute(name : string) : JSValue;
    procedure setBgColor(color : string);
    function getBgColor : string;
    function getCellCombo : JSValue; //dhtmlXCombo
    procedure setHorAlign(align : string);
    function getHorAlign : string;
    function getMathValue : string;
    procedure setTextColor(color : string);
    function getTextColor : string;
    function getTitle : string;
    procedure setValue(value : string);
    function getValue : string;
    function getWidth : Integer;
    procedure setDisabled(mode : boolean);
    cell : TJSHTMLElement;
  end;

  TDHTMLXGrid = class external name 'dhtmlXGrid' (TJSElement)
    constructor New(parent : JSValue);varargs;
    procedure addRow(new_id : JSValue;text : JSValue);varargs;                   //adds a row to the grid
    //(pro)addRowFromClipboard	allows the user to add a new row from clipboard
    //adjustColumnSize	adjusts a column's size to make all content visible
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    //(pro)attachFooter	attaches an additional line to the footer
    procedure attachHeader(Header : JSValue);	                                //attaches an additional line to the header
    //attachToObject	attaches Grid to some object in DOM
    //cellById	gets dhtmlXGridCellObject object
    //cellByIndex	gets dhtmlXGridCellObject object
    //(pro)cellToClipboard	copies the value of a cell to the clipboard
    function cells(row_id : JSValue;col : Integer) : TDHTMLXGridCellObject; 	//gets dhtmlXGridCellObject object
    function cells2(row_index : integer;col : integer) : TDHTMLXGridCellObject;	//gets dhtmlXGridCellObject object
    //(pro)changePage	changes the current page in grid
    //(pro)changePageRelative	changes the current page in grid
    //changeRowId	changes id of the row to the new one
    //checkAll	checks all checkboxes in the grid
    procedure clearAll;varargs;	                                                //deletes all rows in the grid
    //clearAndLoad	clears the existing grid state and loads data from an external file ( xml, json, jsarray, csv )
    //(pro)clearChangedState	clears wasChanged state for all cells in grid (and wasAdded state as well, if called with a parameter)
    //(pro)clearConfigCookie	clears cookie with grid config details
    procedure clearSelection;	                                                //removes selection from the grid
    //(pro)collapseAllGroups	collapses all groups
    //collapseColumns	collapses a group of columns
    //(pro)collapseGroup	collapses a group of rows
    //collectValues	gets all possible values of a column
    //copyBlockToClipboard	copies the content of a block selection into clipboard in CSV format (delimiter as set for CSV serialization)
    //copyRowContent	copies a row's content to another existing row
    //(pro)deleteColumn	deletes a column
    procedure deleteRow(id : JSValue);	                                        //deletes a row from the grid
    //deleteSelectedRows	deletes selected row(s)
    //destructor	destructor, removes the grid and cleans used memory
    procedure detachEvent(id : JSValue);	                                //detaches a handler from an event
    //(pro)detachFooter	removes a footer line from the grid (opposite to attachFooter)
    procedure detachHeader(num : Integer);                                      //removes a header line from the grid (opposite to attachHeader)
    //(pro)disableUndoRedo	disables the Undo/Redo functionality in the grid
    //(pro)doRedo	executes the redo operation
    //(pro)doUndo	executes the undo operation
    //doesRowExist	determines if a row with the specified id exists
    //editCell	creates an Editor object and switches the selected cell to the edit mode, if allowed
    //editStop	returns the value from the editor(if presents) to the cell and closes the editor
    //(pro)enableAccessKeyMap	enables Access keyboard navigation
    procedure enableAlterCss(cssE,cssU : string);varargs;	                //sets css styles for even/odd rows
    procedure enableAutoHeight(en : Boolean);	                                //enables autoheight of the grid
    //(pro)enableAutoHiddenColumnsSaving	enables automatic saving of a column's state ( hidden/shown )
    //(pro)enableAutoSaving	enables automatic saving of size, sorting order and columns order
    //(pro)enableAutoSizeSaving	enables automatic size saving to cookie
    procedure enableAutoWidth(en : Boolean);	                                //changes the size of grid's container on the fly to fit total width of grid's columns
    //enableBlockSelection	enables block selection mode in grid
    //(pro)enableCSVAutoID	enables the mode in which IDs for the rows loaded from CSV are autogenerated
    //(pro)enableCSVHeader	enables recognizing the first row in CSV as the header
    //enableCellIds	enables/disables unique ids for cells (id will be automatically created by the template: 'c_[RowId]_[colIndex]')
    //(pro)enableColSpan	enables/disables colspan support
    //enableColumnAutoSize	adjusts column size to make all content visible on the header doublclick
    //(pro)enableColumnMove	enables the move column functionality
    //enableContextMenu	enables/disables context menu
    //(pro)enableDistributedParsing	enables/disables distributed parsing (rows are parsed portion by portion with some timeout)
    //enableDragAndDrop	enables/disables drag-and-drop
    //enableDragOrder	switches to the mode in which dragged items drop in the target location in the same order as they were in the source grid
    procedure enableEditEvents(click,dblclick,f2key : Boolean);	                //enables/disables events which invoke excell editing
    //enableEditTabOnly	enables/disables the mode when readonly cell is not available with tab
    //(pro)enableExcelKeyMap	enables Excel keyboard navigation
    //enableHeaderImages	specifies if the values passed to Header are images' file names
    //(pro)enableHeaderMenu	enables a popup menu which allows hidding/showing columns
    procedure enableKeyboardSupport(en : Boolean);	                        //enables/disables hot keys in grid
    //enableLightMouseNavigation	enables/disables light mouse navigation mode (row selection with mouse over, editing with single click)
    //(pro)enableMarkedCells	sets the marked cells support to enabled/disabled state
    //(pro)enableMathEditing	enables/disables editing of math cells
    //(pro)enableMathSerialization	enables/disables serialization of math formulas
    //(pro)enableMercyDrag	enables drag without removing (copy instead of move)
    procedure enableMultiline(en : Boolean);	                                //sets the multiline rows support to enabled/disabled state
    //enableMultiselect	sets multiselect mode to enabled or disabled state
    //(pro)enableOrderSaving	enables automatic column order saving to cookie
    //(pro)enablePaging	enables smart paging mode
    //enablePreRendering	enables pre-rendering rows during scrolling.
    //enableResizing	enables/disables resizing for specified colums
    //enableRowsHover	enables/disables hovering on a row on mouse over
    //(pro)enableRowspan	enables rowspan in treegrid
    //enableSmartRendering	enables smart rendering mode
    //(pro)enableSortingSaving	enables automatic saving of the sorting state to cookie
    //enableStableSorting	enables stable sorting algorithm
    //enableTooltips	enables/disables tooltips for specified colums
    //(pro)enableUndoRedo	enables the Undo/Redo functionality in grid
    procedure enableValidation;	                                                //enable validation in the grid
    //expandAllGroups	expands all groups
    //expandColumns	expands a group of columns
    //expandGroup	expands a group of rows
    //filterBy	filters Grid by mask
    //filterByAll	forces Grid filtering by registered inputs (created by # starting shortcuts, or by the makeFilter function)
    //findCell	finds cell in grid by value
    //forEachCell	executes the code for each cell in a row
    //forEachRow	executes code for each row in the grid
    //forEachRowInGroup	iterates through all rows in some group
    //forceFullLoading	loads all data in the grid, which is in dyn. srnd or dyn. paging mode
    //forceLabelSelection	affects block selection, so it will copy/paste only the visible text, not the values behind
    //getAllRowIds	gets the list of all row ids in the grid
    //(pro)getCellExcellType	returns the excell type of the cell in question
    //(pro)getChangedRows	gets the list of IDs of the changed rows
    //getCheckedRows	gets the list of ids of all the rows with checked exCell in the specified column
    //getColIndexById	gets column index by column id
    //getColLabel	gets the label of the column specified by index
    //getColType	gets column type by column index
    //getColTypeById	gets the column type by its ID
    //getColWidth	gets the width of the specified column in pixels
    //getColumnCombo	returns dhtmlXCombo column object
    function getColumnId(cin : Integer) : JSValue;	                        //gets the id of the column specified by index
    //getColumnLabel	gets the label of the column specified by index
    //getColumnsNum	returns the number of columns in the grid (including [hidden columns](setColumnHidden))
    //getCombo	gets Combo object of the specified column
    //getCustomCombo	gets the combobox specific for the cell in question
    //getFilterElement	gets the input object of the filter linked to the column in question
    //getFooterLabel	gets the label of the footer specified by index
    //getHeaderMenu	returns dhtmlXMenu object of the grid header menu
    //(pro)getMarked	returns an array of marked cells (pairs of row id and column index)
    //(pro)getRedo	gets length of available ReDo operations
    //getRowAttribute	returns the row attribute's value which was set in the XML tag
    //getRowData	returns the row data
    //getRowId	gets the row id by the row index
    //getRowIndex	gets the row index by the row id (grid only)
    function getRowsNum : Integer;	                                        //returns the number of rows in the grid (in case of dynamic mode it will return an expected number of rows)
    //getSelectedBlock	returns the attributes of the current block selection
    function getSelectedCellIndex : Integer;	                                //returns the index of the selected cell or -1, if there is no selected cell
    function getSelectedRowId : JSValue;	                                //returns the id of the selected row (a list of ids with default delimiter) or null, if there are no selected rows
    //getSortingState	gets the sorting state of the grid
    //getStateOfView	returns details about current grid state
    //(pro)getUndo	gets length of available UnDo operations
    //getUserData	gets user data
    //(pro)gridFromClipboard	initializes grid from CSV stored in the clipboard
    //(pro)gridToClipboard	copies grid in CSV to the clipboard
    //gridToGrid	redefine this method in your code to specify how grid row values should be used in another grid
    //(pro)gridToTreeElement	redefine this method in your code to define how grid row values should be used in tree
    //(pro)groupBy	groups grid content by values of the specified column
    //groupStat	returns the result of aggregation for a column
    procedure init;	                                                        //initializes grid
    //(pro)insertColumn	adds a new column to the grid
    //(pro)isColumnHidden	gets the shown/hidden status of the column
    //load	loads data from an external file ( xml, json, jsarray, csv )
    //(pro)loadHiddenColumnsFromCookie	loads the sorting order from cookie
    //(pro)loadOpenStates	loads open state of TreeGrid into cookie
    //(pro)loadOrderFromCookie	loads sorting order from cookie
    //(pro)loadSizeFromCookie	loads grid layout from cookie
    //(pro)loadSortingFromCookie	loads sorting order from cookie
    //lockRow	locks/unlocks a row for editing
    //(pro)makeFilter	makes a filter from any input element (text filter), select (dropdown) or DIV (combobox based on dhtmlxCombo)
    //(pro)makeSearch	makes a search box (sets selection on the row with the found value) from any input
    //(pro)mark	marks/unmarks the specified cell
    //(pro)moveColumn	moves the column of the specified index to a new position
    //(pro)moveRow	moves a row
    //moveRowDown	moves a row one position down, if possible
    //moveRowTo	moves a row
    //moveRowUp	moves a row one position up, if possible
    //parse	loads data from a local data source (XML string, CSV string, XML island, XML object, JSON object, javascript array)
    //pasteBlockFromClipboard	pastes the content of the clipboard into a block selection of the grid
    //post	allows sending POST requests by loading data from external file ( xml, json, jsarray, csv )
    //preventIECaching	prevents caching in IE by adding random values to URL string
    //printView	generates the print friendly view
    procedure refreshComboColumn(num : Integer);	                        //updates the cells of the combo column
    procedure refreshFilters;	                                                //refreshes the lists of values in all the filters created by shortcuts or by makeFilter calls
    procedure refreshMath;	                                                //restores math after column moving
    //registerCList	registers an array of options for a multiselect column ("clist") of the grid
    //rowToClipboard	copies the value of a row to the clipboard
    //rowToDragElement	redefine this method in your code to specify how grid row values should be displayed during the dragging
    //saveHiddenColumnsToCookie	saves hidden columns to cookie
    //saveOpenStates	stores open state of TreeGrid in cookie
    //saveOrderToCookie	saves the columns' order to cookie
    //saveSizeToCookie	saves grid layout to cookie
    //saveSortingToCookie	saves the sorting order to cookie
    //selectAll	selects all rows in the grid, doesn't trigger any events
    //selectBlock	selects a block in the Grid, according to the specified rows' ids and columns' indexes
    //selectCell	sets selection to the specified row-cell
    procedure selectRow(row : Integer);	                                        //selects a row (and its first cell)
    //selectRowById	selects row by ID
    //serialize	gets actual xml of the grid
    //serializeToCSV	serializes to CSV string
    //setActive	sets the grid active to make key navigation possible
    //setAwaitedRowHeight	applies a custom height of a row which will be used in the smart rendering mode for row calculation
    //setCSVDelimiter	changes csv delimiter
    //setCellExcellType	sets an excell type for the cell in question
    //setCellTextStyle	sets a style for a cell
    //setCheckedRows	sets a value for all checkboxes in the specified column
    //setColAlign	aligns values in columns
    //setColLabel	sets a new label for the column header
    //setColSorting	sets the types of column sort
    procedure setColTypes(typeStr : string);	                                //sets column types
    //setColVAlign	sets vertical align for columns
    procedure setColValidators(val : string);	                                //assigns validators to the related column
    //setColWidth	sets the width for the specified column in pixels (doesn't work with the percentage based grid)
    //setColspan	dynamically sets colspan in a row starting from the specified column index
    //setColumnColor	colors the background of columns
    //setColumnExcellType	sets an excell type for all the cells in the specified column
    procedure setColumnHidden(col : Integer;hidden : Boolean);	                //hides/shows a column
    //setColumnId	sets id for the specified column
    procedure setColumnIds(ids : string);	                                //sets id for every column
    //setColumnLabel	sets a new column header label
    //setColumnMinWidth	sets the minimum column width (works only for manual resizing)
    //setColumnsVisibility	sets the list of visible/hidden columns
    //setCustomSorting	sets a custom sorting
    procedure setDateFormat(mask,servermask : string);	                        //sets a mask for date formatting in the grid (works for "dhxCalendar" and "dhxCalendarA" types only)
    //setDelimiter	sets a delimiter character used in list values (default is ",")
    //setDragBehavior	sets Drag-And-Drop behavior
    procedure setEditable(mode : boolean);	                                //manages the editability of the grid
    //setExternalTabOrder	sets elements which get focus when the Tab button is pressed in the last or in the first (Tab+Shift) cell
    //setFieldName	allows defining an input's name which will be used for data sending,
    //setFooterLabel	sets a new label for a cell in the footer
    procedure setHeader(hdrStr : string);varargs;	                        //sets the header label and default params for new headers
    //setIconsPath	sets the path to external images used in the grid (tree and img column type)
    //setIconset	sets the font awesome iconset
    procedure setImagesPath(path : string);	                                //defines the path to the imgs folder
    procedure setInitWidths(wp : string);	                                //sets the width of columns in pixels
    procedure setInitWidthsP(wp : string);	                                //sets the width of columns in percents
    //setMathRound	enables/disables rounding during the math calculations
    //setNoHeader	creates a grid without header
    //setNumberFormat	sets a mask for formatting numeric data (works for **"edn"**, **"ron"** excell only)
    //setPagingSkin	allows setting a custom paging skin
    //setPagingTemplates	allows setting paging templates for the default skin
    //setPagingWTMode	configures the paging with toolbar mode
    //setRowAttribute	sets a row attribute
    //setRowColor	sets the background color of a row (via the bgcolor attribute)
    //setRowData	sets new data for row's columns
    //setRowExcellType	sets an excell type for all cells in the specified row
    //setRowHidden	hides/shows a row
    //setRowId	sets a new id for a row by its index
    //setRowTextBold	sets the text of a row BOLD
    //setRowTextNormal	sets the text weight of a row to normal
    //setRowTextStyle	sets the style of a row
    //setRowspan	sets rowspan of the specified length starting from the specified cell
    //setSerializableColumns	specifies which column must be serialized (if you don't use this method, all columns will be serialized)
    //setSerializationLevel	configures XML serialization
    procedure setSizes;	                                                        //resets sizes of the grid's elements
    //setSkin	sets one of the predefined css styles (xp, mt, gray, light, clear, modern, sb_dark)
    //setSortImgState	sets the position and visibility of a sort arrow
    //setStyle	modifies the default style of the grid and its elements
    //setSubGrid	attaches a grid-like editor to a grid's column
    //setSubTree	attaches a tree-like editor to a grid's column
    //setTabOrder	sets the tab order of columns
    //setUserData	sets user data for a row
    //setXMLAutoLoading	enables dynamic loading from XML
    //showRow	scrolls a grid to make the specified row visible
    //sortRows	sorts the Grid by the specified column
    //splitAt	splits the grid
    //startFastOperations	starts the fast operation mode
    //stopFastOperations	turns off the fast operation mode, needs to be executed to normalize the view
    //submitAddedRows	includes additional data with the info about which rows were added and which ones deleted, enabled by default
    //submitColumns	sets the list of columns the data of which will be updated
    //submitOnlyChanged	includes only the changed rows into the form submit
    //submitOnlyRowID	includes only rows' IDS into the form submit
    //submitOnlySelected	includes only the selected rows into the form submit
    //submitSerialization	includes a serialized grid as a part of the form submit
    //toExcel	exports data from dhtmxlGrid to an Excel document
    //toPDF	exports data from dhtmxlGrid to a PDF document
    //treeToGridElement	redefine this method in your code to specify how tree node values should be used in the grid
    //uid	returns the unique ID
    //unGroup	ungroups the grid to return it into the plain view
    //uncheckAll	unchecks all checkboxes of the grid
    //unmarkAll	removes selection from all the marked cells
    //updateCellFromClipboard	sets the value of a cell from the clipboard
    //updateFromXML	refreshes grid from XML (doesn't work for buffering, tree grid or rows in smart rendering mode)
    //updateGroups	forces grid grouping by registered parameters
    //(pro)updateRowFromClipboard	sets the value of a row from the clipboard
    procedure validateCell(id : JSValue;index : Integer);varargs;	        //forces validation of a specific cell
    procedure sync(aObj : JSValue);
    procedure Destroy; external name 'destructor';
  end;

implementation

end.

