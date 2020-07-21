<script>
  import { Sections } from '../constants.js'
  import SectionTitle from './SectionTitle.vue'

  const hexToRgb = (hex) => {
    const bigint = parseInt(hex.substr(1), 16)
    const r = (bigint >> 16) & 255
    const g = (bigint >> 8) & 255
    const b = bigint & 255

    return `${r}, ${g}, ${b}`
  }

  export default {
    name: 'Section',
    components: {
      SectionTitle,
    },
    props: {
      current: {
        type: Boolean,
        required: true,
      },
      sectionKey: {
        type: String,
        required: true,
      },
    },
    render() {
      const section = Sections.get(this.sectionKey)
      const Content = section.content
      const backgroundColor = this.current
        ? `rgba(${hexToRgb(section.color)}, .5)`
        : ''

      return (
        <div
          class={`section ${this.current ? 'current' : ''}`}
          style={{ backgroundColor }}
        >
          <SectionTitle class="title" sectionKey={this.sectionKey} />
          <Content class="content" />
        </div>
      )
    },
  }
</script>

<style scoped lang="scss">
  .section {
    background: #aaa;
    display: flex;
    flex-direction: column;
    min-height: 60vh;
    opacity: 0.2;
    padding: 10vh 32px 10vh;
    position: relative;
    transition-duration: 0.5s;
    transition-property: background, opacity, transform;

    &.current {
      opacity: 1;
    }

    &:first-child,
    &:last-child {
      min-height: 80vh;

      @media print {
        min-height: 0;
      }
    }

    .title,
    .content {
      transition: transform 0.5s;
    }

    .title {
      transform: translateX(20px);

      @media print {
        transform: none;
      }
    }

    .content {
      transform: translateX(10px);

      @media print {
        transform: none;
      }
    }

    &.current .title,
    &.current .content {
      transform: translateX(0);
    }

    @media print {
      background: none !important;
      min-height: 0;
      opacity: 1;
      padding: 0;

      &:not(:last-child) {
        margin-bottom: 40px;
      }
    }
  }
</style>
