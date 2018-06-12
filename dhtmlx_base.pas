unit dhtmlx_base;

{$mode objfpc}
{$modeswitch externalclass}

interface

uses
  js,Web,Avamm;

type
  Tdhtmlx = class external name 'dhtmlx' (TJSElement)
    procedure message(msg : TJSObject);
    procedure alert(msg : TJSObject);
  end;

var
  dhtmlx : Tdhtmlx external name 'dhtmlx';
  WidgetsetLoaded : TJSPromise;


implementation

procedure LoadDHTMLX;
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

