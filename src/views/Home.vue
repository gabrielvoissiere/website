<template>
  <div class="home">
    <Header/>
    <Hero />
    <About />
    <Services />
    <Steps />
    <Numbers />
    <Projects />
    <Contacts />
    <Footer />
    <UpArrow />
    <!-- <Loader /> -->
  </div>
</template>

<script>
import Header from '@/components/Header.vue'
import Hero from '@/components/Hero.vue'
import About from '@/components/About.vue'
import Services from '@/components/Services.vue'
import Steps from '@/components/Steps.vue'
import Numbers from '@/components/Numbers.vue'
import Projects from '@/components/Projects.vue'
import Contacts from '@/components/Contacts.vue'
import Footer from '@/components/Footer.vue'
import UpArrow from '@/components/UpArrow.vue'
// import Loader from '@/components/Loader.vue'


export default {
  name: 'Home',
  components: {
    Header,
    Hero,
    About,
    Services,
    Steps,
    Numbers,
    Projects,
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
