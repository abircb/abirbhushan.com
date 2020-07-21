<script>
  import { Sections } from '../constants.js'

  export default {
    name: 'SectionTitle',
    props: {
      sectionKey: {
        type: String,
        required: true,
      },
    },
    computed: {
      section() {
        return Sections.get(this.sectionKey)
      },
    },
    render() {
      const { icon: Icon, title } = this.section

      if (title == null) {
        return null
      }

      return (
        <h1 class="section-title">
          <Icon class="section-icon" />
          {title}
        </h1>
      )
    },
  }
</script>

<style scoped lang="scss">
  .section-title {
    font-size: 1.74em;
  }
</style>

<style lang="scss">
  .section-icon {
    vertical-align: middle;
    width: 1em;
    height: 1em;

    .stroke {
      fill: none;
      stroke: currentColor;
      stroke-width: 8;
      stroke-linecap: round;
      stroke-linejoin: round;
      stroke-miterlimit: 10;
    }

    .fill {
      fill: currentColor;
    }
  }
</style>
