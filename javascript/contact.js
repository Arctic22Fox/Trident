document.addEventListener("DOMContentLoaded", function () {
    const form = document.getElementById("contactForm");

    form.addEventListener("submit", function (event) {
        event.preventDefault();

        const name = form.name.value;
        const email = form.email.value;
        const message = form.message.value;

        // Here you can perform any additional actions like sending the data to a server
        console.log("Name:", name);
        console.log("Email:", email);
        console.log("Message:", message);

        // Clear the form fields
        form.reset();
    });
});