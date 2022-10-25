<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Acme Web Design</title>
  <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.css" />
  <link rel="stylesheet" href="style.css">
</head>
<body>






 <div class="container">       
<center> <h1>APPLICATION</h1></center>
</div>
        <div class="toggle-container">
            <input type="checkbox" id="switch" name="theme" /><label for="switch"></label>
      


<style>
body {
  padding: 25px;
  background-color: white;
  color: red;
  font-size: 25px;
}

.dark-mode {
  background-color: yellow;
  color: blacK;
}
</style>


<button onclick="myFunction()"></button>


<script>
function myFunction() {
   var element = document.body;
   element.classList.toggle("dark-mode");
}
</script>

    </div>




  <div class="container">
    <h1 class="brand"><span>Home</span> Money Design</h1>
    <div class="container">
   
    <div class="wrapper">
      <div class="company-info">
        <h3></h3>
        <ul>
          
        </ul>
      </div>

 
      <div class="contact">
        <h3>Email Us</h3>

        <div class="alert">Your message has been sent</div>
        <form id="contactForm" method="post" autocomplete="off" name="google-sheet">

          <p>
            <label>First name</label>
            <input type="text" name="First name" id="name" required>
          </p>
           <p>
           
            <label>last name</label>
            <input type="text" name="Last name" id="secondname" required>
          </p>
 

         
      <input type="datetime-local" id="birthdaytime" name="birthdaytime">
<br>
 <br>
<div class="form-check mb-3">
    <input class="form-check-input" type="radio" id="radio1" name="cmethod" value="phone" checked>
    <label class="form-check-label" for="radio1">Phone</label>
</div>
<br>
<div class="form-check mb-3">
    <input class="form-check-input" type="radio" id="radio2" name="cmethod" value="mail">
    <label class="form-check-label" for="radio2">Email</label>
</div>
<br>
<div class="form-check mb-3">
    <input class="form-check-input" type="radio" id="radio3" name="cmethod" value="post">
    <label class="form-check-label" for="radio3">Post</label>
</div>   
          <p class="full">
            <label>Message</label>
            <textarea name="message" rows="5" id="message"></textarea>
          </p>
          <p class="full">
            <button type="submit">Submit</button>
          </p>
        </form>
      </div>
    </div>

  </div>


<script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-app.js"></script>

<script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-database.js"></script>
<script src="https://www.gstatic.com/firebasejs/8.6.8/firebase-analytics.js"></script>
 
  <script src="main.js"></script>

<script>
   const scriptURL = 'https://script.google.com/macros/s/AKfycbzKvTbQkigC1ZFFz7M08cT7GQ2iG9uYvqoq80HO-IccK2wjTBHkWiL2JOgjcOkNLozIBg/exec'
            const form = document.forms['google-sheet']
          
            form.addEventListener('submit', e => {
              e.preventDefault()
              fetch(scriptURL, { method: 'POST', body: new FormData(form)})
                .then(response => alert("Thanks for Contacting us..! We Will Contact You Soon..."))
                .catch(error => console.error('Error!', error.message))
            })
</script>
</body>
</html>