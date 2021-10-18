<template>
  <div class="home">
    <!-- <AsideNav /> -->
    <Header/>
    <Hero />
    <About />
    <Services />
    <Steps />
    <Numbers />
    <Contacts />
    <Footer />
    <UpArrow />
    <!-- <Loader /> -->
  </div>
</template>

<script>
// import AsideNav from '@/components/AsideNav.vue'
import Header from '@/components/Header.vue'
import Hero from '@/components/Hero.vue'
import About from '@/components/About.vue'
import Services from '@/components/Services.vue'
import Steps from '@/components/Steps.vue'
import Numbers from '@/components/Numbers.vue'
import Contacts from '@/components/Contacts.vue'
import Footer from '@/components/Footer.vue'
import UpArrow from '@/components/UpArrow.vue'
// import Loader from '@/components/Loader.vue'


export default {
  name: 'Home',
  components: {
    // AsideNav,
    Header,
    Hero,
    About,
    Services,
    Steps,
    Numbers,
    Contacts,
    Footer,
    UpArrow,
    // Loader
  },
  mounted() {
    console.log(window.innerWidth)
    console.log(window.innerHeight)
  },
}
</script>
