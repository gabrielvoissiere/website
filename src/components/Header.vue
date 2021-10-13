<template>
  <header>
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
        <li>accueil</li>
        <li>a propos</li>
        <li>mes services</li>
        <li>portfolio</li>
        <li>contactez moi</li>
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

@keyframes logo {
  from {
    transform: rotateZ(0deg) scale(0);
  }
  to {
    transform: rotateZ(360deg) scale(1);
  }
}

@keyframes title {
  from {
    transform: translateX(-50%);
    opacity: 0;
  }
  to {
    transform: translateX(0);
    opacity: 1;
  }
}

@keyframes navigation {
  from {
    transform: translateX(100%);
    opacity: 0;
  }
  to {
    transform: translateX(0);
    opacity: 1;
  }
}

  header {
    width: 100vw;
    height: 10vh;
    display: flex;
    justify-content: space-between;
    align-items: center;

    #title {
      display: flex;
      height: 100%;
      align-items: center;
        animation: title ease-in-out 2000ms;

      img {
        height: 80%;
        margin-left: 4vh;
        z-index: 999;
        // animation: logo ease-in-out 2000ms 1000ms both;
      }

      #name-job {
        text-align: left;
        margin-left: 4vh;

        h1 {
          font-size: 1.5rem;
        }
      }
    }

    nav {
      width: 40%;
      margin-right: 4vh;
      animation: navigation ease-in-out 2000ms 500ms both;

      ul {
        display: flex;
        justify-content: space-between;
        align-items: center;
        list-style-type: none;

        li {
          text-transform: uppercase;
          font-size: 0.75rem;

          &:last-child {
            color: #E6332A;
            font-weight: 700;
          }
        }
      }
    }
  }
</style>