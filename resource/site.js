
// HTML5shiv MIT @rem remysharp.com/html5-enabling-script
// iepp v1.6.2 MIT @jon_neal iecss.com/print-protector
/*@cc_on(function(m,c){var z="abbr|article|aside|audio|canvas|details|figcaption|figure|footer|header|hgroup|mark|meter|nav|output|progress|section|summary|time|video";function n(d){for(var a=-1;++a<o;)d.createElement(i[a])}function p(d,a){for(var e=-1,b=d.length,j,q=[];++e<b;){j=d[e];if((a=j.media||a)!="screen")q.push(p(j.imports,a),j.cssText)}return q.join("")}var g=c.createElement("div");g.innerHTML="<z>i</z>";if(g.childNodes.length!==1){var i=z.split("|"),o=i.length,s=RegExp("(^|\\s)("+z+")",
"gi"),t=RegExp("<(/*)("+z+")","gi"),u=RegExp("(^|[^\\n]*?\\s)("+z+")([^\\n]*)({[\\n\\w\\W]*?})","gi"),r=c.createDocumentFragment(),k=c.documentElement;g=k.firstChild;var h=c.createElement("body"),l=c.createElement("style"),f;n(c);n(r);g.insertBefore(l,
g.firstChild);l.media="print";m.attachEvent("onbeforeprint",function(){var d=-1,a=p(c.styleSheets,"all"),e=[],b;for(f=f||c.body;(b=u.exec(a))!=null;)e.push((b[1]+b[2]+b[3]).replace(s,"$1.iepp_$2")+b[4]);for(l.styleSheet.cssText=e.join("\n");++d<o;){a=c.getElementsByTagName(i[d]);e=a.length;for(b=-1;++b<e;)if(a[b].className.indexOf("iepp_")<0)a[b].className+=" iepp_"+i[d]}r.appendChild(f);k.appendChild(h);h.className=f.className;h.innerHTML=f.innerHTML.replace(t,"<$1font")});m.attachEvent("onafterprint",
function(){h.innerHTML="";k.removeChild(h);k.appendChild(f);l.styleSheet.cssText=""})}})(this,document);@*/


// Google Analytics
var _gaq = _gaq || [];
_gaq.push(['_setAccount', 'UA-26417569-1']);
_gaq.push(['_trackPageview']);
(function() {
  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
})();


// Persnikity Pygmentize

var MetaPygmentize = {
  
  process: function() {
    this.convert('nb', 'n',   ['id','name']);
    this.convert('nb', 'c1',  ['self']);
    this.convert('n',  'nb',  ['new']);
    this.convert('o',  'k',   ['*','&','+','/','=']);
    this.convert('nx', 'k',   ['$','$$']);
    this.convert('k',  'kjs', ['this']);
    this.convert('kp', 'sr',  ['public','private','protected']);
  },
  
  arrayInclude: function(array, obj) {
    var i = array.length;
    while (i--) {
      if (array[i] === obj) { return true; }
    }
    return false;
  },
  
  convert: function(fromClass, toClass, texts) {
    var spans = $('div.highlight span.' + fromClass);
    spans.each(function(i,s){
      var span = $(s);
      var text = span.text();
      var target = MetaPygmentize.arrayInclude(texts,text);
      if (target) { span.attr('class',toClass); };
    });
  }
  
}

// My Namespace

var MetaSkills = {
  
  appendContentForAppleTvNavigation: function() {
    $('#page nav a').append('<span></span>');
  },
  
  hideSeoContent: function() {
    $('#badge_js').html('');
    $('#badge_js').text('');
  }
  
};


// Document Loads

$(document).ready(function(){
  MetaSkills.appendContentForAppleTvNavigation();
  MetaSkills.hideSeoContent();
  MetaPygmentize.process();
})


