<?php
if ($_POST) {
  $n = $_POST['n'];
  $ok = preg_match('/^(\d{4}-?){3}\d{4}$/', $n) && $n[0] == $_POST['t'];
  echo $ok ? "Valid ✅" : "Invalid ❌";
  exit;
}
?>
<select id="t" name="t"><option value="4">Visa</option><option value="5">MasterCard</option></select>
<input id="n" name="n" placeholder="4111-1111-1111-1111">
<button onclick="f()">Check</button>
<p id="o"></p>
<script>
function f() {
  fetch("index.php", {method:"POST", body: new URLSearchParams({t: t.value, n: n.value})})
    .then(r => r.text()).then(x => o.innerHTML = x);
}
</script>
