<template>
  <div ref="content" class="content">
    <Section
      v-for="key in sectionKeys"
      ref="section"
      :key="key"
      :current="key === sectionKey"
      :sectionKey="key"
    />
  </div>
</template>

<script>
  import { SectionKeys } from '../constants.js'
  import Section from './Section.vue'

  export default {
    name: 'Content',
    components: {
      Section,
    },
    props: {
      sectionKey: {
        type: String,
        required: true,
      },
    },
    data: () => ({
      sectionKeys: SectionKeys,
    }),
    created() {
      window.addEventListener('scroll', this.checkCurrentSection)
    },
    mounted() {
      this.checkCurrentSection()
    },
    unmounted() {
      window.removeEventListener('scroll', this.checkCurrentSection)
    },
    methods: {
      checkCurrentSection() {
        const windowMiddle = window.innerHeight / 2
        const sectionEl = this.$refs.section.find((ref) => {
          const rect = ref.$el.getBoundingClientRect()
          return rect.bottom > windowMiddle
        })
        if (sectionEl && sectionEl.sectionKey !== this.sectionKey) {
          this.$emit('change-section', sectionEl.sectionKey)
        }
      },
    },
  }
</script>

<style scoped lang="scss">
  .content {
  }
</style>
