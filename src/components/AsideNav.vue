<template>
    <aside id="asideNav">
        <ul>
            <li><a href="#header">accueil</a></li>
            <li><a href="#about">a propos</a></li>
            <li><a href="#services">services</a></li>
            <li><a href="">portfolio</a></li>
            <li><a href="#contacts">contacts</a></li>
        </ul>
    </aside>
</template>

<script>
    export default {
        name: "AsideNav",
        mounted() {
            let asideNav = document.getElementById("asideNav")
            window.addEventListener("scroll", function () {
                let headerHeight = document.getElementById("header").offsetHeight
                let heroHeight = document.getElementById("hero").offsetHeight
                let home = headerHeight + heroHeight

                if (window.scrollY > home) {
                    asideNav.style.transform = "translate(90%)"
                } else if (window.scrollY < home) {
                    asideNav.style.transform = "translate(100%)"
                }
            })
            asideNav.addEventListener("mouseover", function () {
                asideNav.style.transform = "translate(0%)"
            })
            asideNav.addEventListener("mouseout", function () {
                asideNav.style.transform = "translate(90%)"
            })
        }
    }
</script>

<style lang="scss" scoped>
    aside {
        background-color: #E6332A;
        position: fixed;
        z-index: 1000;
        right: 0;
        top: 10vh;
        border-radius: 10px 0px 0px 10px;
        transition: 300ms ease-in-out;
        transform: translateX(100%);
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: space-between;

                @media screen and (max-width: 475px) {
                    display: none;
                }

        ul {
            text-align: left;
            list-style-type: none;
            justify-self: center;
            margin-right: 2vh;

            li {
                width: 100%;
                margin: 2vh 0;

                a {
                    text-decoration: none;
                    color: white;
                    text-transform: uppercase;
                }
            }
        }
    }
</style>