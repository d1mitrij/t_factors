# Playbook 4 — Governance, Risk Management & Assurance (COSO-aligned)

**Version**: 2.0 (Integrated Framework)
**Last Updated**: 2026-01-03
**License**: Apache 2.0, CC BY 4.0

---

## Framework Alignment

| Framework | Scope | Coverage |
|-----------|-------|----------|
| **COSO ERM** | Governance & Culture; Strategy; Performance; Review; Reporting | ✓ Complete ERM integration |
| **TCFD / ISSB** | Governance and risk management | ✓ Climate/sustainability governance |
| **TNFD** | Governance | ✓ Nature-related governance |
| **ISO 31000** | Risk Management Principles | ✓ Enterprise risk management |

---

## Executive Summary

### Focus

**Who owns decisions, data, models, and controls**

### Core Question

> *Who decides, who reviews, who assures, and when?*

### Purpose

Embed Playbooks 1–3 into enterprise risk management and internal control. Playbook 4 governs both asset-level and portfolio-level processes but **does not allocate impact** (that's Playbook 5).

---

## COSO ERM Framework Integration

### Five Components

1. **Governance & Culture**: Board oversight, tone at top, accountability
2. **Strategy & Objective-Setting**: Risk appetite, scenario selection, target-setting
3. **Performance**: Risk identification, assessment, response (Playbooks 1-3 execution)
4. **Review & Revision**: Monitoring, KPIs, model validation
5. **Information, Communication & Reporting**: Disclosure, assurance, stakeholder engagement

---

## PART A: GOVERNANCE & CULTURE

---

## 1. Board Oversight

### Responsibilities

**Board of Directors**:
- Approves **risk appetite** for climate, nature, social risks
- Approves **scenario selection** (SSPs, NGFS pathways)
- Reviews **portfolio-level impacts** (from Playbook 5) annually
- Oversees **assurance** and **audit** of impact data

**Board Committee** (Sustainability / Risk Committee):
- Quarterly review of IVF, EF, VF methodologies
- Escalates material changes (e.g., new regulations, scenario updates)

---

## 2. Executive Accountability

### Three Lines of Defense

**1st Line (Business / Operations)**:
- **Asset Managers / Portfolio Managers**: Own exposure data (Playbook 2)
- **Operations Teams**: Provide activity data (emissions, water, incidents)

**2nd Line (Risk / Compliance)**:
- **Chief Risk Officer (CRO)**: Owns scenario framework (Playbook 3)
- **Sustainability / ESG Team**: Owns IVF methodology (Playbook 1)
- **Compliance**: Ensures regulatory alignment (ESRS, TCFD, TNFD)

**3rd Line (Internal Audit)**:
- **Internal Audit**: Independent review of data, models, controls
- **External Assurance**: Third-party verification (ISAE 3000, limited/reasonable assurance)

---

## PART B: STRATEGY & OBJECTIVE-SETTING

---

## 1. Risk Appetite Framework

### Climate Risk Appetite Statement (Example)

> "The organization shall limit climate transition risk exposure such that, under an orderly 1.5°C scenario (NGFS Net Zero 2050), the portfolio-level impact does not exceed **10% of Equity Value** by 2030."

### Components

**Quantitative Thresholds**:
- **Absolute**: Max $X billion portfolio impact under scenario Y
- **Relative**: Max X% of portfolio NAV/equity value
- **Concentration**: Max exposure to high-impact sectors (e.g., <15% fossil fuels)

**Qualitative Principles**:
- No investments in assets with **unmitigated biodiversity risks** in Key Biodiversity Areas (KBAs)
- No financing of **forced labour** or **child labour** in supply chains (zero tolerance)

---

## 2. Scenario Selection Governance

### Scenario Authority

**Ownership**: **Scenario Committee** (chaired by CRO or CSO)

**Membership**:
- Chief Risk Officer (CRO)
- Chief Strategy Officer (CSO)
- Head of Sustainability / ESG
- Chief Investment Officer (CIO)
- External Advisor (climate scientist, economist)

**Responsibilities**:
- Select mandatory scenarios (align to IPCC, NGFS)
- Define custom scenarios (sector-specific, proprietary views)
- Approve scenario assumptions (carbon prices, technology adoption rates, regulations)
- Review cycle: Every 3-5 years (or upon major IPCC/NGFS updates)

---

## PART C: PERFORMANCE (Risk Identification & Assessment)

---

## 1. Data Governance

### Data Quality Framework

**Hierarchy** (Descending Confidence):
1. **Tier 1 - Direct Measurement**: CEMS, flow meters, audited reports
2. **Tier 2 - Activity-Based**: Reported activity × credible intensity benchmarks
3. **Tier 3 - Proxy/Estimation**: Sector/country averages

**Data Quality Flags**: High / Medium / Low confidence (see Playbook 2)

---

### Data Ownership & Lineage

**Asset-Level Data**:
- **Owner**: Portfolio company ESG team / facility manager
- **Custodian**: Investor ESG data team
- **Lineage**: Track source (CDP, ESRS report, direct submission, third-party database)

**IVF Data**:
- **Owner**: Sustainability / Impact Methodology team
- **Source**: IPCC, UBA, WULCA, academic literature (see Playbook 1)
- **Version Control**: IVF_[Indicator]_v[Major].[Minor].[Patch]_[Date].h5

---

## 2. Model Governance

### Model Risk Management

**IVF Models** (Playbook 1):
- **Validation**: Peer review by external academic/industry experts
- **Backtesting**: Compare historical IVF values to realized damages (where feasible)
- **Sensitivity Analysis**: Test key assumptions (discount rate, VSL, AWARE dampening)

**EF Models** (Playbook 2):
- **Validation**: Cross-check intensity factors against multiple sources (IEA, Ecoinvent, EPA)
- **Outlier Detection**: Flag assets with >2 standard deviations from sector average

**VF Models** (Playbook 3):
- **Scenario Coherence**: Ensure VF adjustments align to SSP/NGFS narratives
- **Mitigation Validation**: Verify CCS, offsets, recycling claims (third-party audits)

---

### Model Change Management

**Trigger for Model Update**:
- **Methodology Change**: New IPCC SCC, AWARE 3.0 release, UBA update
- **Data Source Change**: Switch from Tier 3 (proxy) to Tier 1 (direct measurement)
- **Material Impact**: Change >10% in portfolio-level impact

**Approval Process**:
1. **Propose**: Methodology team drafts change proposal
2. **Review**: Model Risk Committee reviews
3. **Approve**: CRO/Board approves if material
4. **Implement**: Version control, change log, stakeholder communication

---

## PART D: REVIEW & REVISION

---

## 1. Key Performance Indicators (KPIs)

### Impact KPIs (From Playbooks 1-3)

**Portfolio-Level** (Aggregated via Playbook 5):
- **Total Portfolio Impact** (USD): Sum of all impacts (GHG, water, land, OHS, etc.)
- **Impact Intensity**: Portfolio impact per $M invested
- **Scenario Sensitivity**: Delta impact between SSP1-1.9 and SSP5-8.5

**Asset-Level**:
- **Top 10 Contributors**: Assets with >1% of total portfolio impact
- **Sectoral Breakdown**: Impact by NACE sector
- **Geographic Breakdown**: Impact by country/region

---

### Data Quality KPIs

- **% Tier 1 Data**: Target >50% of exposure data from direct measurement
- **% Assets with 3rd-Party Verification**: Target >70% (for listed equity, >90%)
- **Data Vintage**: Target <2 years old for 95% of data

---

## 2. Internal Audit & Review

### Annual Audit Scope

**Sample-Based Review**:
- **10% of assets**: Validate exposure data (Playbook 2) against source documents
- **5 IVF indicators**: Deep-dive methodology review (Playbook 1)
- **1 scenario**: Validate VF assumptions (Playbook 3)

**Findings & Remediation**:
- **Low-Risk**: Document, improve next cycle
- **Medium-Risk**: Correct within 90 days
- **High-Risk**: Immediate correction, Board escalation

---

## PART E: INFORMATION, COMMUNICATION & REPORTING

---

## 1. Internal Reporting

### Frequency

**Monthly**: Portfolio managers receive asset-level impact scorecards
**Quarterly**: Executive dashboard (top impacts, trends, scenario comparisons)
**Annually**: Board report (full portfolio impact, risk appetite compliance, assurance opinion)

---

## 2. External Disclosure

### Regulatory Reporting

**ESRS (EU)**:
- **E1-E5**: Environmental impacts (GHG, air, water, land, biodiversity)
- **S1-S4**: Social impacts (OHS, training, living wage, forced/child labour)
- **Double Materiality**: Impact + Financial materiality

**TCFD / ISSB**:
- **Metrics & Targets**: Portfolio GHG, climate-related impacts
- **Scenario Analysis**: SSP1-1.9, SSP5-8.5 (minimum 2 scenarios)

**TNFD**:
- **LEAP Assessment**: Locate, Evaluate, Assess, Prepare (for material nature impacts)

---

### Voluntary Reporting

**CDP (Carbon Disclosure Project)**:
- Climate Change questionnaire (Scope 1-3 financed emissions)
- Water Security questionnaire

**GRI (Global Reporting Initiative)**:
- GRI 300 (Environmental): Emissions, water, waste, biodiversity
- GRI 400 (Social): Employment, OHS, training

---

## 3. Assurance

### Limited Assurance (Minimum)

**Scope**:
- **Data**: Sample-based review of exposure data (Playbook 2)
- **Calculations**: Reperform impact calculations (IVF × EF × VF)
- **Disclosures**: Check consistency between internal data and published reports

**Standard**: ISAE 3000 (Revised) / AA1000AS

---

### Reasonable Assurance (Recommended for Material Impacts)

**Scope**:
- **Full population testing**: All material assets (>1% of portfolio impact)
- **Model validation**: Review IVF methodologies (Playbook 1)
- **Scenario governance**: Validate scenario selection process (Playbook 3)

**Assurance Opinion**: Unqualified / Qualified / Adverse / Disclaimer

---

## PART F: CONTROLS & INTEGRATION

---

## 1. Key Controls

### Prevent

- **Scenario Lock**: Scenarios approved by Board, cannot be changed mid-cycle without re-approval
- **Data Access Controls**: Role-based access to impact data systems
- **Model Version Control**: Only approved IVF versions can be used in production

### Detect

- **Automated Reconciliations**: IVF × EF × VF = Impact (checks for calculation errors)
- **Outlier Alerts**: Flag assets with >3x sector average impact intensity
- **Data Completeness Checks**: Alert if <80% of portfolio has Tier 1-2 data

### Correct

- **Error Correction Log**: Track all material corrections (>5% impact change)
- **Restatement Protocol**: If prior-year disclosure error >10%, restate and disclose

---

## 2. Integration with Existing ERM

### Risk Register Integration

**Add Impact Metrics to Existing Risks**:
- **Climate Transition Risk**: Add portfolio impact under SSP1-1.9 (Playbook 5 output)
- **Water Risk**: Add water consumption exposure in high-stress basins (Playbook 2)
- **Social Risk**: Add OHS incidents, living wage exposure (Playbooks 1-2)

### Risk Response Strategies

**Accept**: If impact within risk appetite
**Mitigate**: Engage with portfolio companies on reduction targets
**Transfer**: Hedge via insurance, offsetting (if high-quality)
**Avoid**: Divest from high-impact assets

---

## Document Navigation

**Previous**: [Playbook 3 — Vulnerability Factors & Scenarios](PLAYBOOK_3_VULNERABILITY_SCENARIOS.md)
**Next**: [Playbook 5 — Portfolio Attribution & Aggregation](PLAYBOOK_5_PORTFOLIO_ATTRIBUTION.md)

---

**Document Version**: 2.0
**Last Updated**: 2026-01-03

**Contact**: dimitrij.euler@greenings.org
