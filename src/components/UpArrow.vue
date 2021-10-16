<template>
    <div id="UpArrow">
        <a href="#header">&#8613;</a>
    </div>
</template>

<script>
    export default {
        name: "UpArrow",
        mounted() {
            let UpArrow = document.getElementById("UpArrow")
            window.addEventListener("scroll", function () {
                let headerHeight = document.getElementById("header").offsetHeight
                let heroHeight = document.getElementById("hero").offsetHeight
                let home = headerHeight + heroHeight

                if (window.scrollY > home) {
                    UpArrow.style.opacity = "1"
                } else if (window.scrollY < home) {
                    UpArrow.style.opacity = "0"
                }
            })
        }
    }
</script>

<style lang="scss" scoped>
    div {
        width: 8vh;
        height: 8vh;
        background-color: #E6332A;
        position: fixed;
        bottom: 2vh;
        right: 2vh;
        z-index: 999;
        border-radius: 100%;
        transition: 300ms ease-in-out;

        a {
            width: 100%;
            height: 100%;
            color: white;
            text-decoration: none;
            font-size: 1.75rem;
            display: flex;
            align-items: center;
            justify-content: center;
        }
    }
</style>