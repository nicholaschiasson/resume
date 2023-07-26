#import "/template.typ": project;

#grid(columns: (1fr, 1fr), gutter: 1em, row-gutter: 1.5em,
  // TODO: Fill out once inglix project is complete
  // project(
  //   name: "inglix",
  //   start: "2022",
  //   end: "2023",
  //   skills: (
  //     "Axum",
  //     "GitHub Actions",
  //     "Leptos",
  //     "PostgreSQL",
  //     "Rust",
  //   ),
  // ),

  project(
    name: "ngx_upstream_jdomain",
    description: "A now abandoned Nginx module that I forked, rewrote, and now passively maintain as an open source project, enabling Nginx upstreams to be configured to perform asynchronous DNS lookups on an interval to respect TTL. Used in production in the API gateway solution built by my team at Ubisoft.",
    start: "2019",
    end: "Present",
    skills: (
      "C",
      "DNS",
      "GitHub Actions",
      "Nginx",
      "Perl",
    ),
  ),

  project(
    name: "fcidr",
    description: "A rust library published to crates.io exposing a data structure to represent a set of CIDR ranges as well as an interface to compute set operations over CIDRs. Initially intended to address an issue with an experimental firewall system designed to leverage AWS EC2 Security Groups.",
    start: "July 2023",
    skills: (
      "GitHub Actions",
      "Rust",
    ),
  ),

  project(
    name: "mariversaire.com",
    description: "A website updated each year with a new game used as the means of delivering or presenting my partner with her birthday gift for that year. Doubles as the primary outlet for me to challenge my creativity and front-end development skills.",
    start: "2022",
    end: "Present",
    skills: (
      "CSS",
      "GitHub Actions",
      "HTML",
      "JavaScript",
    ),
  ),

  project(
    name: "omnivyou.com",
    description: "A simple media viewer runnable in a web browser for viewing local video, audio, and image files. Built as a responsive, single page application leveraging Rust code compiled to WebAssembly running on the front end, served statically from GitHub Pages.",
    start: "September 2021",
    skills: (
      "GitHub Actions",
      "HTML",
      "Rust",
      "Tailwind CSS",
      "Yew",
    ),
  ),

  project(
    name: "oytr",
    description: "A command-line utility to configure simple scheduled reminders using cron expressions and push desktop notifications when they are triggered. A DIY answer to my version of the simplest possible way I could remind myself through the day to raise and lower my new standing desk.",
    start: "May 2023",
    skills: (
      "GitHub Actions",
      "Rust",
    ),
  ),

  project(
    name: "mir",
    description: "A command-line utility to mirror a user's entire accessible GitLab group hierarchy as directories on the local file system and optionally clone all repositories. Proven useful helping to bootstrap the development environment for new coworkers or those receiving new workstations.",
    start: "October 2018",
    skills: (
      "GitLab CI",
      "Rust",
    ),
  ),

  project(
    name: "nickflix",
    description: "Video platform boasting secure access, theoretically free unlimited cloud storage, and hosted entirely at zero cost in the cloud. Complete with a suite of automated scripts to process and re-encode large volumes of video before uploading them to the storage backend.",
    start: "2017",
    end: "2018",
    skills: (
      "Express.js",
      "FFmpeg",
      "GitLab CI",
      "Google Drive API",
      "Heroku",
      "JavaScript",
      "Nginx",
      "OAuth",
      "Plex",
      "Redis",
      "REST",
    ),
  ),
)
