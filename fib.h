<!DOCTYPE html>
<html>
<body>
  <input id="a" placeholder="How many?" value="8">
  <button onclick="run()">Show</button>
  <pre id="o"></pre>

  <script>
    function run() {
      let n = Number(a.value);
      let x = 0, y = 1, out = "";

      for (let i = 0; i < n; i++) {
        out += x + " ";
        let next = x + y;
        x = y;
        y = next;
      }

      o.textContent = out;
    }
  </script>
</body>
</html>
