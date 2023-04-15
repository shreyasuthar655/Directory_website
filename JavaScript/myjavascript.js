    function checkk() {
      var l = document.getElementById("Location").value;
      var i = document.getElementById("Input").value;
      city=["Anand","Ahmedabad","Vadodara","Surat"];
      if (l == "") {
        alert("Enter location");
      }
      elseif (!validateLoc(l)) {
        alert("Please enter a valid Location.");
        return;
      }
      function validateLoc(l) {
        const re = /^[a-zA-Z]+$/;
        return re.test(l);
      }
      if (!validateSearch(i)) {
        alert("Please enter a valid Category.");
        return;
      }
      function validateSearch(i) {
        const re = /^[a-zA-Z0-9]+$/;
        return re.test(i);
      }
      // for(var i=0;i<input.length;i++)
      // {

      // }
    }
