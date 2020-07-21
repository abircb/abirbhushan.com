<template>
  <ContactImage :class="`image ${visible && 'visible'}`" />
</template>

<script>
  import ContactImage from '../../assets/layers/Contact.svg'

  export default {
    name: 'Contact',
    components: {
      ContactImage,
    },
    props: {
      visible: Boolean,
    },
  }
</script>

<style scoped lang="scss">
  .image {
    transform: translate3d(60%, 0, 800px);
    transition: transform 0.5s;

    &.visible {
      transform: translate3d(0, 0, 0);
    }
  }
</style>
