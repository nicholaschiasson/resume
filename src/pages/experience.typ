#import "../template.typ": experience;

#experience(
  organization: "Ubisoft Montreal",
  role: "Software Engineer",
  location: "Montreal, Canada",
  start: "September 2017",
  end: "Present",
  responsibilities: (
    [Maintained API gateway serving 10B+ requests daily, supporting 50+ internal teams, 200+ microservices, and millions of concurrently connected players across the vast library of Ubisoft titles.],
    [Led multi-account AWS migration (5-10 accounts), architecting VPC peering and routing for isolation and scalability.],
    [Designed KillSwitch v3 for granular endpoint-level traffic control during platform-wide incidents.],
    [Built observability with Prometheus, OpenTelemetry, and status endpoints across all gateway flavors.],
    [Modernized release pipelines with independent GitLab CI/CD repos and blue/green deployments per flavor.],
    [Improved security via WAF integration, access controls, and standardized X-Forwarded-AppId tracking.],
    [Drove infrastructure modernization: AL2023 migration, Lambda upgrades, and nginx config optimization.],
    [Optimized orchestration to cut redundant API calls to \<1%, saving hundreds of dollars daily.],
  )
)

#experience(
  organization: "Espial Group Inc.",
  role: "Embedded Device Software Developer",
  coop: true,
  location: "Ottawa, Canada",
  start: "January 2016",
  end: "August 2016",
  responsibilities: (
    [Developed TV set-top box client features with REST API integration and optimized build pipelines to accelerate delivery.],
  )
)

#experience(
  organization: "Enhansoft Inc.",
  role: "Junior Programmer",
  coop: true,
  location: "Nepean, Canada",
  start: "May 2015",
  end: "August 2015",
  responsibilities: (
    [Modernized data collection tools from VBScript to C\#, leveraging WMI and SQL Server Reporting Services.],
  )
)

#experience(
  organization: "LiveQoS Inc.",
  role: "Software Developer Intern",
  coop: true,
  location: "Kanata, Canada",
  start: "September 2014",
  end: "December 2014",
  responsibilities: (
    [Built a MacOS network kernel extension prototype with companion menu bar app and installer for distribution.],
  )
)
