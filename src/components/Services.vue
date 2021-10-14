<template>
    <section id="services">
        <h2>Mes services</h2>
        <section id="service">
            <article v-for="data in services" :key="data">
                <img :src="require(`@/assets/${data.imgUrl}`)" :alt="data.altImg">
                <div id="text">
                    <h3>{{ data.name }}</h3>
                    <p>{{ data.sumup }}</p>
                </div>
            </article>
            <div id="blank">
                <div id="filter"></div>
                <img src="../assets/nothing.png" alt="">
            </div>
        </section>
    </section>
</template>

<script>
    export default {
        name: "Service",
        data() {
            return {
                services: [{
                        name: "Développement web",
                        sumup: "Développement de votre projet en assurent sa lisibilité sur tablette et mobile. Nous échangeons ensemble et en direct durant son développement et vous pouvez voir son avancement à tout moment",
                        imgUrl: "devweb-min.webp",
                        altImg: "Développement web"
                    },
                    {
                        name: "intégration de maquettes",
                        sumup: "Je m'occupe de l'intégration de votre maquette web desktop/mobile en utilisant les technologie moderne comme le HTML5, le CSS3 et le JavaScript ES6+. le Framework Vue JS peu aussi être utiliser pour l'intégration",
                        imgUrl: "maquette-min.webp",
                        altImg: "intégration de maquettes"
                    },
                    {
                        name: "responsive design",
                        sumup: "Ajout ou amélioration du responsive sur un site web déjà existant / adaptation d'un site web à la vue tablette et mobile pour une maximum de visibilité et un référencement naturel amélioré",
                        imgUrl: "responsive-min.webp",
                        altImg: "responsive design"
                    },
                    {
                        name: "site vitrine / one page",
                        sumup: "Création de site vitrine et site one page avec adaptation tablette et mobile, structure de page optimiser pour le référencement naturel. Idéal pour se faire connaitre et/ou exposer ses produits/services à de potentiel client ",
                        imgUrl: "onepage-min.webp",
                        altImg: "site vitrine / one page"
                    },
                    {
                        name: "intervention scolaire",
                        sumup: "Intervention dans les écoles pour mettre en place des ateliers de découverte du développement web en s'amusant. Mise en place de cours d'initiation au développement web au collège et au lycée ",
                        imgUrl: "intervention-min.webp",
                        altImg: "intervention scolaire"
                    }
                ]
            }
        },
    }
</script>

<style lang="scss" scoped>
    #services {
        display: flex;
        flex-direction: column;
        align-items: center;

        h2 {
            border-bottom: 2px solid #E6332A;
            margin-top: 2vh;
            font-size: 2.25rem;
            text-transform: uppercase;
        }

        #service {
            width: 95vw;
            display: grid;
            grid-template-rows: repeat(auto, 1fr);
            grid-template-columns: repeat(2, 1fr);
            gap: 5vh;
            margin: 4vh 0;

            article {
                height: 60vh;
                border-radius: 10px;
                box-shadow: 4px 4px 20px rgba(0, 0, 0, 0.350);
                text-align: left;
                display: flex;
                flex-direction: column;
                align-items: center;
                overflow: hidden;

                &:hover>img {
                    opacity: 80%;
                    height: 45%;
                }

                img {
                    width: 100%;
                    height: 50%;
                    object-fit: cover;
                    border-radius: 10px 10px 0 0;
                    transition: 300ms ease-in-out;
                }

                #text {
                    width: 90%;
                    height: 50%;
                    display: flex;
                    flex-direction: column;
                    justify-content: center;

                    h3 {
                        text-transform: uppercase;
                        font-size: 2.25rem;
                    }

                    p {
                        margin-top: 2vh;
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
                    opacity: 50%;
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