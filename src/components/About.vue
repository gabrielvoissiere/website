<template>
    <section id="about">
        <!-- particles.js container -->
        <div id="particles-js"></div>

        <div id="title">
            <h2>qui suis-je ?</h2>
            <p>
                Gabriel Voissiere, étudiant à l'ECV digital
                à Aix en Provence, je donne vie à vos
                projet en tant que développeur freelance
            </p>
        </div>
        <p id="story">
            Dans le développement web depuis 2016, je suis passé
            freelance en 2021. Je mets tout en œuvre pour vous fournir
            un travail de qualité et adapté aux besoins de votre projet.
            <br><br>
            Mes compétences en développement web vont du site
            one-page au site e-commerce en passant par l'intégration
            de webdesign et la préparation de page pour un travail
            de référencement.
        </p>
    </section>
</template>

<script>
    export default {
        name: "About"
    }
</script>

<style lang="scss" scoped>
    #particles-js {
        position: absolute;
        width: 100%;
        height: 100%;
    }

    #about {
        width: 100vw;
        height: 100vh;
        background-color: #303132;
        position: relative;
        text-align: left;
        color: white;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        z-index: 999;

            @media screen and (min-width: 1030px) and (max-width: 1280px) {
                height: auto;
                padding: 5vh 0;
            }

        h2,
        p {
            z-index: 999;
        }


        #title {
            width: 20%;
            align-self: flex-start;
            margin-bottom: 15vh;
            margin-left: 10vw;
            display: flex;
            flex-direction: column;
            align-items: flex-start;

            @media screen and (min-width: 475px) and (max-width: 1030px) {
                width: 50%;
            }

            @media screen and (max-width: 475px) {
                width: 100%;
                align-items: center;
                text-align: center;
                margin-bottom: 5vh;
                margin-left: 0;
            }

            h2 {
                font-size: 2.25rem;
                text-transform: uppercase;
                border-bottom: 2px solid #E6332A;
                margin-bottom: 4vh;
            }

            p {
                font-size: 1.5rem;

                @media screen and (max-width: 475px) {
                    width: 90%;
                }
            }
        }

        #story {
            width: 30%;
            align-self: flex-end;
            margin-right: 10vw;
            font-size: 1.5rem;

            @media screen and (min-width: 475px) and (max-width: 1030px) {
                width: 50%;
            }

            @media screen and (max-width: 475px) {
                width: 90%;
                align-self: center;margin: 0;
                text-align: center;
            }
        }
    }
</style>