<template>
  <OpenSourceImage :class="`image ${visible && 'visible'}`" />
</template>

<script>
  import OpenSourceImage from '../../assets/layers/OpenSource.svg'

  export default {
    name: 'FTIC',
    components: {
      OpenSourceImage,
    },
    props: {
      visible: Boolean,
    },
  }
</script>

<style scoped lang="scss">
  .image {
    transform: translate3d(-800px, 578px, -135px);
    transition: transform 0.5s;

    &.visible {
      transform: translate3d(-49px, 578px, -135px);
    }
  }
</style>
