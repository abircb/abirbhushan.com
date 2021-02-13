<template>
  <div class="skills">
    <div class="col">
      <h2>Languages</h2>
      <ul>
        <li>Programming languages</li>
        <ul>
          <li>C/C++</li>
          <li>Java</li>
          <li>Python</li>
          <!--- <ul>
          <li>Flask</li>
          <li>Data Mining</li>
          <ul>
            <li>BeautifulSoup</li>
          </ul>
          <li>Processing and Modelling</li>
          <ul>
            <li>NumPy</li>
            <li>Pandas</li>
            <li>Scikit-Learn</li>
          </ul>
          <li>Visualisation</li>
          <ul>
            <li>Matplotlib</li>
            <li>Seaborn</li>
          </ul>
        </ul>-->
          <li>JavaScript</li>
          <ul>
            <li>ES6+/ESNext</li>
            <li>TypeScript</li>
            <li>Flow</li>
            <li>Node.js</li>
          </ul>
          <li>Haskell</li>
        </ul>
        <li>Core web development</li>
        <ul>
          <li>HTML5</li>
          <li>CSS</li>
          <ul>
            <li>SASS</li>
            <li>LESS</li>
          </ul>
        </ul>
        <li>Data query languages</li>
        <ul>
          <li>SQL</li>
          <li>GraphQL</li>
        </ul>
      </ul>
    </div>

    <!--- 
      <div class="col">
        <h2>Frameworks</h2>
        <ul>
          <li>React</li>
          <li>Redux</li>
          <li>Vue.js</li>
          <li>Bootstrap</li>
          <li>Express.js</li>
          <li>Django</li>
        </ul>
      </div>
    --->

    <div class="col">
      <h2>Tools and Technologies</h2>
      <ul>
        <li>Frameworks</li>
        <ul>
          <li>React</li>
          <li>Vue (the framework for this website!)</li>
          <li>Flask</li>
          <li>Express</li>
        </ul>
        <li>Version Control</li>
        <ul>
          <li>Git</li>
          <li>Mercurial</li>
        </ul>
        <li>DevOps</li>
        <ul>
          <li>Docker</li>
          <li>Maven</li>
          <li>Jenkins</li>
          <li>Travis CI</li>
          <li>Webpack</li>
          <li>Gulp</li>
        </ul>
      </ul>
    </div>
  </div>
</template>

<script>
  export default {
    name: 'Skills',
  }
</script>

<style scoped lang="scss">
  .skills {
    display: flex;
    max-width: 600px;

    .col {
      flex: 1 0 0;
    }

    ul:last-child {
      margin-bottom: 0;
    }

    @media screen and (max-width: 850px) {
      display: block;

      .col:not(:first-child) {
        margin-top: 20px;
      }
    }
  }
</style>
