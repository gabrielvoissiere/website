<template>
  <header id="header">
    <!-- title block -->
    <div id="title">
      <!-- logo du site -->
      <img src="../assets/v1-svg.svg" alt="Gabriel Voissiere dévelppeur freelance">

      <!-- name & job block -->
      <div id="name-job">
        <h1>Gabriel Voissiere</h1>
        <p>Développeur freelance à Aix en Provence</p>
      </div>
    </div>
    <!-- navigation -->
    <nav>
      <ul>
        <li><a><router-link to="/">Accueil</router-link></a></li>
        <li><a href="#about">a propos</a></li>
        <li><a href="#services">mes services</a></li>
        <li><a href="">portfolio</a></li>
        <li><a id="modifier" href="#contacts">contactez moi</a></li>
      </ul>
    </nav>
  </header>
</template>

<script>
  export default {
    name: 'Header'
  }
</script>

<style lang="scss" scoped>
  header {
    width: 100vw;
    height: 10vh;
    display: flex;
    justify-content: space-between;
    align-items: center;

    @media screen and (max-width: 475px) {
      flex-direction: column;
      height: 10vh;
    }

    #title {
      display: flex;
      height: 100%;
      align-items: center;

    @media screen and (max-width: 475px){
      justify-content: space-between;
    }

      img {
        height: 80%;
        width: auto;
        margin-left: 4vh;
        z-index: 999;

        @media screen and (max-width: 475px) {
          display: none;
        }
      }

      #name-job {
        text-align: left;
        margin-left: 4vh;

    @media screen and (max-width: 475px){
      margin: 2vh;
    }

        h1 {
          font-size: 1.5rem;
        }
      }
    }

    nav {
      width: 40%;
      margin-right: 4vh;

    @media screen and (max-width: 475px){
      display: none;
    }

      ul {
        display: flex;
        justify-content: space-between;
        align-items: center;
        list-style-type: none;

    @media screen and (max-width: 475px){
      padding: 0;
    }

        li {
          text-transform: uppercase;
          font-size: 0.75rem;

          a {
            text-decoration: none;
            color: black;
          }

          #modifier:last-child {
            color: #E6332A;
            font-weight: 700;
          }
        }
      }
    }
  }
</style>