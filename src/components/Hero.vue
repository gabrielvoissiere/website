<template>
    <section id="hero">
        <!-- black filter -->
        <div id="filter-hero"></div>

        <!-- hero section title -->
        <div id="title">
            <h2>faite vous votre place sur internet</h2>
            <p>Développeur freelance à Aix en Provence, je développe vos projets web sur mesure</p>
        </div>

        <!-- anchor -->
        <div id="anchor">
            <a id="first" href="#contacts">Vous avez un projet ?</a>
            <div id="filter-link">
                <a href="#services">Mes services</a>
                <div id="filter"></div>
            </div>
        </div>
    </section>
</template>

<script>
    export default {
        name: "Hero"
    }
</script>

<style lang="scss" scoped>
    #hero {
        width: 100vw;
        height: 90vh;
        background-image: url("../assets/hero-background-min.webp");
        background-attachment: fixed;
        background-size: cover;
        background-position: center bottom;
        position: relative;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        color: white;

    @media screen and (max-width: 475px){
      height: 90vh;
    }

        #filter-hero {
            width: 100%;
            height: 100%;
            background-color: black;
            opacity: 0.5;
            position: absolute;
        }

        #title,
        #anchor {
            z-index: 1;
        }

        #title {
            @media screen and (max-width: 475px) {
                display: flex;
                flex-direction: column;
                align-items: center;
            }

            @keyframes typing {
                from {
                    width: 0%;
                }

                to {
                    width: 100%;
                }
            }

            @keyframes blink {

                from,
                to {
                    border-color: transparent;
                }

                50% {
                    border-color: #E6332A;
                }
            }

            h2 {
                // ajouter animation delay a 5000ms si loader activer, sinon 2200ms
                text-transform: uppercase;
                font-size: 2.5rem;

                overflow: hidden;
                letter-spacing: 2px;
                animation: typing 4s 2200ms steps(35, end) both, blink 1100ms step-end infinite;
                white-space: nowrap;
                border-right: 4px solid #E6332A;
                box-sizing: border-box;

                @media screen and (max-width: 475px) {
                    animation: none;
                    border: none;
                    overflow: initial;
                    white-space: initial;
                    width: 95%;
                    margin-bottom: 2vh;
                }
            }

            p {
                font-size: 1.5rem;
                font-weight: 300;
            }
        }

        #anchor {
            width: 40vw;
            display: flex;
            justify-content: space-between;
            align-items: center;
            position: relative;

            @media screen and (max-width: 475px) {
                flex-direction: column;
                width: 100%;
            }

            a,
            #filter-link {
                width: 40%;
                margin-top: 4vh;
                padding: 2vh 0;
                border-radius: 10px;
                color: white;
                text-decoration: none;
                transition: 250ms ease-in-out;

                @media screen and (max-width: 475px) {
                    width: 80%;
                }

                &:hover {
                    transform: scale(1.10);
                }
            }


            a#first {
                background-color: #E6332A;
            }

            #filter-link {
                border: 2px solid white;
                position: relative;

                a {
                    position: relative;
                    z-index: 4;
                }

                #filter {
                    position: absolute;
                    top: 0;
                    background-color: black;
                    border-radius: 10px;
                    opacity: 0.5;
                    width: 100%;
                    height: 100%;
                }
            }
        }
    }
</style>