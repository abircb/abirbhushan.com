<template>
  <div>
    <Company
      name="Goldman Sachs"
      position="Spring Intern"
      :from="new Date(2020, 4)"
      :to="new Date(2020, 4)"
    >
      <li>
        2-week internship that was conducted virtually due to the novel
        coronavirus (COVID-19) pandemic.
      </li>
      <li>
        Shadowed under Global Investment Research, Global Markets, and Asset
        Management — with a focus on Engineering — and gained an in-depth
        understanding of the different processes, requirements, and workflows at
        the firm.
      </li>
    </Company>
    <Company
      name="NTT Data"
      position="Virtual Reality (VR) Developer"
      :from="new Date(2019, 9)"
      :to="new Date(2020, 3)"
      partTime
    >
      <li>
        Worked in a team of 3 to develop a software solution for the company as
        part of the
        <a
          href="https://www.ucl.ac.uk/computer-science/collaborate/ucl-industry-exchange-network-ucl-ixn"
          target="_blank"
          >UCL IXN</a
        >
        initiative.
      </li>
      <li>
        Created
        <a href="https://abirbhushan.com/autonomo" target="_blank">Autónomo</a>
        — a Virtual Reality (VR) simulation of a self-driving car — to
        understand and produce a reference Proof of Concept for the car-buying
        experience of the future.
      </li>
      <li>
        Designed and led the development life cycle, while regularly liasing
        with our project partners to incrementally improve Autónomo and enhance
        its VR experience after each subsequent iteration.
      </li>
      <li>
        Completed a successful handover to the Innovation and New Ventures team
        at the company's London offices, where Autónomo is being upgraded and
        optimised.
      </li>
    </Company>
    <Company
      name="Facebook"
      position="Hack-a-project Intern"
      :from="new Date(2020, 1)"
      :to="new Date(2020, 2)"
    >
      <li>
        Explored Facebook London and gained insight into how its product teams
        work together to deliver highly-scalable and robust services to its
        users.
      </li>
      <li>
        Prototyped <code>Lexicon</code> — an online platform for meeting new
        people from different ethnic backgrounds and learning about their
        cultures and lifestyle — using React.js and Flask, in collaboration with
        engineers at Facebook London.
      </li>
    </Company>
    <Company
      name="UCL"
      position="Programming Mentor"
      :from="new Date(2019, 8)"
      :to="new Date(2020, 2)"
      partTime
    >
      <li>
        Organised and led weekly tutorials for 8 first-year undergraduate
        Computer Science students on the Bachelor's and the Integrated Master's
        programme.
      </li>
      <li>
        Helped them build a foundation in the subject by assisting them with
        their Programming (C, Haskell, Java, and Python) and Logic (Theory of
        Computation and Compilers) modules.
      </li>
    </Company>

    <Company
      name="Infibeam Avenues"
      position="Technology Summer Analyst"
      :from="new Date(2019, 6)"
      :to="new Date(2019, 8)"
    >
      <li>2-month internship at their offices in New Delhi.</li>
      <li>
        Built an internal tool using Express.js that completely automated the
        process of converting incoming catalogue data (in YAML) to an SQL table
        and successfully deployed the application on Heroku.
      </li>
      <li>
        Used Python and some of its (core) Machine Learning libraries to create
        price-prediction models for three distinct categories of the company's
        e-commerce catalogue.
      </li>
    </Company>
  </div>
</template>

<script>
  import Company from '../Company.vue'

  export default {
    name: 'Work',
    components: {
      Company,
    },
  }
</script>

<style scoped lang="scss">
  a {
    color: inherit;

    &:hover {
      text-decoration: none;
    }
  }
</style>
