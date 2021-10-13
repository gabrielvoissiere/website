<template>
    <footer>
        <p>© Gabriel Voissiere - {{ years }}</p>
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
        background-color: #353536;
        display: flex;
        align-items: center;
        justify-content: center;
        color: white;
    }
</style>