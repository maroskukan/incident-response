# Incident Response

- [Incident Response](#incident-response)
  - [Detection and Analysis](#detection-and-analysis)
    - [Incident](#incident)
    - [Investigation Points](#investigation-points)
      - [External Attach Surface](#external-attach-surface)
      - [Internal Infrastructure Layout](#internal-infrastructure-layout)
  - [Incident Response Phases](#incident-response-phases)
    - [Preparation](#preparation)
    - [Detection and Analysis](#detection-and-analysis-1)

## Detection and Analysis

### Incident

Incident refers to any event or series of events that potentially compromise the confidentiality, integrity, or availability of an organization's information, systems, or networks. Incidents are usually security breaches, violations, or unauthorized access that could lead to data loss, service disruptions, or damage to an organization's reputation.

A Computer Incident Response Team (CIRT) is a group of experts responsible for detecting, analyzing, and responding to security incidents. They coordinate efforts to contain, mitigate, and recover from threats to safeguard an organization's information and systems. Typical roles include incident analysts, threat hunters, forensic experts, network security specialists, system administrators, and communications personnel. CIRT's functions include preparation, detection, containment, investigation, recovery, reporting, and post-incident review.

There are several types of incident response teams:
- 3rd party
- Internal Separate Not Attached to SoC (Continous Monitoring)
- Internal Embedded (Embedded w/SOC as Escalaatory Team)

### Investigation Points

- Take Everything at Face Value Only
- Read Between the Lines
- Listen to More Than One Person's Account of What Happened

#### External Attach Surface

Passive information gathering for external presence and possible malicious activity include:
- [dnsdumpster](https://dnsdumpster.com/)
- [shodan](https://www.shodan.io/)
- [virustotal](https://www.virustotal.com/gui/home/url)
- [haveibeenpwned.com](https://haveibeenpwned.com/)

#### Internal Infrastructure Layout

- Documentation
- Asset List
- Network Diagram
- Management and Monitoring Tools


## Incident Response Phases

1. Preparation
2. Detection and Analysis
3. Containment, Eradication and Recovery
4. Post-Incident Activity

### Preparation

There are several resouces that are helpful during the preparation phase:
- [NIST 800-61r2 Computer Security Incident Handling Guide](https://csrc.nist.gov/publications/detail/sp/800-61/rev-2/final)
- [NIST 800-86 Guide to Integrating Forensic Techniques into Incident Response](https://csrc.nist.gov/publications/detail/sp/800-86/final)

Besides the guides above, it is vital to be familiar with following tools during incident response:
- Local virtualization capabilities to load a variety of OS
- Local file sharing capabilities to put and pull artifacts and agents from an affected CI
- Optionally deploy a separate Internet mobile connection for Incident Response Network or Node
- Initial portable Triage tools can include 
  - [sysinternalsSuite](https://learn.microsoft.com/en-us/sysinternals/)
  - [WinPmem](https://github.com/Velocidex/WinPmem)
  - [RawCap](https://www.netresec.com/?page=RawCap)

Finally, incident response playbooks are very useful to automate the triage process.

### Detection and Analysis

