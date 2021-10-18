<template>
  <div class="mentions">
    <Header />
    <MentionLegals />
    <Footer />
  </div>
</template>

<script>
import Header from '@/components/Header.vue'
import MentionLegals from '@/components/MentionLegals.vue'
import Footer from '@/components/Footer.vue'


export default {
  name: "Mentions",
  components: {
    Header,
    MentionLegals,
    Footer
  }
}
</script>
