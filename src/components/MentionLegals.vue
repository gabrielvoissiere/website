<template>
    <section>
        <article>
            <h2>Gabriel Voissiere</h2>
            <p id="first">
                1257 Chemin de Barcelone,<br>
                Saint-Maximin-La-SainteBaume<br>
                83470<br>
                <br>
                06 95 90 13 10<br>
                gabvoissiere.pro@yahoo.com
                <br><br>
                <strong>Directeur de publication</strong><br>
                Gabriel Voissiere
            </p>
        </article>
        <article>
            <h2>IONOS</h2>
            <p>
                7 Place de la Gare<br>
                Sarreguemines<br>
                57200
                <br>
                09 70 80 89 11
            </p>
        </article>
    </section>
</template>

<script>
    export default {
        name: "MentionLegals"
    }
</script>

<style lang="scss" scoped>
    section {
        height: 80vh;
        display: flex;
        align-items: center;
        justify-content: center;

        @media screen and (max-width: 475px) {
            flex-direction: column;
        }

        article {
            margin: 0px 10vh;
            text-align: left;

        @media screen and (max-width: 475px) {
            text-align: center;
            margin: 5vh 0;
        }
        }
    }
</style>