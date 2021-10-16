<template>
    <section id="contacts">
        <!-- particles.js container -->
        <div id="particles-js-contact"></div>

        <p>Me contacter</p>
        <h2>développeur web freelance</h2>
        <p>
            Je travail sur place à Aix en Provence et en distanciel sur toute la France
            <br>
            <br>
            Pour une demande de devis pour votre projet ou une question sur ce dernier, vous pouvez me contacter par le
            formulaire ou directement par mail ou téléphone.
        </p>

        <div id="contact">
            <a href="mailto:gabvoissiere.pro@yahoo.com">gabvoissiere.pro@yahoo.com</a>
            <a href="tel:0695901310">06 95 90 13 10</a>
        </div>

        <form>
            <label for="name">Nom & Prénom</label>
            <input type="text" v-model="name" id="name">
            <label for="email" id="emailLabel">Email</label>
            <input type="email" name="email" id="email" v-model="email">
            <label for="message">Message</label>
            <textarea name="message" id="message" cols="30" rows="10" v-model="message"></textarea>
            <p id="sendBtn" @click="sendMsg()">Envoyer</p>
        </form>
    </section>
</template>

<script>
    export default {
        name: "Contacts",
        data() {
            return {
                email: "",
                message: "",
                name: ""
            }
        },
        methods: {
            sendMsg() {
                const testMail = /[A-Z0-9._%+-]+@[A-Z0-9-]+[.]+[A-Z]{2,3}/i

                if (this.email == "" || this.message == "" || this.name == "") {
                    let sendBtn = document.getElementById("sendBtn")
                    let name = document.getElementById("name")
                    let email = document.getElementById("email")
                    let message = document.getElementById("message")

                    sendBtn.classList.add("error")
                    name.classList.add("formError")
                    email.classList.add("formError")
                    message.classList.add("formError")

                    setTimeout(() => {
                        sendBtn.classList.remove("error")
                        name.classList.remove("formError")
                        email.classList.remove("formError")
                        message.classList.remove("formError")
                    }, 2000);
                } else if (testMail.test(this.email) == false) {
                    let emailLabel = document.getElementById("emailLabel")
                    let email = document.getElementById("email")
                    let sendBtn = document.getElementById("sendBtn")

                    emailLabel.innerHTML = "Email (veuillez rentrer une adresse email valide)"
                    emailLabel.style.color = "#E6332A"
                    email.classList.add("formError")
                    sendBtn.classList.add("error")

                    setTimeout(() => {
                        emailLabel.innerHTML = "Email"
                        emailLabel.style.color = "white"
                        email.classList.remove("formError")
                        sendBtn.classList.remove("error")
                    }, 4000);
                } else {
                    let templateParams = {
                        email: this.email,
                        message: this.message,
                        name: this.name
                    }

                    const emailjs = require("emailjs-com")
                    emailjs.send("gmailGaby", "gmailTemplate", templateParams)
                        .then(function (response) {
                            console.log('SUCCESS!', response.status, response.text);
                            if (response.status == 200 && response.text == "OK") {
                                let sendBtn = document.getElementById("sendBtn")
                                sendBtn.style.backgroundColor = "green"
                                sendBtn.innerHTML = "Message envoyé !"
                                setTimeout(() => {
                                    sendBtn.style.backgroundColor = "#E6332A"
                                    sendBtn.innerHTML = "Envoyer"
                                }, 2000);
                            }
                        }, function (error) {
                            console.log('FAILED...', error);
                        });

                    this.email = ""
                    this.message = ""
                    this.name = ""
                }
            }
        },
        mounted() {
            const emailjs = require("emailjs-com")
            emailjs.init("user_BIcodPXtKwsVI2FpBC9fP")
        }
    }
</script>

<style lang="scss" scoped>
    #particles-js-contact {
        position: absolute;
        top: 0;
        width: 100%;
        height: 100%;
    }

    #contacts {
        width: 100%;
        height: 100vh;
        background-color: #303132;
        color: white;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        position: relative;

        @media screen and (min-width: 1030px) and (max-width: 1280px) {
            justify-content: initial;
        }

        @media screen and (max-width: 475px) {
            height: auto;
            padding: 4vh 0;
        }

        h2,
        p,
        form,
        a {
            z-index: 999;
        }

        p:first-child {
            font-size: 1.25rem;
        }

        h2 {
            font-size: 2.25rem;
            text-transform: uppercase;
        }

        h2+p {
            width: 35%;
            margin: 2vh 0;

        @media screen and (min-width: 1030px) and (max-width: 1280px) {
            width: 50%;
        }

            @media screen and (min-width: 475px) and (max-width: 1030px) {
                width: 50%;
            }

            @media screen and (max-width: 475px) {
                width: 95vw;
            }
        }

        #contact {
            width: 35%;
            margin: 4vh 0;
            border-top: 2px solid #E6332A;
            border-bottom: 2px solid #E6332A;
            display: flex;
            align-items: center;
            justify-content: space-between;

        @media screen and (min-width: 1030px) and (max-width: 1280px) {
            width: 50%;
        }

            @media screen and (min-width: 475px) and (max-width: 1030px) {
                width: 50%;
            }

            @media screen and (max-width: 475px) {
                width: 95vw;
            }

            a {
                padding: 1vh;
                color: white;
                text-decoration: none;
            }
        }

        form {
            width: 35%;
            display: flex;
            flex-direction: column;
            caret-color: #E6332A;

        @media screen and (min-width: 1030px) and (max-width: 1280px) {
            width: 50%;
            margin-top: 2vh;
        }

            @media screen and (min-width: 475px) and (max-width: 1030px) {
                width: 50%;
            }

            @media screen and (max-width: 475px) {
                width: 95vw;
            }


            label {
                text-align: left;
                margin-bottom: 0.5vh;
            }

            input+label {
                margin-top: 2vh;
            }

            input,
            textarea {
                border-radius: 10px;
                border: none;
                padding: 2vh;
                outline: none;

                &.formError {
                    border: 2px solid #E6332A;
                    color: #E6332A;
                }
            }

            

        @media screen and (min-width: 1030px) and (max-width: 1280px) {
            textarea {
                height: 15%;
            }
        }

            @keyframes formError {
                0% {
                    transform: translateX(5%);
                }

                50% {
                    transform: translateX(-5%);
                }

                100% {
                    transform: translateX(5%);
                }
            }

            p {
                margin-top: 4vh;
                padding: 1vh 0;
                width: 30%;
                background-color: #E6332A;
                color: white;
                font-weight: 700;
                border: none;
                border-radius: 10px;
                transition: 500ms ease-in-out;

                &:hover {
                    cursor: pointer;
                }

                &.error {
                    background-color: red;
                    animation: formError 100ms alternate;
                }
            }
        }
    }
</style>