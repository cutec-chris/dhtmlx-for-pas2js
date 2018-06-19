unit dhtmlx_base;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,Web;

type
  Tdhtmlx = class external name 'dhtmlx' (TJSElement)
    procedure message(msg : TJSObject);
    procedure alert(msg : TJSObject);
  end;
  Tdhx = class external name 'dhx' (TJSElement)
    dateFormat : TJSObject;
    dateLang : string;
    isChrome : Boolean;
    isIE : Boolean;
    isIE6 : Boolean;
    isIE7 : Boolean;
    isIE8 : Boolean;
    isIE9 : Boolean;
    isIE10 : Boolean;
    isIE11 : Boolean;
    isFF : Boolean;
    isEdge : Boolean;
    isIPad : Boolean;
    isKHTML : Boolean;
    isOpera : Boolean;
    function version : string;
  end;

var
  dhtmlx : Tdhtmlx external name 'dhtmlx';
  dhx : Tdhx external name 'window.dhx';
  WidgetsetLoaded : TJSPromise;


implementation

procedure LoadDHTMLX;
  procedure AppendCSS(url : string;onLoad,onError : JSValue);
  begin
    asm
      var file = url;
      var link = document.createElement( "link" );
      link.href = file;
      link.type = "text/css";
      link.rel = "stylesheet";
      link.media = "screen,print";
      link.onload = onLoad;
      link.onerror = onError;
      document.getElementsByTagName( "head" )[0].appendChild( link );
    end;
  end;
  procedure AppendJS(url : string;onLoad,onError : JSValue);
  begin
    asm
      if (document.getElementById(url) == null) {
        var file = url;
        var link = document.createElement( "script" );
        link.id = url;
        link.src = file;
        link.type = "text/javascript";
        link.onload = onLoad;
        link.onerror = onError;
        document.getElementsByTagName( "head" )[0].appendChild( link );
      }
    end;
  end;
  procedure DoLoadDHTMLX(resolve,reject : TJSPromiseResolver) ;
    procedure ScriptLoaded;
    begin
      asm
        window.dhx4.skin = 'material';
      end;
      writeln('DHTMLX loaded...');
      resolve(true);
    end;
    procedure ScriptError;
    begin
      AppendJS('https://cdn.dhtmlx.com/edge/dhtmlx.js',@ScriptLoaded,null);
    end;
  begin
    writeln('Loading DHTMLX...');
    AppendJS('appbase/dhtmlx/dhtmlx.js',@ScriptLoaded,@ScriptError);
  end;
  procedure DoLoadCSS(resolve,reject : TJSPromiseResolver) ;
    procedure ScriptLoaded;
    begin
      AppendCSS('https://cdn.dhtmlx.com/edge/fonts/font_awesome/css/font-awesome.min.css',null,null);
      resolve(true);
    end;
    procedure ScriptLoaded2;
    begin
      AppendCSS('appbase/dhtmlx/font-awesome.min.css',null,null);
      resolve(true);
    end;
    procedure ScriptError;
    begin
      AppendCSS('https://cdn.dhtmlx.com/edge/dhtmlx.css',@ScriptLoaded,null);
    end;
  begin
    AppendCSS('appbase/dhtmlx/dhtmlx.css',@ScriptLoaded2,@ScriptError);
  end;
begin
  WidgetsetLoaded:=TJSPromise.all([TJSPromise.New(@DoLoadDHTMLX),TJSPromise.New(@DoLoadCSS)]);
end;

initialization
  LoadDHTMLX;
end.

