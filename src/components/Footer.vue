<template>
    <footer>
        <p>© Gabriel Voissiere - {{ years }}</p>
        <router-link id="link" to="/mentions">Mention légales</router-link>
    </footer>
</template>

<script>
export default {
    name: "Footer",
    data() {
        return {
            
        }
    },
    computed: {
        years () {
            let date = new Date()
            let year= date.getFullYear()
            return year
        }
    }
}
</script>

<style lang="scss" scoped>
    footer {
        width: 100%;
        height: 10vh;
        background-color: #1c1c1d;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;

        #link {
            color: white;
            text-decoration: none;
            margin-left: 2vh;
        } 
    }
</style>