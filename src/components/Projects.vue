<template>
    <section id="portfolio">
        <h2>Portfolio</h2>
        <section id="projects">
            <article v-for="data in projects" :key="data">
                <img :src="require(`@/assets/${data.imgUrl}`)" :alt="data.altImg">
                <div id="text">
                    <h3>{{ data.name }}</h3>
                    <h4>{{ data.type }} / {{ data.langage }}</h4>
                    <p>{{ data.sumup }}</p>
                    <a v-if="data.link != ''" :href="data.link">Voir le projet</a>
                </div>
            </article>
        </section>
    </section>
</template>

<script>
    export default {
        name: "Projects",
        data() {
            return {
                projects: [{
                    name: "ORINOCO",
                    type: "site e-commerce",
                    langage: "HTML, SCSS, JavaScript",
                    sumup: "Front-end du site, connexion à l'API et affichage des données avec gestion du panier",
                    imgUrl: "orinoco.svg",
                    altImg: "site e-commerce - photo by gabriel Voissiere",
                    link: ""
                }, {
                    name: "La chouette agence",
                    type: "Site vitrine",
                    langage: "HTML",
                    sumup: "Optimisation du SEO et de l'accessibiliter",
                    imgUrl: "lachouetteagence.svg",
                    altImg: "site vitrine - photo by gabriel Voissiere",
                    link: ""
                }, {
                    name: "Groupomania",
                    type: "réseau social d'entreprise",
                    langage: "Vue JS",
                    sumup: "Création d'un réseaux social d'entreprise sous forme de forum pour textes et images",
                    imgUrl: "groupomania.svg",
                    altImg: "réseau social - photo by gabriel Voissiere",
                    link: ""
                }, {
                    name: "So pecoko",
                    type: "API",
                    langage: "Javascript",
                    sumup: "Création d'une API pour une application qui permet de donner son avis sur des sauces",
                    imgUrl: "sopecoko.svg",
                    altImg: "création d'api - photo by gabriel Voissiere",
                    link: ""
                }]
            }
        },
    }
</script>

<style lang="scss" scoped>
    #portfolio {
        display: flex;
        flex-direction: column;
        align-items: center;
        background-color: white;

        h2 {
            border-bottom: 2px solid #E6332A;
            margin-top: 2vh;
            font-size: 2.25rem;
            text-transform: uppercase;
        }

        #projects {
            width: 95vw;
            display: grid;
            grid-template-rows: repeat(auto, 1fr);
            grid-template-columns: repeat(2, 1fr);
            gap: 5vh;
            margin: 4vh 0;

            @media screen and (max-width: 475px) {
                grid-template-columns: repeat(1, 1fr);
            }

            article {
                height: 32vh;
                border-radius: 10px;
                box-shadow: 4px 4px 20px rgba(0, 0, 0, 0.350);
                text-align: left;
                display: flex;
                justify-content: space-between;
                align-items: center;
                overflow: hidden;
                background-color: whitesmoke;
                transition: 200ms ease-in-out;

                @media screen and (max-width: 475px) {
                    height: 60vh;
                    flex-direction: column;
                }

                &:hover {
                    transform: scale(1.02);
                }

                img {
                    width: 45%;
                    height: 100%;
                    object-fit: cover;
                    border-radius: 10px 0 0 10px;

                    @media screen and (max-width: 475px) {
                        width: 100%;
                        height: 50%;
                    }
                }

                #text {
                    width: 50%;
                    height: 50%;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    margin-right: 1vh;

                    @media screen and (max-width: 475px) {
                        width: 80%;
                    }

                    h3 {
                        text-transform: uppercase;
                        font-size: 2.25rem;
                    }

                    h4 {
                        text-transform: uppercase;
                        font-size: 1rem;
                        color: gray;
                        font-weight: 500;
                    }

                    p,
                    a {
                        margin-top: 2vh;
                    }

                    a {
                        color: #2c3e50;
                        text-decoration: none;
                        font-weight: 900;
                    }
                }
            }

            #blank {
                height: 60vh;
                border-radius: 10px;
                box-shadow: 4px 4px 20px rgba(0, 0, 0, 0.350);
                position: relative;

                #filter {
                    width: 100%;
                    height: 100%;
                    border-radius: 10px;
                    background-color: #000000;
                    opacity: 0.5;
                    position: absolute;
                    top: 0;
                }

                img {
                    width: 100%;
                    height: 100%;
                    object-fit: cover;
                    border-radius: 10px;
                }
            }
        }
    }
</style>