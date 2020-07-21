<template>
  <div class="welcome">
    <h1>Abir Bhushan</h1>
    <h3>Computer Science Undergraduate at UCL</h3>

    <div class="media-panel">
      <div class="col">
        <a href="https://linkedin.com/in/abirbhushan" target="_blank"
          ><FontAwesomeIcon :icon="['fab', 'linkedin']"
        /></a>
      </div>

      <div class="col">
        <a href="https://github.com/abircb" target="_blank"
          ><FontAwesomeIcon :icon="['fab', 'github']"
        /></a>
      </div>

      <div class="col">
        <a href="https://abirbhushan.com/blog" target="_blank"
          ><FontAwesomeIcon :icon="['fas', 'blog']"
        /></a>
      </div>

      <div class="col">
        <a href="https://www.ucl.ac.uk/" target="_blank"
          ><FontAwesomeIcon :icon="['fas', 'university']"
        /></a>
      </div>
    </div>
  </div>
</template>

<script>
  export default { name: 'Welcome' }
</script>

<style scoped lang="scss">
  .welcome {
    align-items: center;
    display: flex;
    flex-direction: column;
    flex-grow: 1;
    justify-content: center;
    text-align: center;

    h1 {
      font-size: 29px;
    }

    a {
      color: inherit;
      text-decoration: none;
      &:hover {
        text-decoration: none;
      }
    }

    .media-panel {
      display: flex;
      max-width: 600px;
      padding-top: 2%;
      align-items: center;
      justify-content: center;

      .col {
        width: 25%;
        padding: 25% 75% 75% 75%;
      }
    }
  }
</style>
