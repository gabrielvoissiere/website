<template>
  <div class="home">
    <Header/>
    <Hero />
    <Services />
    <Steps />
  </div>
</template>

<script>
import Header from '@/components/Header.vue'
import Hero from '@/components/Hero.vue'
import Services from '@/components/Services.vue'
import Steps from '@/components/Steps.vue'

export default {
  name: 'Home',
  components: {
    Header,
    Hero,
    Services,
    Steps
  }
}
</script>
