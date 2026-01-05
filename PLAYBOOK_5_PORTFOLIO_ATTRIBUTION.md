# Playbook 5 — Portfolio Attribution & Aggregation

**Version**: 2.0 (Integrated Framework)
**Last Updated**: 2026-01-03
**License**: CC BY 4.0

---

## Executive Summary

### Focus

**Allocation of asset-level impacts to a reporting entity**

### Core Distinction (Critical)

### Asset-Level Attribution
- Concerns **ownership and control at the asset itself**
- Determines **how much impact belongs to the asset owner or operator**
- Governed implicitly by law, contracts, and control
- Result of Playbooks 1–3:

> **Asset Impact = IVF × EF × VF**

This impact is **100% located at the asset**, regardless of who finances it.

---

### Portfolio-Level Attribution (This Playbook)
- Concerns **how much of asset-level impact is attributed to a company, investor, or portfolio**
- Depends on **instrument type, control, and risk-bearing**, not on where impact occurs
- This is the exclusive domain of Playbook 5

### Core Question

> *How much of the asset-level impact can the reporting entity legitimately claim or must account for?*

---

## PART A: PORTFOLIO UNIVERSE

---

## 1. Instrument Types

### Corporate Instruments

**Listed Equity**:
- Public companies traded on exchanges
- Attribution: Ownership share (% of outstanding shares)

**Unlisted Equity** (Private Equity):
- Private companies, startups, venture capital
- Attribution: Ownership share OR control-based (if majority/controlling stake)

**Corporate Bonds**:
- Debt instruments issued by corporations
- Attribution: Pro rata debt share OR risk-based (if subordinated/first-loss)

---

### Project Finance

**Project Equity**:
- Direct ownership stake in project SPV (Special Purpose Vehicle)
- Attribution: Ownership share

**Project Debt** (Non-Recourse Loans):
- Lender to project SPV
- Attribution: Creditor control-based (if covenants allow step-in rights) OR pro rata debt share

**Project Bonds**:
- Similar to corporate bonds, but project-specific
- Attribution: Pro rata debt share

---

### Fund Instruments

**Equity Funds** (Mutual Funds, ETFs, Private Equity Funds):
- Attribution: **Look-through** to underlying holdings × investor's fund share
- Example: Investor owns 5% of Fund X; Fund X owns 10% of Company Y
  - Attribution to investor: 5% × 10% = 0.5% of Company Y's impact

**Debt Funds** (Bond Funds, Loan Funds):
- Attribution: Look-through to underlying debt × investor's fund share

**Real Estate Funds** (REITs):
- Attribution: Look-through to properties × ownership share

---

### Derivatives & Contingent Instruments

**Options (Call/Put)**:
- Attribution: **None** (unless exercised and converted to equity/debt)
- Rationale: No current ownership or control

**Futures / Forwards**:
- Attribution: None (unless settled with physical delivery)

**Guarantees / Insurance**:
- Attribution: **Risk-based pro rata** (exposure as % of total guaranteed/insured amount)

**Credit Default Swaps (CDS)**:
- Attribution: Risk exposure (notional amount × credit risk sensitivity)

---

## 2. Portfolio Qualification by Region & Sector

### Company-Level Allocation

**Multi-National Corporations**:
- Allocate revenues/emissions/employees across regions and sectors
- **Data Source**: Corporate sustainability reports (ESRS E1, CDP)
- **Method**: Pro rata by revenue, employees, or direct measurement (if available)

**Example**:
- Company X: 60% revenue from Europe (NACE C24 - Basic Metals), 40% from Asia (NACE C28 - Machinery)
- Investor owns 5% equity
- Attribution:
  - Europe Metal impact: Asset Impact[Europe, C24] × 60% × 5%
  - Asia Machinery impact: Asset Impact[Asia, C28] × 40% × 5%

---

### Project-Level

**Single Location, Single Sector**:
- Direct assignment (e.g., Solar farm in Spain → Europe, NACE D35)

---

## PART B: ATTRIBUTION HIERARCHY

---

## 1. Control-Based Attribution (Highest Priority)

### Majority Ownership or De Facto Control

**Trigger**: >50% equity OR control via voting rights, board seats, contractual rights

**Attribution**: **100% of asset impact**

**Rationale**: Entity controls asset decisions → Responsible for 100% of impact

**Example**:
- Private equity firm owns 75% of Company A
- Company A emits 1,000,000 tonnes CO₂/year (asset-level impact)
- **Attribution to PE firm**: 100% = 1,000,000 tonnes

---

## 2. Creditor / Conditional Control

### Project Finance with Covenants

**Trigger**: Loan covenants include step-in rights, decision-making influence on environmental/social performance

**Attribution**: **Control-adjusted share**

**Example**:
- Bank provides 60% of project debt for coal plant
- Loan covenant: Bank can force early retirement if carbon price exceeds $100/tonne
- **Attribution**: 60% (debt share) × 80% (control factor) = **48% of asset impact**

**Control Factor Estimation**:
- **No covenants**: 0% (pure pro rata)
- **Light covenants** (reporting only): 20%
- **Moderate covenants** (consent for major decisions): 50%
- **Strong covenants** (step-in rights, forced actions): 80%

---

## 3. Pro Rata Financial Attribution (Default)

### Equity Share

**Formula**:
```
Attribution_Equity = (Shares_Owned / Total_Shares) × Asset_Impact
```

**Example**:
- Investor owns 3% of Company B (listed equity, no control)
- Company B asset impact = $500M/year
- **Attribution**: 3% × $500M = **$15M/year**

---

### Debt Share (Enterprise Value Including Cash)

**Formula**:
```
Attribution_Debt = (Debt_Held / (Market_Cap + Total_Debt)) × Asset_Impact

Where:
- EVIC = Enterprise Value Including Cash = Market Cap + Total Debt - Cash
- Simplification: Use (Market Cap + Debt) if cash data unavailable
```

**Example**:
- Investor holds $50M corporate bonds of Company C
- Company C: Market cap $500M, Total debt $200M
- EVIC = $500M + $200M = $700M
- Asset impact = $350M/year
- **Attribution**: ($50M / $700M) × $350M = **$25M/year**

---

## 4. Risk-Based Pro Rata

### First-Loss / Subordinated Debt

**Higher Risk → Higher Attribution** (controversial, but reflects economic reality)

**Example**:
- Investor holds $10M subordinated debt (first-loss tranche)
- Total debt: $100M
- Asset impact: $200M/year
- **Standard pro rata**: ($10M / $100M) × $200M = $20M
- **Risk-adjusted** (2× multiplier for subordinated): 2 × $20M = **$40M** (reflects higher exposure to asset risk)

---

### Insurance / Guarantees

**Attribution based on insured/guaranteed amount**:

**Example**:
- Insurer guarantees $50M of $500M project debt (political risk insurance)
- Asset impact: $100M/year
- **Attribution**: ($50M / $500M) × $100M = **$10M/year**

---

## 5. Hybrid Approaches

### Control Overrides Pro Rata

**Principle**: If control-based attribution applies (>50% ownership), use 100%, ignore financial share.

**Exception**: Joint ventures (50-50 ownership) → Allocate 50-50 unless one partner has operational control.

---

### Residual Allocation

**After control-based attribution, remaining impact allocated pro rata among minority shareholders and creditors**:

**Example**:
- Company D: Majority owner (60%) + Minority shareholders (30%) + Bondholders (10% EVIC share)
- Asset impact: $600M/year
- **Majority owner**: 100% attribution = $600M (control-based)
- **Minority shareholders**: 0% (residual absorbed by control holder)
- **Bondholders**: 0% (unless using alternative risk-based approach)

**Alternative (Shared Attribution)**:
- Majority owner: 60% × $600M = $360M
- Minority: 30% × $600M = $180M
- Bondholders: 10% × $600M = $60M
- **Total**: $600M (sum equals asset impact)

**Recommendation**: Use control-based (100% to majority) for decision-useful reporting. Use shared for risk distribution analysis.

---

## PART C: PORTFOLIO AGGREGATION

---

## 1. Aggregation Formula

For each region–sector–impact pathway:

```
Portfolio_Impact = Σ (Asset_Impact × Attribution_Share)

Aggregated across:
- All assets in portfolio
- By region (188 countries)
- By sector (88 NACE)
- By impact (13 indicators from Playbook 1)
- By scenario (3 SSPs from Playbook 3)
```

---

## 2. Aggregation Dimensions

### By Region

**Example Output**:
| Country | GHG Impact (M USD/year) | Water Impact (M USD/year) | Total Impact (M USD/year) |
|---------|------------------------|--------------------------|--------------------------|
| USA | $250M | $50M | $300M |
| Germany | $100M | $20M | $120M |
| India | $180M | $80M | $260M |
| ... | ... | ... | ... |
| **Total** | **$1,200M** | **$300M** | **$1,500M** |

---

### By Sector

**Example Output**:
| Sector | GHG Impact | Land Use Impact | OHS Impact | Total Impact |
|--------|-----------|----------------|-----------|-------------|
| C24 (Basic Metals) | $300M | $10M | $20M | $330M |
| D35 (Electricity) | $500M | $5M | $15M | $520M |
| A01 (Agriculture) | $80M | $250M | $30M | $360M |
| ... | ... | ... | ... | ... |
| **Total** | **$1,200M** | **$300M** | **$100M** | **$1,600M** |

---

### By Asset Class

**Example Output**:
| Asset Class | Total Impact (M USD/year) | % of Portfolio |
|------------|--------------------------|---------------|
| Listed Equity | $800M | 50% |
| Unlisted Equity (PE) | $400M | 25% |
| Corporate Bonds | $250M | 16% |
| Project Finance | $150M | 9% |
| **Total** | **$1,600M** | **100%** |

---

### By Scenario

**Example Output** (Total Portfolio Impact):
| Scenario | 2030 Impact | 2050 Impact | Delta vs. Baseline |
|----------|------------|------------|-------------------|
| **SSP1-1.9 (1.5°C)** | $1,400M | $900M | -$700M (-44%) |
| **SSP2-4.5 (2.5°C)** | $1,600M | $1,300M | -$300M (-19%) |
| **SSP5-8.5 (4-5°C)** | $1,800M | $2,500M | +$900M (+50%) |

**Interpretation**: Portfolio impact increases under SSP5-8.5 (high emissions, physical risk), decreases under SSP1-1.9 (transition risk mitigated via early action).

---

## 3. Double-Counting Prevention

### Prohibition

**Never attribute same impact to multiple entities**:

**Example (WRONG)**:
- Company E: 100% owned by Fund F
- Investor X owns 20% of Fund F
- Asset impact: $100M
- **WRONG**: Attribute $100M to Company E AND $20M to Investor X (double-counts $20M)

**Correct**:
- Attribute $100M to Company E (consolidated at company level)
- Investor X's attribution: $100M × 20% = $20M (via look-through to Company E, part of Fund F)

---

### Look-Through Rule

**For funds, always look through to underlying assets**:

**Fund F Holds**:
- 10% of Company A ($1,000M impact)
- 5% of Company B ($500M impact)

**Fund F Attribution**:
- From A: 10% × $1,000M = $100M
- From B: 5% × $500M = $25M
- **Fund F total**: $125M

**Investor X (20% of Fund F)**:
- Attribution: 20% × $125M = **$25M**

---

## PART D: GOVERNANCE & ASSURANCE

---

## 1. Attribution Method Disclosure

**Principle**: Transparency on method chosen

**Required Disclosure**:
- **Control-based**: For assets with >50% ownership
- **Pro rata (equity)**: For listed equity minority stakes
- **Pro rata (EVIC)**: For corporate bonds
- **Look-through**: For fund instruments

**Example Disclosure** (in TCFD/TNFD report):

> "Portfolio attribution uses control-based allocation for majority-owned assets (100% attribution) and pro rata equity share for minority holdings. Corporate bonds are attributed using EVIC-based allocation. Fund instruments use look-through to underlying assets. No attribution is applied to derivatives unless exercised."

---

## 2. Independent Review

**Assurance Scope**:
- **Attribution logic**: Verify control thresholds, EVIC calculations
- **Look-through**: Test fund look-through to underlying assets (sample-based)
- **Aggregation**: Recalculate portfolio totals, check for double-counting

**Finding Example**:
- Auditor identifies double-counting in fund look-through
- **Impact**: Portfolio impact overstated by $50M (3%)
- **Remediation**: Correct methodology, restate prior period if material

---

## PART E: REPORTING & DECISION-MAKING

---

## 1. Portfolio-Level Impact Statement

**Template**:

```
Portfolio Impact Summary (2025, SSP2-4.5 Scenario)

Total Portfolio Impact: $1,600 million/year
  - Environmental: $1,350M (84%)
    - GHG Emissions: $1,200M (75%)
    - Water Consumption: $80M (5%)
    - Land Use: $50M (3%)
    - Air Pollution: $20M (1%)
  - Social: $250M (16%)
    - OHS: $200M (12.5%)
    - Training (benefit): -$50M (-3%)
    - Living Wage: $100M (6%)

Portfolio NAV: $10,000 million
Impact Intensity: 16% of NAV (within risk appetite: <20%)

Top 10 Contributors: 65% of total impact
  1. Coal Power Plant A (India): $320M (20%)
  2. Steel Mill B (China): $180M (11%)
  ...
```

---

## 2. Strategic Actions

### Based on Portfolio Impact

**If Impact > Risk Appetite**:
1. **Engage**: Work with portfolio companies on reduction targets (SBTi, net-zero commitments)
2. **Divest**: Exit high-impact assets (particularly if no credible transition plan)
3. **Hedge**: Purchase carbon credits, biodiversity offsets (if high-quality)

**If Impact < Risk Appetite**:
- **Maintain**: Continue monitoring
- **Opportunistic**: Consider increasing exposure to beneficiaries (renewables, water efficiency tech)

---

## Document Navigation

**Previous**: [Playbook 4 — Governance & Risk Management](PLAYBOOK_4_GOVERNANCE_RISK_MANAGEMENT.md)
**Related**: 
- [Playbook 1 — Impact Value Factors](PLAYBOOK_1_IMPACT_VALUE_FACTORS.md)
- [Playbook 2 — Exposure Factors](PLAYBOOK_2_EXPOSURE_FACTORS.md)
- [Playbook 3 — Vulnerability & Scenarios](PLAYBOOK_3_VULNERABILITY_SCENARIOS.md)

---

**Document Version**: 2.0
**Last Updated**: 2026-01-03

**Contact**: dimitrij.euler@greenings.org
