const usernameUrl = "http://localhost:3000/usernames/"

document.addEventListener("DOMContentLoaded", () => {
    fetch(usernameUrl).then(res => res.json()).then(usernames => usernames.forEach(username => renderUsername(username)))
    createUsername()
})

function renderUsername(username){
    
}

function createUsername() {

    let signIn = document.querySelector("#sign-in")

    let form = document.createElement("form")
    form.setAttribute("class", "new-user-form")

    let usernameInput = document.createElement("input")
    usernameInput.setAttribute("type", "text")
    usernameInput.setAttribute("username", "username")
    usernameInput.setAttribute("placeholder", "Please Enter Username")

    let subBtn = document.createElement("button")
    subBtn.innerText = "Continue"

    form.addEventListener("submit", event => {

        // console.log(event.target[0].value)
        event.preventDefault()
        // console.log("click")
        let name = event.target[0].value
        console.log(name)

        fetch(usernameUrl, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "Accept": "application/json"
            },
            body: JSON.stringify({
                "name": name
            })
        })
        .then(res => res.json())
        .then(data => console.log(data))
    })

    signIn.append(form)
    form.append(usernameInput, subBtn)
}
