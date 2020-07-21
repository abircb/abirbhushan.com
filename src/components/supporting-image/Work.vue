<template>
  <WorkImage :class="`image ${visible && 'visible'}`" />
</template>

<script>
  import WorkImage from '../../assets/layers/Work.svg'

  export default {
    name: 'Work',
    components: {
      WorkImage,
    },
    props: {
      visible: Boolean,
    },
  }
</script>

<style scoped lang="scss">
  .image {
    transform: translate3d(-100%, 0, 500px);
    transition: transform 0.5s;

    &.visible {
      transform: translate3d(0, 0, 0);
    }
  }
</style>
