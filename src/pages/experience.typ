#import "../template.typ": experience;

#experience(
  organization: "Ubisoft Montreal",
  role: "Senior Software Engineer",
  location: "Montreal, Canada",
  start: "September 2017",
  end: "Present",
  responsibilities: (
    // General mandate:
    [Maintained API gateway serving 10B+ daily requests across 200+ microservices; ensured reliability for millions of concurrent players across all Ubisoft titles and 50+ internal teams.],

    // Feature and performance improvements:
    [Implemented SaaS features for a self-served API Gateway: routing, traffic mirroring, rate limiting, and access control.],
    [Redesigned KillSwitches service API for granular traffic control and blast radius isolation during incidents.],
    [Optimized firewall integration: replaced per-host iptables agents with Lambda-driven Security Group policy enforcement.],
    [Automated deployments with version-controlled releases and safeguards, reducing release time from 30 to under 5 minutes.],
    [Built observability stack with custom Prometheus exporters and Grafana dashboards for deployment and traffic visibility.],

    // Major projects contributions:
    [Led zero-downtime AWS multi-account migration; reduced costs by 33% and platform latency by \~5 ms.],
    [Spearheaded CloudFormation to CDK migration; enabled code reuse and broadened cross-team infrastructure contribution.],

    // Leadership and mentorship contributions:
    [Mentored juniors, interns, and contractors; designed ticketing system for triage; instituted rituals to boost velocity.],
    // Day-to-day responsibilities:
    [Developed in C\#, TypeScript, and Lua; collaborated with cross-functional teams; participated in on-call; code reviews.],
    // [Diagnosed and hotfixed critical KillSwitch bug during active security breach, restoring service protection.],
    // [Served as technical liaison between engineering and management.],
  ),
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
  ),
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
  ),
)

#experience(
  organization: "LiveQoS Inc.",
  role: "Software Developer Intern",
  coop: true,
  location: "Kanata, Canada",
  start: "September 2014",
  end: "December 2014",
  responsibilities: (
    [Built a MacOS network kernel extension prototype in C with a companion menu bar app and installer for distribution.],
  ),
)
