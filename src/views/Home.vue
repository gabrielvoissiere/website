<template>
  <div class="home">
    <Header/>
    <Hero />
    <Services />
    <Steps />
    <Numbers />
    <Contacts />
    <Footer />
  </div>
</template>

<script>
import Header from '@/components/Header.vue'
import Hero from '@/components/Hero.vue'
import Services from '@/components/Services.vue'
import Steps from '@/components/Steps.vue'
import Numbers from '@/components/Numbers.vue'
import Contacts from '@/components/Contacts.vue'
import Footer from '@/components/Footer.vue'

export default {
  name: 'Home',
  components: {
    Header,
    Hero,
    Services,
    Steps,
    Numbers,
    Contacts,
    Footer
  }
}
</script>
