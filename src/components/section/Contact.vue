<template>
  <div class="contact">
    <p>
      If you think my skills could be of use or simply have something
      interesting to discuss,
    </p>
    <p>
      drop me a line at
      <a href="mailto:bhushan.abir@gmail.com">bhushan.abir@gmail.com</a>
    </p>
  </div>
</template>

<script>
  export default {
    name: 'Contact',
  }
</script>

<style scoped lang="scss">
  .contact {
    a {
      color: inherit;

      &:hover {
        text-decoration: none;
      }
    }
    .contact-details {
      margin-left: 2%;
    }
  }
</style>
