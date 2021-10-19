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
                <!-- <div id="filter"></div> -->
                <img src="../assets/nothing.webp" alt="">
                <!-- <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 437.5 437.5">
                    <defs></defs>
                    <g id="Calque_3" data-name="Calque 3">
                        <path class="cls-1"
                            d="M195.5,160.1l.3.9-.8.2-2.4.8H192l-.8.3-1.8.6A176.1,176.1,0,0,0,146,185.8l-.6.5-.4.2-.8.6h-.1l-1.8,1.3-.7-.9-1.1-1.2-1.3-1.7-.9-1.2-.9-1.4a50.1,50.1,0,0,1,.8-56.1,49.9,49.9,0,0,1,51.6,22,6.1,6.1,0,0,0,.7,1l.7,1.2a4.7,4.7,0,0,1,.5,1c.5.8.9,1.6,1.3,2.4l.4,1a26.3,26.3,0,0,1,1.5,3.5c.1.4.3.8.4,1.1A2.9,2.9,0,0,1,195.5,160.1Z"
                            transform="translate(-31.3 -31.3)" />
                        <path class="cls-1"
                            d="M305,160.1l-.3.9.9.2,2.4.8h.6l.7.3,1.8.6a178.5,178.5,0,0,1,43.5,22.7l.6.5.4.2.7.6h.1l1.8,1.3.8-.9,1-1.2,1.3-1.7a4.7,4.7,0,0,0,.9-1.2l1-1.4a49.9,49.9,0,0,0-.9-56.1,49.8,49.8,0,0,0-51.5,22,6.1,6.1,0,0,0-.7,1,7.5,7.5,0,0,0-.7,1.2l-.6,1-1.3,2.4a10.4,10.4,0,0,1-.4,1c-.5,1.2-1,2.3-1.4,3.5a7.6,7.6,0,0,0-.4,1.1Z"
                            transform="translate(-31.3 -31.3)" />
                        <path class="cls-1"
                            d="M250,32.3C129.8,32.3,32.3,129.8,32.3,250S129.8,467.7,250,467.7,467.7,370.2,467.7,250,370.2,32.3,250,32.3ZM403.4,256.1h-.2l-1.3.3a174.4,174.4,0,0,1,8.2,15.4,177.1,177.1,0,0,0-26.8,6.4l-.7.2.4.6c2.3,3.9,4.4,8,6.4,12.1a155.8,155.8,0,0,0-110.8,77.2,177,177,0,0,0-16.5,51.8,13.3,13.3,0,0,1,.8,4.5,12.9,12.9,0,1,1-25.8,0,13.9,13.9,0,0,1,.8-4.6,178.2,178.2,0,0,0-16.4-51.7,156,156,0,0,0-110.8-77.2c1.9-4.1,4.1-8.2,6.3-12.1l.4-.6-.7-.2A175.8,175.8,0,0,0,90,271.8a153,153,0,0,1,8.2-15.5l-1.2-.2h-.3l-1.9-.3-2-.4h-.4l-2.2-.4-1.5-.2h0a171,171,0,0,1,15.1-26.2,186.5,186.5,0,0,1,16.5-20.2A201.5,201.5,0,0,1,135.4,194a65.9,65.9,0,0,1-12.2-14.1,70,70,0,0,1-11-33.1h0a68.7,68.7,0,0,1,12.2-43.3,68,68,0,0,1,44.5,6.4h.1a69.6,69.6,0,0,1,25.8,23.3,68.7,68.7,0,0,1,10,25.2,173.3,173.3,0,0,1,17.4-3.6,176.9,176.9,0,0,1,23-1.9h9.7a176.9,176.9,0,0,1,23,1.9q8.7,1.3,17.4,3.6a67,67,0,0,1,10-25.2A68.6,68.6,0,0,1,331,110h.2a67.9,67.9,0,0,1,44.5-6.4,68.4,68.4,0,0,1,12.2,39.2c0,1.3,0,2.7-.1,4.1A69.4,69.4,0,0,1,364.7,194a201.5,201.5,0,0,1,15.1,14.2,174.5,174.5,0,0,1,16.4,20.2,171.6,171.6,0,0,1,15.2,26.2h0l-1.5.2-2.3.4-1.1.2-1.7.3-1.5.3Z"
                            transform="translate(-31.3 -31.3)" />
                    </g>
                </svg> -->
            </div>
        </section>
    </section>
</template>

<script>
    import anime from 'animejs/lib/anime.es.js'
    export default {
        name: "Service",
        data() {
            return {
                services: [{
                        name: "Développement web",
                        sumup: "Développement de votre projet en assurent sa lisibilité sur tablette et mobile. Nous échangeons ensemble et en direct durant son développement et vous pouvez voir son avancement à tout moment",
                        imgUrl: "devweb-min.webp",
                        altImg: "Développement web - photo by Nathan da Silva from unsplash.com"
                    },
                    {
                        name: "intégration de maquettes",
                        sumup: "Je m'occupe de l'intégration de votre maquette web desktop/mobile en utilisant les technologie moderne comme le HTML5, le CSS3 et le JavaScript ES6+. le Framework Vue JS peu aussi être utiliser pour l'intégration",
                        imgUrl: "maquette-min.webp",
                        altImg: "intégration de maquettes - photo by Sigmund form unsplash.com"
                    },
                    {
                        name: "responsive design",
                        sumup: "Ajout ou amélioration du responsive sur un site web déjà existant / adaptation d'un site web à la vue tablette et mobile pour une maximum de visibilité et un référencement naturel amélioré",
                        imgUrl: "responsive-min.webp",
                        altImg: "responsive design  - photo by Adeolu Eletu from unsplash.com"
                    },
                    {
                        name: "site vitrine / one page",
                        sumup: "Création de site vitrine et site one page avec adaptation tablette et mobile, structure de page optimiser pour le référencement naturel. Idéal pour se faire connaitre et/ou exposer ses produits/services à de potentiel client ",
                        imgUrl: "onepage-min.webp",
                        altImg: "site vitrine / one page - photo by Igor Miske from unsplash.com"
                    },
                    {
                        name: "intervention scolaire",
                        sumup: "Intervention dans les écoles pour mettre en place des ateliers de découverte du développement web en s'amusant. Mise en place de cours d'initiation au développement web au collège et au lycée ",
                        imgUrl: "intervention.webp",
                        altImg: "intervention scolaire  - photo by John Schnobrich from unsplash.com"
                    }
                ]
            }
        },
        mounted() {
            document.querySelector("#blank").addEventListener("mouseover", function() {
                anime({
                targets: 'path',
                strokeDashoffset: [anime.setDashoffset, 0],
                easing: 'easeInOutSine',
                duration: 2000,
                delay: function (el, i) {
                    return i * 500
                }
            });
            })
        }
    }
</script>

<style lang="scss" scoped>
    #services {
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

        #service {
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
                height: 60vh;
                border-radius: 10px;
                box-shadow: 4px 4px 20px rgba(0, 0, 0, 0.350);
                text-align: left;
                display: flex;
                flex-direction: column;
                align-items: center;
                overflow: hidden;
                background-color: whitesmoke;

                &:hover>img {
                    opacity: 0.8;
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
                display: flex;
                justify-content: center;
                align-items: center;
                overflow: hidden;

                &:hover>img {
                    transform: scale(1.1);
                }

                // svg {
                //     width: auto;
                //     height: 90%;
                //     object-fit: cover;
                //     border-radius: 10px;

                //     .cls-1 {
                //         fill: none;
                //         stroke: #e6332a;
                //         stroke-miterlimit: 10;
                //         stroke-width: 2px;
                //     }
                // }

                img {
                    width: 100%;
                    height: 100%;
                    object-fit: cover;
                    border-radius: 10px;
                    transition: 300ms ease-in-out;
                }
            }
        }
    }
</style>