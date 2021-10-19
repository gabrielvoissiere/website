<template>
    <section id="global">
        <p>Mon travail</p>
        <h2>en chiffres</h2>

        <div id="numbers">
            <div>
                <p>Projets terminés</p>
                <p>6</p>
            </div>
            <div>
                <p>Nombre de clients</p>
                <p>4</p>
            </div>
            <div>
                <p>Années d'experience</p>
                <p>5</p>
            </div>
        </div>
    </section>
</template>

<script>
    export default {
        name: "Numbers"
    }
</script>

<style lang="scss" scoped>
    #global {
        display: flex;
        flex-direction: column;
        align-items: center;
        margin-top: 5vh;

        p {
            font-size: 1.5rem;
        }

        h2 {
            font-size: 2.25rem;
            text-transform: uppercase;
            border-bottom: 2px solid #E6332A;
        }

        #numbers {
            width: 100%;
            margin-top: 8vh;
            display: flex;
            align-items: center;
            justify-content: space-around;

            @media screen and (max-width: 475px) {
                flex-direction: column;
                margin-top: 4vh;
            }

            div {
                width: 28%;
                background-color: red;
                padding: 4vh 0;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: space-around;
                margin-bottom: 4vh;
                color: white;

                @media screen and (max-width: 475px) {
                    width: 100vw;
                    margin-bottom: 2vh;
                }

                p:last-child {
                    font-size: 3rem;
                    margin-top: 2vh;
                    font-weight: 300;
                    text-shadow: 1px 1px black;
                }
            }

            div:first-child {
                background-color: orange;
            }

            div:nth-child(2) {
                background-color: orangered;
            }

            div:last-child {
                background-color: red;
            }
        }
    }
</style>