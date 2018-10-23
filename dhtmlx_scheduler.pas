unit dhtmlx_scheduler;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,Web,dhtmlx_base;

type
  TDHTMLXSheduler = class external name 'dhtmlXScheduler' (TJSElement)
  procedure addEvent(event : TJSObject);                                        //adds a new event
  //  addEventNow	adds a new event and opens the lightbox to confirm
  //  addMarkedTimespan	marks dates, but with certain settings makes blocking (unlike blockTime() allows setting custom styling for the limit)
  //PRO  addSection	adds a section to the currently active view (if the opened view isn't Timeline in the 'Tree' mode - the method will be ignored)
  //  addShortcut	adds a new keyboard shortcut
  function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
  //  backbone	makes the scheduler reflect all data changes in the Backbone model and vice versa
  //  blockTime	blocks the specified date and applies the default 'dimmed' style to it.
  //  callEvent	calls an inner event
  //  changeEventId	changes the event's id
  //  checkCollision	checks whether the specified event occurs at the time that has already been occupied by another event(s)
  //  checkEvent	checks whether an event has some handler(s) specified
  //  checkInMarkedTimespan	checks whether an event resides in a timespan of a specific type
  //  checkLimitViolation	checks whether the specified event takes place at the blocked time period
  //  clearAll	removes all events from the scheduler
  //PRO  closeAllSections	closes all sections in the currently active view (if the opened view isn't Timeline in the 'Tree' mode - the method will be ignored)
  //PRO  closeSection	closes the specified section in the currently active view (if the opened view isn't Timeline in the 'Tree' mode - the method will be ignored)
  //  collapse	collapses the expanded scheduler back to the normal size
  //PRO  createGridView	creates the Grid view in the scheduler
  //PRO  createTimelineView	creates the Timeline view in the scheduler
  //PRO  createUnitsView	creates the Units view in the scheduler
  //PRO  deleteAllSections	deletes all sections from the currently active view (if the opened view isn't Timeline in the 'Tree' mode - the method will be ignored)
  //  deleteEvent	deletes the specified event
  //  deleteMarkedTimespan	removes marking/blocking set by the addMarkedTimespan() and blockTime() methods
  //PRO  deleteSection	deletes a section from the currently active view (if the opened view isn't Timeline in the 'Tree' mode - the method will be ignored)
  //  destroyCalendar	destroys previously created mini-calendar
  procedure detachEvent(id : JSValue);	                                //detaches a handler from an event
  //  edit	opens the inline editor to alter the event's text (the editor in the event's box)
  //  editStop	closes the inline event editor, if it's currently open
  //  endLightbox	closes the lightbox
  //  event	attaches an event handler to an HTML element
  //  eventRemove	removes an event handler from an HTML element
  //  expand	expands the scheduler to the full screen view
  //  focus	sets focus on the scheduler
  //  formSection	gives access to the objects of lightbox's sections
  //  getActionData	returns the current cursor-pointed date and section (if defined)
  //  getEvent	returns the event object by its id
  //  getEventEndDate	gets the event's end date
  //  getEventStartDate	gets the event's start date
  //  getEventText	gets the event's text
  //  getEvents	returns a collection of events which occur during the specified period
  //  getLabel	gets the label of a select control in the lightbox
  //  getLightbox	gets the lightbox's HTML object element
  //  getRecDates	returns all occurrences of a recurring event
  //  getRenderedEvent	gets the object of the currently displayed event
  //PRO  getSection	gets the object of the specified section in the currently active view (if the opened view isn't Timeline in the 'Tree' mode - the method will be ignored)
  //  getShortcutHandler	gets a key navigation shortcut handler
  //  getState	gets the current state of the scheduler
  //  getUserData	gets the user data associated with the specified event
  //  hideCover	hides the lightbox modal overlay that blocks interactions with the remaining screen
  //  hideQuickInfo	hides the pop-up event form (if it's currently active)
  //  highlightEventPosition	highlights the event's duration on the time scale
  procedure init(container : JSValue;date : TJSDate;view : string);	        //a constructor of a dhtmlxScheduler object
  //  invertZones	inverts the specified time zones
  //  isCalendarVisible	checks whether the calendar is currently opened in the scheduler
  //  isOneDayEvent	checks whether the specified event one-day or multi-day
  //  isViewExists	checks whether a view with the specified name exists
  //  linkCalendar	'says' to change the active date in the mini calendar each time, the active date in the scheduler is changed
  //  load	loads data to the scheduler from an external data source
  //  markCalendar	applies a css class to the specified date
  //  markTimespan	marks and/or blocks date(s) by applying the default or a custom style to them. Marking is cancelled right after any internal update in the app. Can be used for highlighting
  //  openAllSections	opens all sections in the currently active view (if the opened view isn't Timeline in the 'Tree' mode - the method will be ignored)
  //  openSection	opens the specified section in the currently active view (if the opened view isn't Timeline in the 'Tree' mode - the method will be ignored)
  procedure parse(aObj : JSValue;typ : string);	                        //loads data from a client-side resource
  //  removeShortcut	removes a keyboard shortcut
  //  renderCalendar	creates a mini calendar
  //  renderEvent	generates HTML content for a custom event's box
  //  resetLightbox	removes the current lightbox's HTML object element
  //PRO  scrollUnit	scrolls the specified number of units in the Units view
  //  select	selects the specified event
  //  serverList	returns a list of options
  //  setCurrentView	displays the specified view and date
  //  setEvent	adds a new event to the scheduler's data pool
  //  setEventEndDate	sets the event's end date
  //  setEventStartDate	sets the event's start date
  //  setEventText	sets the event's text
  //  setLightboxSize	forces the lightbox to resize
  //  setLoadMode	sets the mode that allows loading data by parts (enables the dynamic loading)
  //  setUserData	sets the user data associated with the specified event
  //  showCover	shows the lightbox modal overlay that blocks interactions with the remaining screen
  //  showEvent	shows and highlights the specified event in the current or specified view
  //  showLightbox	opens the lightbox for the specified event
  //  showQuickInfo	displays the pop-up event form for the specified event
  //  startLightbox	shows a custom lightbox in the specified HTML container centered on the screen
  //  toICal	converts scheduler's data to the ICal format
  //  toJSON	converts scheduler's data into the JSON format
  //  toPDF	exports the current view to a PDF document (can be used for printing)
  //  toPDFRange	exports several scheduler's views to a PDF document (can be used for printing)
  //  toXML	converts scheduler's data into the XML format
  //  uid	generates a unique ID (unique inside the current scheduler, not GUID)
  //  unblockTime	removes blocking set by the blockTime() method
  //  unmarkCalendar	removes a css class from the specified date
  //  unmarkTimespan	removes marking/blocking set by the markTimespan() method
  //  unselect	unselects the specified event
  //  updateCalendar	displays the specified date in the mini calendar
  //  updateCollection	updates the specified collection with new options
  //  updateEvent	updates the specified event
  procedure updateView(Date : TJSDate;view : string);	                        //displays the specified view and date (doesn't invoke any events)
  end;

var
  scheduler : TDHTMLXSheduler external name 'scheduler';
  SchedulerLoaded : TJSPromise;

procedure LoadScheduler;

implementation

uses dhtmlx_calendar;

procedure LoadScheduler;
  procedure DoLoadScheduler(resolve,reject : TJSPromiseResolver) ;
    procedure ScriptLoadedJS2;
    begin
      console.log('Sheduler loaded...');
      asm
        scheduler.config.xml_date=pas.dhtmlx_calendar.DateFormatToDHTMLX(pas.SysUtils.ShortDateFormat+" "+pas.SysUtils.ShortTimeFormat);
      end;
      resolve(true);
    end;
    procedure ScriptLoadedJS;
    begin
      AppendJS('https://cdn.dhtmlx.com/scheduler/edge/ext/dhtmlxscheduler_year_view.js',@ScriptLoadedJS2,null);
    end;
    procedure ScriptLoadedCSS2;
    begin
      AppendJS('https://cdn.dhtmlx.com/scheduler/edge/dhtmlxscheduler.js',@ScriptLoadedJS,null);
    end;
    procedure ScriptErrorJS;
    begin
      AppendCSS('https://cdn.dhtmlx.com/scheduler/edge/dhtmlxscheduler_material.css',@ScriptLoadedCSS2,null);
    end;
    procedure ScriptLoadedCSS;
    begin
      AppendJS('appbase/dhtmlx/dhtmlxscheduler.js',@ScriptLoadedJS,@ScriptErrorJS);
    end;
  begin
    console.log('Loading Sheduler...');
    AppendCSS('appbase/dhtmlx/dhtmlxscheduler_material.css',@ScriptLoadedCSS,@ScriptErrorJS);
  end;
begin
  SchedulerLoaded:=TJSPromise.New(@DoLoadScheduler);
end;

end.

