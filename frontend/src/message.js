const messageUrl = "http://localhost:3000/messages/"

document.addEventListener("DOMContentLoaded", () => {
    fetch(messageUrl).then(res => res.json()).then(messages => messages.forEach(message => renderMessage(message)))
    createMessage()
    // fetch()
})


function createMessage() {
    console.log("Create Message Works")
    const messageBoard = document.querySelector(".message-board")

    const messageDisplay = document.createElement("div")
    messageDisplay.setAttribute("id", "message-display")

    const inputArea = document.createElement("div")
    inputArea.setAttribute("class", "message-input")

    const messageForm = document.createElement("form")
    messageForm.setAttribute("class", "message-form")

    let messageInput = document.createElement("input")
    messageInput.className = 'input-box'
    messageInput.setAttribute("type", "text")
    messageInput.setAttribute("message", "message")
    messageInput.setAttribute("placeholder", "Enter message here")

    const postBtn = document.createElement("button")
    postBtn.className = 'bttn'
    postBtn.innerText = "Send"

    messageForm.addEventListener("submit", event => {
        event.preventDefault()

        let message = event.target[0].value
        // ul.append(message)

        fetch(messageUrl, {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "Accept": "application/json"
            },
            body: JSON.stringify({
                "text": message,
                "username_id": 1,
                "message_board_id": 1
            })
        })
        .then(res => res.json())
        .then(data => data.text)
    })

    messageBoard.append(messageDisplay, inputArea)
    messageForm.append(messageInput, postBtn)
    inputArea.append(messageForm)

}

function renderMessage(message) {
    console.log(message.text)
    // createMessage(message)
    const disMes = document.querySelector("#messages")

    const br = document.createElement("br")

    const textIn = document.createElement("li")
    textIn.innerText = `${message.text}`

    const updDiv = document.createElement("form")
    updDiv.setAttribute("class", "update-message")

    const updForm = document.createElement("input")
    updForm.setAttribute("type", "text")
    updForm.setAttribute("message", "message")
    updForm.setAttribute("placeholder", "Enter message here")

    const updBtn = document.createElement("button")
    updBtn.innerText = "Update"

    updDiv.addEventListener("submit", event => {
        event.preventDefault()
        console.log("click")

        let text = event.target[0].value
        fetch(messageUrl + message.id, {
            method: "PATCH",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify({
                "text": text
            })
        })
        .then(res => res.json())
        .then(data => {
            textIn.innerText = `${data.text}`
            const delBtn = document.createElement("button")
            delBtn.innerText = "x"
            delBtn.addEventListener("click", () => {
                fetch(messageUrl + message.id, {
                    method: "DELETE"
                })
                textIn.remove()
            })
            textIn.append(delBtn)
            event.target.reset()
        })
    })

    const delBtn = document.createElement("button")
    delBtn.innerText = "x"
    delBtn.addEventListener("click", () => {
        fetch(messageUrl + message.id, {
            method: "DELETE"
        })
        textIn.remove()
    })

    disMes.append(textIn, updDiv)
    updDiv.append(updForm, updBtn)
    textIn.append(delBtn)
}

// function openForm() {
//     document.getElementById("updFrom").style.display = "block";
//   }
  
//   function closeForm() {
//     document.getElementById("updForm").style.display = "none";
//   }