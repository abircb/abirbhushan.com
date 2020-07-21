<template>
  <SkillsImage :class="`image ${visible && 'visible'}`" />
</template>

<script>
  import SkillsImage from '../../assets/layers/Skills.svg'

  export default {
    name: 'Skills',
    components: {
      SkillsImage,
    },
    props: {
      visible: Boolean,
    },
  }
</script>

<style scoped lang="scss">
  .image {
    transform: rotateX(-120deg);
    transition: transform 0.5s, opacity 0.2s;
    transform-origin: top center;
    opacity: 0;

    &.visible {
      transform: rotateX(0);
      opacity: 1;
    }
  }
</style>
