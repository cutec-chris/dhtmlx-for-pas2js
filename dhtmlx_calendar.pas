unit dhtmlx_calendar;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,web,Sysutils;

type
  TDHTMLXCalendar = class external name 'dhtmlXCalendarObject' (TJSElement)
    constructor New(parent : JSValue);varargs;
    function attachEvent(event : string;aCallback : JSValue) : Integer;         //adds any user-defined handler to available events
    //attachObj	attaches a calendar to an input field
    //clearInsensitiveDays	enables the dates disabled by the setInsensitiveDays method
    //clearSensitiveRange	enables the dates disabled by the setInsensitiveRange/setSensitiveRange
    //clearTooltip	removes the tooltip set by the setTooltip() method
    //close	hides calendar
    procedure detachEvent(id : JSValue);	                                //detaches a handler from an event
    //detachObj	detaches the calendar from an input field
    //disableDays	disables certain dates of each week, month or year
    //draw	renders calendar
    //enableDays	enables the dates disabled by the disableDays method
    //enableIframe	enables iframe background for calendar
    //getCellDimension	returns dimension of the specified date cell
    //getDate	returns the currently selected date
    //getFormatedDate	returns formatted date as a string
    //getPopup	returns dhtmlXPopup instance which was initialized for tooltips
    //getWeekNumber	returns the week number of the specified date
    //hide	hides a calendar
    //hideTime	hides the time panel
    //hideToday	hides the Today and Clear buttons
    //hideWeekNumbers	hides a column with weeks numbers at the left side of the calendar
    //isVisible	returns true if calendar currenmly visible
    //loadUserLanguage	sets a new language interface for the calendar
    //setDate	makes the specified date selected
    procedure setDateFormat(format : string);	                                //sets the date format
    //setFormatedDate	sets date using specified date format
    //setHolidays	set dates as holidays
    //setInsensitiveDays	disables specified dates in the calendar
    //setInsensitiveRange	sets a range of inactive dates in the calendar
    //setMinutesInterval	sets a minutes interval in the time selector
    //setParent	sets a parent container for the calendar
    //setPosition	sets a calendar's position when it's attached to input
    //setSensitiveRange	sets a range of active dates in the calendar
    //setSkin	sets a skin for a calendar
    //setTooltip	sets a tooltip for the specified dates
    //setWeekStartDay	sets the starting day of weeks
    //setYearsRange	change years range in selector
    //show	shows a calendar
    //showMonth	makes the specified month/year as currently visible in the calendar
    //showTime	shows the time panel
    //showToday	shows the Today and Clear buttons
    //showWeekNumbers	adds a column with weeks numbers to the left side of the calendar
    //unload	destructor, unloads the calendar
  end;

  function DateFormatToDHTMLX(aDate : string) : string;

implementation

function DateFormatToDHTMLX(aDate: string): string;
begin
  Result := aDate;
  Result := StringReplace(Result,'yyyy','%Y',[rfreplaceAll]);
  Result := StringReplace(Result,'mm','%m',[rfreplaceAll]);
  Result := StringReplace(Result,'dd','%d',[rfreplaceAll]);
  Result := StringReplace(Result,'hh','%h',[rfreplaceAll]);
  Result := StringReplace(Result,'mm','%i',[rfreplaceAll]);
end;

end.

