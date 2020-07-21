<template>
  <div class="container">
    <WelcomeImage :class="`image ${visible && 'visible'}`" />
  </div>
</template>

<script>
  import WelcomeImage from '../../assets/layers/Welcome.svg'

  export default {
    name: 'Welcome',
    components: {
      WelcomeImage,
    },
    props: {
      visible: Boolean,
    },
  }
</script>

<style scoped lang="scss">
  .container {
    .image {
      opacity: 0;
      margin-top: 61%;
      margin-left: 6%;

      &.visible {
        opacity: 1;
      }
    }
  }
</style>
