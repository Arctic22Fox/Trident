function sendContactForm() {
    var formData = $('#contactForm').serialize();
    $.ajax({
      url: '/email',
      type: 'POST',
      data: formData,
      success: function(data) {
        alert('Your message has been sent!');
      },
      error: function(error) {
        alert(error);
      }
    });
  }
  
  $(document).ready(function() {
    $('#contactForm').submit(sendContactForm);
  });