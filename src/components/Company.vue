<template>
  <div class="company">
    <div class="left">
      <div class="name">
        {{ name }}
      </div>
      <div class="position">
        {{ position }}
      </div>
      <div class="dates">
        {{ formatDate(from) }} &ndash; {{ formatDate(to) }}<br />
      </div>
      <div v-if="partTime" class="part-time">
        Part-time
      </div>
    </div>
    <div class="right">
      <slot />
    </div>
  </div>
</template>

<script>
  import { Months } from '../constants.js'

  export default {
    name: 'Company',
    props: {
      name: {
        type: String,
        required: true,
      },
      position: {
        type: String,
        required: true,
      },
      partTime: {
        type: Boolean,
      },
      from: {
        type: Date,
        required: true,
      },
      to: {
        type: Date,
        default: null,
      },
    },
    methods: {
      formatDate(d) {
        if (d == null) {
          return 'Present'
        }

        // TODO: Non-breaking space
        return `${Months[d.getMonth()]} ${d.getFullYear()}`
      },
    },
  }
</script>

<style scoped lang="scss">
  .company {
    display: flex;
    page-break-inside: avoid;

    &:not(:last-child) {
      margin-bottom: 48px;
    }

    .left {
      flex: 1 0 100px;
    }

    .right {
      color: #000000;
      flex: 2 0 250px;
      font-size: 0.875em;
      line-height: 1.5;
      margin-left: 20px;

      li:not(:last-child) {
        margin-bottom: 8px;
      }

      @media print {
        color: inherit;
      }
    }

    .name {
      color: #000000;
      font-size: 1.25em;
      margin-bottom: 8px;

      @media print {
        color: inherit;
      }
    }

    .position {
      font-size: 0.875em;
      line-height: 1.4;
      margin-bottom: 8px;
    }

    .dates {
      font-size: 0.875em;
      line-height: 1.4;
      margin-bottom: 8px;
      text-transform: uppercase;
    }

    .part-time {
      background: #000000;
      border-radius: 4px;
      color: white;
      display: inline-block;
      font-size: 0.75em;
      padding: 3px 6px;

      @media print {
        background: none;
        color: inherit;
        padding: 0;
      }
    }

    @media screen and (max-width: 850px) {
      display: block;

      .right {
        margin-left: 0;
        margin-top: 16px;
      }
    }
  }
</style>
