<!DOCTYPE html>
<html>
<body>
  <input id="txt" size="40" value="Hello 123 World, 456 JS!">
  <button onclick="go()">Run</button>
  <pre id="out"></pre>

  <script>
    function go() {
      var s = txt.value, r = "";

      r += "Has digits:  " + /\d/.test(s) + "\n";
      r += "Digits:      " + s.match(/\d+/g) + "\n";
      r += "Digits → #:  " + s.replace(/\d/g, "#") + "\n";
      r += "Letters only:" + s.replace(/[^a-z\s]/gi, "") + "\n";
      r += "Words:       " + s.split(/[\s,!.]+/) + "\n";
      r += "First digit: " + s.search(/\d/) + "\n";
      r += "Doubled:     " + s.replace(/\d+/g, function (d) { return d * 2; }) + "\n";
      r += "Upper:       " + s.toUpperCase() + "\n";
      r += "Length:      " + s.length;

      out.textContent = r;
    }
  </script>
</body>
</html>
