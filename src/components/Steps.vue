<template>
    <section id="global">
        <h2>Les étapes de developpement de votre site</h2>
        <section id="steps">
            <article>
                <h3>préparation</h3>
                <p>
                    Nous discutons ensemble de votre projet, puis je note vos besoins pour les transformés en solution techniques
                </p>
                <div id="filter"></div>
            </article>
            <article id="modifier">
                <h3>développement</h3>
                <p>
                    Je m'occupe du développement technique en fonction de ce que nous avons choisie lors de la préparation du projet
                </p>
                <div id="filter"></div>
            </article>
            <article>
                <h3>rendu</h3>
                <p>
                    Je vous livre le projet et suis à votre disposition le mois qui suit pour le modifier s'y besoin est (changement par exemple)
                </p>
                <div id="filter"></div>
            </article>
        </section>
    </section>
</template>

<script>
    export default {
        name: "Steps"
    }
</script>

<style lang="scss" scoped>
    #global {
        display: flex;
        flex-direction: column;
        align-items: center;

        h2 {
            font-size: 2.25rem;
            border-bottom: 2px solid #E6332A;
            margin-top: 4vh;
            text-transform: uppercase;

                @media screen and (max-width: 475px) {
                    font-size: 1.5rem;
                    padding-bottom: 2vh;
                }
        }

        #steps {
            width: 100%;
            display: flex;
            justify-content: space-between;

                @media screen and (max-width: 475px) {
                    flex-direction: column;
                }

            article {
                position: relative;
                width: 33vw;
                height: 40vh;
                background-color: red;
                margin-top: 4vh;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;

                @media screen and (max-width: 475px) {
                    width: 100vw;
                    height: 20vh;
                    margin-top: 2vh;
                }

                h3,p {
                    color: white;
                    z-index: 5;
                }

                h3 {
                    text-transform: uppercase;
                    margin-bottom: 1vh;
                    font-size: 1.5rem;
                }

                p {
                    width: 80%;
                    margin-top: 1vh;
                    font-size: 1.10rem;
                }
            }

            article:first-child {
                background-image: url("../assets/preparation-min.webp");
                background-size: cover;
                background-position: center center;

                @media screen and (max-width: 475px) {
                    margin-top: 4vh;
                }
            }

            article:nth-child(2) {
                width: 34vw;
                background-image: url("../assets/developpement-min.webp");
                background-size: cover;

                @media screen and (max-width: 475px) {
                    width: 100vw;
                    height: 20vh;
                }
            }

            article:last-child {
                background-image: url("../assets/rendu-min.webp");
                background-size: cover;
            }

            #filter {
                position: absolute;
                width: 100%;
                height: 100%;
                background-color: black;
                opacity: 0.5;
            }
        }
    }
</style>