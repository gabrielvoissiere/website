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
            <label for="email">Email</label>
            <input type="email" name="email" id="email">
            <label for="message">Message</label>
            <textarea name="message" id="message" cols="30" rows="10"></textarea>
            <input type="submit" value="Envoyer">
        </form>
    </section>
</template>

<script>
    export default {
        name: "Contacts"
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
        background-color: #303132;
        color: white;
        padding: 8vh 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        position: relative;

        h2,p,form,a {
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
            width: 60%;
            margin: 2vh 0;
        }

        #contact {
            width: 35%;
            margin: 4vh 0;
            border-top: 2px solid #E6332A;
            border-bottom: 2px solid #E6332A;
            display: flex;
            align-items: center;
            justify-content: space-between;

            a {
                padding: 1vh;
                color: white;
                text-decoration: none;
            }
        }

        form {
            width: 50%;
            display: flex;
            flex-direction: column;

            label {
                text-align: left;
                margin-bottom: 0.5vh;
            }

            input + label {
                margin-top: 2vh;
            }

            input, textarea {
                border-radius: 10px;
                border: none;
                padding: 2vh;
                outline: none;
            }

            input[type=submit] {
                margin-top: 4vh;
                width: 30%;
                background-color: #E6332A;
                color: white;
                font-weight: 700;

                &:hover {
                    cursor: pointer;
                }
            }
        }
    }
</style>