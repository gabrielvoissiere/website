<template>
    <section id="global">
        <h2>Mes services</h2>
        <section id="services">
            <article v-for="data in services" :key="data">
                <img :src="require(`@/assets/${data.imgUrl}`)" :alt="data.altImg">
                <h3>{{ data.name }}</h3>
                <p>{{ data.sumup }}</p>
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
                    imgUrl: "hero-background.jpg",
                    altImg: "Développement web"
                },
                {
                    name: "intégration de maquettes",
                    sumup: "Je m'occupe de l'intégration de votre maquette web desktop/mobile en utilisant les technologie moderne comme le HTML5, le CSS3 et le JavaScript ES6+. le Framework Vue JS peu aussi être utiliser pour l'intégration",
                    imgUrl: "hero-background.jpg",
                    altImg: "intégration de maquettes"
                },
                {
                    name: "responsive design",
                    sumup: "Ajout ou amélioration du responsive sur un site web déjà existant / adaptation d'un site web à la vue tablette et mobile pour une maximum de visibilité et un référencement naturel amélioré",
                    imgUrl: "hero-background.jpg",
                    altImg: "responsive design"
                },
                {
                    name: "site vitrine / one page",
                    sumup: "Création de site vitrine et site one page avec adaptation tablette et mobile, structure de page optimiser pour le référencement naturel. Idéal pour se faire connaitre et/ou exposer ses produits/services à de potentiel client",
                    imgUrl: "hero-background.jpg",
                    altImg: "site vitrine / one page"
                },
                {
                    name: "intervention scolaire",
                    sumup: "Intervention dans les écoles pour mettre en place des ateliers de découverte du développement web en s'amusant. Mise en place de cours d'initiation au développement web au collège et au lycée ",
                    imgUrl: "hero-background.jpg",
                    altImg: "intervention scolaire"
                }]
            }
        },
    }
</script>

<style lang="scss" scoped>
    #global {
        display: flex;
        flex-direction: column;
        align-items: center;

        h2 {
            border-bottom: 2px solid #E6332A;
            margin-top: 2vh;
            font-size: 2.25rem;
            text-transform: uppercase;
        }

        #services {
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

                img {
                    width: 100%;
                    height: 50%;
                    object-fit: cover;
                    border-radius: 10px 10px 0 0;
                }

                h3,
                p {
                    width: 90%;
                    margin-top: 4vh;
                }

                h3 {
                    text-transform: uppercase;
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