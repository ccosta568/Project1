const loginForm = document.getElementById("login-form");
const loginButton = document.getElementById("login-form-submit");
const loginErrorMsg = document.getElementById("login-error-msg");

loginButton.addEventListener("click", (e) => {
    //e.preventDefault();
    const username = loginForm.username.value;
    const password = loginForm.password.value;
    

    if (username === "user" && password === "password") {
        window.open("form.jsp")
    } else {
        loginErrorMsg.style.opacity = 1;
    }
})

loginButton.addEventListener("click", (e) => {
    //e.preventDefault();
    const username = loginForm.username.value;
    const password = loginForm.password.value;
    

    if (username === "manager" && password === "password") {
        window.open("Data.html")
    } else {
        loginErrorMsg.style.opacity = 1;
    }
})