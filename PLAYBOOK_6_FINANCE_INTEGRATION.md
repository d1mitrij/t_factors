# Playbook 6 — Finance Integration & Transition Internalization

**Version**: 2.0 (Integrated Framework)
**Last Updated**: 2026-01-03
**License**: Apache 2.0

---

## Framework Alignment

| Framework | Scope | Coverage |
|-----------|-------|----------|
| **TCFD / ISSB** | Financial effects; scenario analysis; risk quantification | ✓ Contingent liabilities, valuation adjustments |
| **TNFD** | Transition risks from dependencies and impacts | ✓ Nature-related financial risks |
| **SDGs** | Internalization of externalities | ✓ True cost economics |
| **Finance** | Risk premia, capital allocation, valuation | ✓ Financial metrics translation |

---

## Executive Summary

### Focus

**Translating impact, exposure, and vulnerability into financial risk and opportunity metrics**

### Core Question

> *When and how does an external impact crystallize into an internal financial risk?*

### Purpose

Integrate the outputs of **Playbooks 1–3** (IVF, EF, VF) and **Playbook 5** (portfolio attribution) into **finance-relevant metrics** that explain:
- **Contingent liabilities**: When externalities become costs to the firm
- **Risk premia**: Adjustment to discount rates and cost of capital
- **Capital allocation**: Strategic investment prioritization
- **Valuation adjustments**: Asset impairments and fair value changes

### Critical Concept

**Transition Internalization bridges impact and dependency**:
- **Impacts** (Playbook 1): Costs to society (IVF)
- **Dependencies** (Playbooks 2-3): Risks to the firm (EF × VF)
- **Internalization**: Likelihood of externality becoming liability

**Not all impacts become risks — but all risks originate in impacts.**

---

## PART A: CORE FRAMEWORK

---

## 1. Transition Internalization Ratio (TIR)

### Formula

```
TIR = Dependency / Impact Value Factor

Where:
- Dependency = Exposure Factor × Vulnerability Factor
- Impact Value Factor = Societal cost per unit impact (from Playbook 1)
```

### Interpretation

**TIR < 0.1 (Low Internalization)**:
- High societal impact, but limited transmission to firm
- Risk remains largely externalized
- **Financial implication**: Low near-term financial risk, but high regulatory/reputation risk

**TIR = 0.1-0.5 (Moderate Internalization)**:
- Partial transmission of externality to firm
- Emerging regulatory/market signals
- **Financial implication**: Medium-term risk, scenario-dependent

**TIR = 0.5-1.0 (High Internalization)**:
- Strong likelihood of externality → liability
- Policy, market, or physical constraints active
- **Financial implication**: High near-term risk, requires mitigation

**TIR > 1.0 (Full/Super Internalization)**:
- Externality fully priced into operations
- May include additional costs (fines, litigation, stranded assets)
- **Financial implication**: Crystallized liability, asset impairment

---

### Example 1: GHG Emissions (Carbon Pricing)

**Asset**: Coal power plant, Germany, 1,000 MW

**Impact (IVF - Playbook 1)**:
- Emissions: 7.88 billion kg CO₂/year
- Social Cost of Carbon (SCC): $0.10/kg CO₂
- **Impact**: 7.88B × $0.10 = **$788 million/year** (cost to society)

**Dependency (EF × VF - Playbooks 2-3)**:
- **Exposure (EF)**: 7.88 billion kg CO₂/year (same as impact)
- **Vulnerability (VF)** under SSP1-1.9 (1.5°C scenario):
  - EU ETS carbon price (2030): $150/tonne = $0.15/kg
  - Phase-out mandate: 2035 (10 years early retirement)
  - VF_cost = $0.15/kg (carbon price)
  - VF_stranding = Asset value × (1 - Years operated / Expected life)
- **Dependency (Operating Cost)**: 7.88B × $0.15 = **$1,182 million/year**
- **Dependency (Stranding)**: $500M book value × (1 - 10/30) = **$333 million** one-time

**TIR Calculation**:

**Operating Cost TIR**:
```
TIR_opex = Dependency_opex / Impact
        = $1,182M / $788M
        = 1.5 (150% internalization)
```

**Interpretation**: Carbon price ($0.15/kg) exceeds social cost ($0.10/kg) → **Super-internalization**. Firm pays more than societal damage, creating incentive to phase out.

**Stranded Asset TIR**:
```
TIR_capex = Dependency_capex / (Impact × Remaining_life)
          = $333M / ($788M × 10 years)
          = $333M / $7,880M
          = 0.042 (4.2% of total societal impact over remaining life)
```

**Interpretation**: Stranding is real but modest fraction of total societal cost. However, it's **100% internalized to asset owner** (not spread across society).

---

### Example 2: Water Consumption (Scarcity Pricing)

**Asset**: Textile factory, India, 100,000 m³/year

**Impact (IVF - Playbook 1)**:
- AWARE factor (India): 36.2
- IVF: $36.20/m³ (2025USD, AWARE-adjusted societal damage)
- **Impact**: 100,000 × $36.20 = **$3.62 million/year** (cost to society)

**Dependency (EF × VF - Playbooks 2-3)**:
- **Exposure (EF)**: 100,000 m³/year
- **Vulnerability (VF)** under SSP2-4.5 (moderate scenario):
  - Municipal water price increase: $5/m³ → $8/m³ (60% increase due to scarcity)
  - Regulatory allocation limits: 20% reduction mandate by 2030
  - VF_price = Additional $3/m³ cost
  - VF_reduction = Capital for recycling: $2M investment (annualized $200k/year)
- **Dependency (Operating)**: 100,000 × $3 = **$300,000/year**
- **Dependency (Capex)**: **$200,000/year** (annualized)
- **Total Dependency**: **$500,000/year**

**TIR Calculation**:
```
TIR = $500k / $3.62M
    = 0.138 (13.8% internalization)
```

**Interpretation**: **Low-moderate internalization**. Society bears 86% of water scarcity cost, firm bears 14% (via price increase + compliance capex). Risk is emerging but not yet fully priced.

**Forward-Looking (SSP1-1.9, 2050)**:
- Municipal price: $15/m³ (vs. $5 baseline) → Additional $10/m³
- Stringent allocation: 50% reduction mandate → More recycling capex
- **Dependency**: 50,000 m³ (reduced) × $10 + $500k capex/year = **$1M/year**
- **TIR (2050)**: $1M / $1.81M (impact on 50k m³) = **0.55 (55% internalization)**

**Interpretation**: By 2050 under strong water governance (SSP1), internalization rises to 55% → **Medium-high financial risk**.

---

## 2. Dependency Construction (Numerator)

### Formula

```
Dependency = Exposure Factor × Vulnerability Factor × Transmission Mechanism

Where:
- EF: Asset-level activity (from Playbook 2)
- VF: Scenario-based conversion to risk (from Playbook 3)
- Transmission: How externality becomes internal cost
```

### Transmission Mechanisms

**1. Regulatory Pricing** (Carbon tax, water fees, pollution charges):
```
Dependency_regulatory = Activity × Regulatory_Price

Example: 1M kg CO₂ × $100/tonne = $100,000/year
```

**2. Operational Constraints** (Quotas, phase-outs, efficiency mandates):
```
Dependency_operational = (Baseline_Cost - Compliant_Cost) + Compliance_Capex

Example: Water reduction mandate
- Baseline: 100k m³ × $5/m³ = $500k/year
- Compliant: 70k m³ × $5/m³ = $350k/year (30% reduction)
- Capex (recycling): $1M → $100k/year annualized
- Dependency = ($500k - $350k) saved, but -$100k capex = Net -$50k benefit (if efficient)
- BUT if non-compliant → Fines: $500k/year → Dependency = $500k
```

**3. Market Mechanisms** (Demand shift, price premium/discount):
```
Dependency_market = Revenue_Loss + Market_Share_Loss

Example: EUDR-banned soy
- Baseline revenue: $10M/year (EU market)
- Post-EUDR: $0 (market access lost)
- Dependency = $10M/year revenue loss
```

**4. Physical Impacts** (Damage, productivity loss, supply chain disruption):
```
Dependency_physical = Damage_Cost × Probability + Adaptation_Capex

Example: Coastal flooding (SSP5-8.5, 2050)
- Asset value at risk: $50M
- Annual flood probability: 10% (vs. 2% today)
- Expected loss: $50M × 10% = $5M/year
- Adaptation (sea walls): $20M → $1M/year annualized
- Dependency = $5M - $1M (if adapted) = $4M/year residual risk
```

**5. Litigation & Liability** (Class action, regulatory fines):
```
Dependency_legal = Expected_Liability × Probability

Example: Air pollution health damages
- Societal impact: $100M/year (health costs in nearby city)
- Litigation probability: 5% (based on precedent)
- Average settlement: $50M (50% of impact)
- Dependency = $50M × 5% = $2.5M/year expected cost
```

---

### Context-Specific Adjustments

**Local Policy Effectiveness**:
```
Dependency_adjusted = Dependency_theoretical × Policy_Enforcement_Factor

Where:
- Policy_Enforcement = 0 (no enforcement) to 1 (full enforcement)
```

**Example**:
- Theoretical carbon price (SSP1-1.9): $150/tonne
- Country A (EU): Enforcement = 0.95 → Effective price $142.50/tonne
- Country B (Weak governance): Enforcement = 0.3 → Effective price $45/tonne
- **Dependency** varies 3× between countries for same asset type

**Corporate Transition Management**:
```
Dependency_managed = Dependency_baseline × (1 - Mitigation_Effectiveness)

Where:
- Mitigation_Effectiveness = % reduction achieved (CCS, efficiency, offsets)
```

**Example**:
- Baseline dependency (no CCS): $1,000M/year carbon cost
- CCS captures 90% emissions, cost: $80/tonne
- **New dependency**: 10% emissions × $150/tonne + 90% CCS × $80/tonne
  = $150M + $720M = **$870M/year** (13% reduction vs. baseline)

---

## PART B: LOCAL & CONTEXT-SPECIFIC APPLICATIONS

---

## 1. Climate (GHG Emissions)

### Global IVF, Local Dependency

**Impact (Denominator - Global Uniform)**:
- Social Cost of Carbon: $100/tonne CO₂ (global, scenario-independent for baseline)

**Dependency (Numerator - Local/Sectoral)**:
- **Country A (EU)**: Carbon price $150/tonne → TIR = 1.5
- **Country B (No carbon pricing)**: Effective price $0/tonne → TIR = 0
  - But reputation/market risk → TIR_reputation = 0.1-0.2 (estimated)

**Sectoral Variation**:
- **Electricity (Coal)**: High dependency (direct emissions, phase-out risk)
  - TIR = 1.2-1.8 (in SSP1-1.9, high carbon price regions)
- **IT Services**: Low direct dependency (Scope 1-2 minimal)
  - TIR = 0.05-0.15 (mostly Scope 3, less internalized)

---

## 2. Water (Scarcity & Pollution)

### Local IVF, Local Dependency

**Impact (Denominator - Highly Local)**:
- India (Ganges basin, AWARE=52): $52/m³ scarcity cost
- Norway (abundant, AWARE=0.5): $0.50/m³ scarcity cost

**Dependency (Numerator - Local Policy + Corporate Action)**:

**India (High Scarcity)**:
- Municipal price: $8/m³ (vs. $52 societal cost)
- **Baseline TIR**: $8 / $52 = 0.15 (15% internalization)
- **With water stress pricing (SSP1, 2050)**: $25/m³ municipal
  - **TIR_2050**: $25 / $75 (escalated IVF) = 0.33 (33% internalization)

**Norway (Low Scarcity)**:
- Municipal price: $2/m³ (vs. $0.50 societal cost)
- **TIR**: $2 / $0.50 = 4.0 (400% super-internalization!)
- **Interpretation**: Norway taxes water above societal cost (precautionary principle, revenue generation) → Low financial risk, actually profitable to reduce consumption

**Corporate Water Management (India)**:
- Company invests in recycling: 70% reduction in freshwater intake
- Dependency_water = 30k m³ × $8/m³ + $200k capex/year = $440k
- vs. Baseline dependency (no recycling): 100k m³ × $8 = $800k
- **Managed TIR**: $440k / $1.56M (impact on 30k m³) = 0.28
- vs. **Unmanaged TIR**: $800k / $5.2M = 0.15
- **Interpretation**: Recycling investment increases TIR slightly (more cost-efficient) but reduces absolute dependency ($800k → $440k) → Net financial benefit

---

## 3. Nature (Biodiversity & Land Use)

### ENCORE Dependency × LANCA Impact

**Impact (Denominator - Ecosystem-Specific)**:
- Indonesia primary forest: $3.77M/ha (Playbook 1, EPS + LANCA)

**Dependency (Numerator - ENCORE + Regulatory)**:

**Palm Oil Plantation (Expansion Scenario)**:
- Plans to convert 5,000 ha primary forest
- **Baseline dependency** (pre-EUDR): Low (no internalization)
  - TIR ≈ 0 (expansion happens, externality not priced)
- **Post-EUDR (2024+)**:
  - Market access to EU lost if deforestation post-2020
  - EU represents 40% of revenue: $50M/year at risk
  - **Dependency**: $50M/year (revenue) + $18.85B impact (5,000 ha × $3.77M)
    - Revenue TIR: $50M / $18.85B = 0.003 (0.3%)
    - BUT for decision: Avoid $18.85B impact OR lose $50M/year revenue
    - **Effective TIR**: If expansion proceeds, lose EU market → TIR_revenue = ∞ (100% internalized via market exclusion)

**Alternative (No Expansion, Intensification)**:
- Intensify existing land: +30% yield on 10,000 ha
- Investment: $30M capex
- **Dependency**: $30M / No new impact = TIR undefined (no impact, pure investment)
- **Financial outcome**: Maintain EU market ($50M/year), avoid $18.85B impact, invest $30M → **NPV positive**

**Interpretation**: EUDR creates binary dependency — deforestation → full market loss. TIR framework shows expansion has TIR → ∞ (infinite internalization of revenue risk).

---

## PART C: ASSET-LEVEL vs. PORTFOLIO-LEVEL TIR

---

## 1. Asset-Level TIR

### Purpose

- Asset valuation adjustments (fair value, impairment)
- Project-level investment decisions (IRR adjustment)
- Transition capex prioritization

### Calculation

```
TIR_asset = Dependency_asset / Impact_asset

Where both numerator and denominator are at the asset level (100% attribution)
```

### Example: Steel Plant (Germany, EAF Technology)

**Impact (Asset-Level)**:
- Emissions: 1.8 million kg CO₂ (per 1M tonnes steel/year)
- SCC: $0.10/kg → Impact = $180,000/year

**Dependency (Asset-Level, SSP1-1.9, 2030)**:
- EU ETS price: $150/tonne = $0.15/kg
- Dependency = 1.8M × $0.15 = **$270,000/year**

**TIR**: $270k / $180k = **1.5** (150% internalization → carbon price exceeds SCC)

**Financial Application**:
- **Impairment Test**: If TIR > 1, carbon costs exceed societal benefit → Potential impairment trigger
- **Capex Decision**: Invest $10M in hydrogen-based DRI (eliminates 90% emissions)
  - New dependency: 0.18M kg × $0.15 = $27k/year (90% reduction)
  - Savings: $270k - $27k = $243k/year
  - Payback: $10M / $243k = **41 years** (not financially attractive without subsidy)
  - **But**: Avoids future price escalation (SSP1, 2050: $300/tonne)
    - Future savings (2050): 1.8M × ($0.30 - $0.15) = $270k additional → Total $540k/year
    - **Revised payback (with 2050 price)**: $10M / $540k = **18.5 years** (more attractive)

---

## 2. Portfolio-Level TIR

### Purpose

- Risk-weighted portfolio construction
- Capital allocation across sectors/geographies
- Engagement prioritization (which holdings to engage on transition)
- Portfolio-level contingent liability estimation

### Calculation

```
TIR_portfolio = Σ (Dependency_asset × Attribution_share) / Σ (Impact_asset × Attribution_share)

Where attribution is from Playbook 5 (equity %, EVIC-based debt %, etc.)
```

### Example: Investment Portfolio (Multi-Asset)

**Holdings**:
1. **Coal Plant A** (India, 10% equity stake)
   - Asset impact: $500M/year
   - Asset dependency (SSP2-4.5): $100M/year (TIR_asset = 0.2)
   - Attribution: 10%
   - **Portfolio impact**: $50M/year
   - **Portfolio dependency**: $10M/year

2. **Renewable Developer B** (USA, 20% equity)
   - Asset impact: -$20M/year (negative = benefit, displaces coal)
   - Asset dependency (opportunity): -$50M/year (revenue from green market)
   - TIR_asset = 2.5 (opportunity fully captured)
   - Attribution: 20%
   - **Portfolio impact**: -$4M/year
   - **Portfolio dependency**: -$10M/year

3. **Steel Plant C** (Germany, 5% EVIC share via bonds)
   - Asset impact: $180M/year
   - Asset dependency (SSP1-1.9): $270M/year (TIR_asset = 1.5)
   - Attribution: 5%
   - **Portfolio impact**: $9M/year
   - **Portfolio dependency**: $13.5M/year

**Portfolio Aggregation**:
- **Total Portfolio Impact**: $50M - $4M + $9M = **$55M/year** (net cost to society)
- **Total Portfolio Dependency**: $10M - $10M + $13.5M = **$13.5M/year** (net cost to portfolio)

**Portfolio TIR**:
```
TIR_portfolio = $13.5M / $55M
              = 0.245 (24.5% internalization)
```

**Interpretation**:
- Portfolio bears 24.5% of societal climate cost it contributes to
- 75.5% externalized (society bears burden)
- **Trend under SSP1-1.9 (2050)**: TIR → 0.6-0.8 (60-80% internalization as carbon prices rise)

**Strategic Action**:
- **High TIR assets** (Steel C, TIR=1.5): Engage on decarbonization, consider divestment if no transition plan
- **Low TIR assets** (Coal A, TIR=0.2): High externality, medium financial risk → Engage or divest
- **Negative TIR assets** (Renewables B): Opportunity → Increase allocation

---

## PART D: FINANCIAL USE CASES

---

## 1. Contingent Liability Estimation

### Framework

```
Contingent_Liability = Portfolio_Dependency × Probability_of_Internalization × Time_Horizon

Where:
- Portfolio_Dependency: From TIR numerator (aggregated via Playbook 5)
- Probability: Scenario-dependent (SSP1 = 80%, SSP5 = 20%)
- Time_Horizon: Planning period (e.g., 10 years for bank loan, 30 years for equity)
```

### Example: Bank Loan Portfolio

**Loan**: $500M to coal company (10-year maturity)

**Dependency Analysis**:
- Coal asset fleet dependency (SSP2-4.5): $2B/year carbon costs by 2030
- TIR = 0.8 (80% internalization)
- Borrower EBITDA: $3B/year (baseline)

**Contingent Liability**:
- **Scenario 1 (SSP2-4.5, 60% probability)**:
  - Dependency: $2B/year
  - EBITDA impact: $3B - $2B = $1B (67% reduction)
  - Credit risk: Elevated (potential default if no mitigation)
  - Contingent liability: $500M loan × 30% default probability × 40% loss given default = **$60M** expected loss

- **Scenario 2 (SSP1-1.9, 30% probability)**:
  - Dependency: $3.5B/year (higher carbon price)
  - EBITDA impact: $3B - $3.5B = -$0.5B (negative EBITDA)
  - Credit risk: High (likely default)
  - Contingent liability: $500M × 70% default × 60% LGD = **$210M**

- **Scenario 3 (SSP5-8.5, 10% probability)**:
  - Dependency: $500M/year (low carbon price)
  - EBITDA impact: $3B - $0.5B = $2.5B (manageable)
  - Credit risk: Low
  - Contingent liability: $500M × 5% default × 20% LGD = **$5M**

**Weighted Contingent Liability**:
```
= 60% × $60M + 30% × $210M + 10% × $5M
= $36M + $63M + $0.5M
= $99.5M (20% of loan value)
```

**Bank Action**:
- Increase loan loss provision by $99.5M
- Or: Require borrower to develop credible transition plan (CCS, diversification) as covenant

---

## 2. Discount Rate & Risk Premia Adjustment

### Framework

```
Adjusted_Discount_Rate = Base_Rate + Climate_Risk_Premium

Where:
Climate_Risk_Premium = f(TIR, Scenario_Uncertainty, Transition_Plan_Quality)
```

### Example: Project Finance (Solar Farm vs. Coal Plant)

**Coal Plant (New Build, Controversial)**:
- Base IRR requirement: 8%
- TIR (SSP1-1.9): 1.8 (high internalization risk)
- Scenario uncertainty: High (policy, technology, market all adverse)
- Transition plan: None (coal cannot transition to low-carbon in situ)
- **Climate Risk Premium**: +5-8% (reflects stranding, carbon cost, market risk)
- **Adjusted Required IRR**: 13-16%
- **Financial outcome**: Project likely un financeable (cannot achieve 13-16% IRR with carbon costs)

**Solar Farm**:
- Base IRR requirement: 8%
- TIR: -2.0 (negative = opportunity, revenue from green market)
- Scenario uncertainty: Low-moderate (policy support in SSP1-2)
- Transition plan: N/A (inherently low-carbon)
- **Climate Risk Premium**: -2% to 0% (opportunity discount)
- **Adjusted Required IRR**: 6-8%
- **Financial outcome**: Highly financeable

**Interpretation**: TIR-based risk premia internalize transition risk into cost of capital, steering investment toward low-carbon assets.

---

## 3. Stress Testing & Scenario Analysis (TCFD / ISSB)

### Framework

**Stress Test Structure**:
1. **Baseline**: Current TIR under SSP2-4.5 (moderate scenario)
2. **Stress 1**: TIR under SSP1-1.9 (high internalization)
3. **Stress 2**: TIR under SSP5-8.5 (low internalization but high physical risk)

### Example: Real Estate Portfolio (Coastal + Inland)

**Portfolio Composition**:
- 60% coastal properties (high physical risk)
- 40% inland properties (low physical risk)

**Stress Test Results** (TIR for Physical Risk):

| Scenario | Coastal TIR | Inland TIR | Portfolio TIR (Weighted) | Financial Impact |
|----------|-------------|-----------|-------------------------|------------------|
| **Baseline (SSP2)** | 0.3 | 0.05 | 0.2 | -5% portfolio value |
| **SSP1-1.9 (1.5°C)** | 0.2 | 0.03 | 0.13 | -3% portfolio value (low physical risk) |
| **SSP5-8.5 (4-5°C)** | 0.9 | 0.2 | 0.62 | -20% portfolio value (high physical risk) |

**Interpretation**:
- Under SSP5-8.5, coastal properties face 90% internalization of physical damages (sea level rise, storms)
- Portfolio value at risk: 20% under high warming scenario
- **Strategic Response**: Increase inland allocation, divest coastal (or require adaptation capex)

---

## 4. Linking Impact Materiality with Financial Materiality

### Double Materiality (ESRS Framework)

**Impact Materiality**: Effect of entity on environment/society (outside-in)
**Financial Materiality**: Effect of environment/society on entity (inside-out)

**TIR Bridges the Two**:
- **High Impact, Low TIR**: Significant externality, but not yet financially material
  - Example: Scope 3 emissions in sectors without carbon pricing
- **High Impact, High TIR**: Both impact-material AND financially material
  - Example: Coal plant in EU (high emissions, high carbon price)
- **Low Impact, High TIR**: Minor externality, but financially sensitive
  - Example: Water use in non-scarce region with high municipal prices (Norway example)

**ESRS Application**:

| Asset | Impact (Env/Social) | TIR | Financial Materiality | ESRS Disclosure |
|-------|-------------------|-----|----------------------|----------------|
| Coal Plant (EU) | High (GHG) | 1.5 | High (carbon cost) | **Mandatory** (E1 + Financial) |
| IT Services | Low (GHG) | 0.1 | Low | Mandatory (E1) but limited financial |
| Palm Oil (EUDR) | High (Biodiversity) | ∞ (market loss) | High (revenue risk) | **Mandatory** (E4 + Financial) |
| Office Building (Inland) | Low (Physical Risk) | 0.05 | Low | Discretionary |

**Interpretation**: TIR > 0.5 typically triggers both impact AND financial materiality → Requires full ESRS disclosure + financial effects quantification.

---

## PART E: GOVERNANCE & INTEGRATION

---

## 1. Governance Framework (Links to Playbook 4)

### Ownership

**TIR Methodology**:
- **Owner**: Chief Risk Officer (CRO) + Chief Financial Officer (CFO)
- **Approval**: Board Risk Committee

**Data Inputs**:
- **IVF (Denominator)**: Sustainability/Impact team (governed by Playbook 1)
- **Dependency (Numerator)**: Risk team (scenarios from Playbook 3)
- **Attribution**: Investment team (Playbook 5)

### Review Cycle

- **Annual**: Baseline TIR calculation (SSP2-4.5)
- **3-Year**: Stress testing (SSP1-1.9, SSP5-8.5)
- **Ad-Hoc**: Upon material regulatory change (e.g., new carbon tax, EUDR entry into force)

---

## 2. Integration with Risk Appetite

### Risk Appetite Statement (Example with TIR)

> "The organization shall limit climate-related financial exposures such that:
> 1. Portfolio-level TIR remains below 0.4 (40% internalization) under SSP2-4.5
> 2. No single asset with TIR > 1.5 exceeds 5% of portfolio value
> 3. Contingent liabilities (TIR-based) do not exceed 15% of equity capital"

### Monitoring

**Quarterly Dashboard**:
- Current portfolio TIR (baseline + scenarios)
- Top 10 assets by TIR (engagement priority)
- Trend analysis (is TIR increasing over time?)
- Contingent liability estimate (vs. 15% threshold)

**Escalation**:
- If portfolio TIR > 0.4 → Trigger review by CRO
- If contingent liability > 15% → Board escalation, strategic review (divest, hedge, engage)

---

## 3. Integration with Financial Reporting

### Financial Statement Impact

**Balance Sheet**:
- **Provisions**: Contingent liabilities (if TIR-based probability > 50%)
- **Impairments**: Asset write-downs if TIR → stranding

**Income Statement**:
- **Operating Expenses**: Carbon costs, water fees (internalized dependency)
- **Exceptional Items**: Stranded asset charges, regulatory fines

**Notes Disclosure** (IFRS S1/S2, ESRS):
- Scenario-based TIR analysis (qualitative + quantitative)
- Contingent liability estimation (range, assumptions)
- Sensitivity: Impact of carbon price ±$50/tonne on TIR and earnings

---

## PART F: ADVANCED APPLICATIONS

---

## 1. Sectoral TIR Benchmarking

### Purpose
Compare TIR across sectors to identify high-risk / high-opportunity sectors for capital allocation.

### Example: Sectoral TIR (SSP2-4.5, 2030)

| Sector | Median Impact | Median Dependency | Median TIR | Interpretation |
|--------|--------------|------------------|-----------|---------------|
| **Coal Mining** | $5B/year | $3B/year | 0.6 | Moderate internalization, declining |
| **Oil & Gas** | $8B/year | $4B/year | 0.5 | Moderate, but high absolute risk |
| **Steel (BF-BOF)** | $500M/year | $400M/year | 0.8 | High internalization (EU ETS) |
| **Steel (H2-DRI)** | $50M/year | -$100M/year | -2.0 | **Opportunity** (negative dependency = revenue) |
| **Renewables** | -$100M/year | -$300M/year | 3.0 | **High opportunity capture** |
| **Real Estate (Coastal)** | $200M/year | $180M/year | 0.9 | High physical risk internalization |
| **IT Services** | $50M/year | $5M/year | 0.1 | Low internalization (mostly Scope 3) |

**Capital Allocation Insight**:
- **Reduce**: Coal, Oil & Gas, BF-BOF Steel (high TIR, stranding risk)
- **Maintain**: IT Services (low TIR, low financial risk)
- **Increase**: H2-DRI Steel, Renewables (negative TIR, opportunity)

---

## 2. Geographic TIR Heatmaps

### Purpose
Visualize geographic variation in TIR due to local policy effectiveness.

### Example: Carbon TIR by Country (Same Asset: Coal Power Plant)

| Country | SCC (Impact) | Carbon Price (Dependency) | TIR | Risk Level |
|---------|-------------|--------------------------|-----|-----------|
| **EU (Germany)** | $100/tonne | $150/tonne | 1.5 | **Very High** (super-internalized) |
| **USA (Federal)** | $100/tonne | $0/tonne (no federal tax) | 0.0 | Low (but state-level variation) |
| **USA (California)** | $100/tonne | $35/tonne (state program) | 0.35 | Medium |
| **China** | $100/tonne | $10/tonne (pilot ETS) | 0.1 | Low-medium |
| **India** | $100/tonne | $0/tonne | 0.0 | Low (but physical risk high) |
| **South Africa** | $100/tonne | $8/tonne (carbon tax) | 0.08 | Low |

**Investment Insight**:
- Avoid new coal investments in EU (TIR=1.5, uneconomical)
- Existing coal in India/South Africa has low carbon cost BUT high physical/reputation risk
- Geographic diversification of carbon-intensive assets may reduce portfolio TIR but does NOT reduce impact

---

## 3. Dynamic TIR (Time-Series Forecasting)

### Purpose
Project TIR evolution to identify inflection points where externalities crystallize.

### Example: Coal Plant (Germany, 2025-2050)

| Year | SCC | EU ETS Price | TIR | Financial State |
|------|-----|-------------|-----|----------------|
| 2025 | $80/t | $100/t | 1.25 | Marginally profitable |
| 2030 | $100/t | $150/t | 1.5 | Break-even |
| 2035 | $120/t | $200/t | 1.67 | **Loss-making** (phase-out mandated) |
| 2040 | N/A | N/A | ∞ | **Stranded** (decommissioned) |

**Inflection Point**: 2030-2035 (TIR crosses 1.5, financial viability lost)

**Decision Point**: Invest in CCS by 2028 OR commit to phase-out by 2032 (avoid stranded capex)

---

## PART G: SYSTEM LOGIC SUMMARY

---

## Integration Across Playbooks

```
PLAYBOOK 1 (IVF): Defines societal cost → Denominator of TIR

PLAYBOOK 2 (EF): Defines exposure → Part of numerator (Dependency = EF × VF)

PLAYBOOK 3 (VF): Defines vulnerability → Part of numerator (Dependency = EF × VF)

PLAYBOOK 5 (Attribution): Aggregates TIR to portfolio level

PLAYBOOK 6 (This): Calculates TIR, translates to financial metrics

PLAYBOOK 7 (Strategy): Uses TIR to prioritize transitions, set targets
```

---

## Critical Principles

1. **Not All Impacts Become Risks**
   - Low TIR (<0.2) = High externality, low internalization → Reputation/regulatory risk, not yet financial
   - High TIR (>0.8) = Externality becoming liability → Financial risk

2. **All Risks Originate in Impacts**
   - Cannot have dependency (financial risk) without underlying impact (externality)
   - TIR traces financial risk back to root cause (societal harm)

3. **TIR is Scenario-Dependent**
   - SSP1-1.9: TIR → 1.0 (high internalization)
   - SSP5-8.5: TIR → 0.2 (low internalization BUT high physical risk)

4. **TIR Bridges Impact & Financial Materiality**
   - High Impact + High TIR = **Double Materiality** (ESRS disclosure required)
   - High Impact + Low TIR = **Impact Materiality Only** (emerging risk, monitor)

---

## PART H: SSP SCENARIO-SPECIFIC TIR & FINANCIAL RISK EVOLUTION

---

## Executive Summary: TIR Under SSPs

**Purpose**: This section defines how **Transition Internalization Ratio (TIR)** evolves under different **Shared Socioeconomic Pathways (SSPs)**, translating scenario-dependent impacts, exposures, and vulnerabilities into quantified financial risk.

**Key Principle**:
```
TIR[SSP] = Dependency[SSP] / IVF[SSP]
         = (Exposure[SSP] × VF[SSP]) / IVF[SSP]

All three components are scenario-dependent:
- IVF[SSP]: From Playbook 1 (valuation changes under scenarios)
- Exposure[SSP]: From Playbook 2 (activity levels change)
- VF[SSP]: From Playbook 3 (policy/regulation/physical vulnerabilities change)
```

**The Compounding Effect on TIR**:
- **SSP1-1.9**: Low Exposure × High VF (strong policy) / High IVF → **TIR = 0.8-2.0** (high-full internalization, orderly transition)
- **SSP2-4.5**: Medium Exposure × Medium VF / Medium IVF → **TIR = 0.3-0.7** (partial internalization, muddling through)
- **SSP5-8.5 Early**: High Exposure × Low VF (weak policy) / Low IVF → **TIR = 0.1-0.4** (low internalization, appears low-risk)
- **SSP5-8.5 Post-2050**: High Exposure × Extreme VF (crisis) / High IVF (shock pricing) → **TIR = 3.0-10.0+** (catastrophic internalization, contingent liability)

**Coverage**: SSP-specific TIR evolution for:
1. Carbon/GHG (stranding risk, carbon cost internalization)
2. Water (scarcity pricing, allocation constraints)
3. Land Use (EUDR enforcement, biodiversity regulations)
4. Physical Risk (adaptation costs, insurance withdrawal)
5. Portfolio-Level Contingent Liabilities
6. Financial Metrics (NPV adjustments, cost of capital, stress testing)

---

## 1. SSP Framework Recap (TIR Lens)

### The Five SSP Narratives (Financial Risk Perspective)

| SSP | Narrative | **TIR Evolution Driver** | **Financial Risk Profile** |
|-----|-----------|-------------------------|---------------------------|
| **SSP1-1.9** | Sustainability | **Strong policy internalization: High carbon prices, strict enforcement** | High early TIR (0.8-2.0) → Predictable risk, orderly transition |
| **SSP2-4.5** | Middle of the Road | **Moderate policy: Partial carbon pricing, fragmented enforcement** | Medium TIR (0.3-0.7) → Incremental risk escalation |
| **SSP3-7.0** | Regional Rivalry | **Fragmented policy: Weak internalization, high physical risk** | Low transition TIR (0.2-0.5), High physical TIR (2.0-5.0 by 2050) |
| **SSP4-6.0** | Inequality | **Bifurcated: High TIR in advanced economies, low in developing** | Heterogeneous risk (0.1-2.0 depending on region) |
| **SSP5-8.5** | Fossil-Fueled | **Delayed internalization: Weak early policy → Crisis-driven shock** | Low early TIR (0.1-0.4) → **Catastrophic late TIR (5.0-20.0 post-2050)** |

**T-Factors Primary Focus**: SSP1-1.9, SSP2-4.5, SSP5-8.5 (representing orderly, moderate, and disorderly financial risk pathways).

---

## 2. Carbon/GHG TIR Under SSPs

### 2.1 SSP1-1.9 (Sustainability - High Internalization)

**Scenario Characteristics**:
- Strong global carbon pricing coordination (60-90% of emissions covered)
- Stringent phase-out mandates for fossil assets
- High enforcement (CBAM, trade sanctions for non-compliance)

---

#### TIR Evolution (Coal Power Plant, Germany, 1,000 MW)

**Impact (IVF - Denominator)**:

| Year | Emissions (Mt CO₂/year) | SCC ($/tonne) | Impact ($M/year) |
|------|------------------------|--------------|------------------|
| **2025** | 7.88 | $90 | $709 |
| **2030** | 4.38 (50% CCS) | $125 | $548 (CCS reduces exposure + IVF rises) |
| **2035** | 0 (phased out) | $180 | $0 (asset stranded) |

**Dependency (EF × VF - Numerator)**:

| Year | Emissions (Mt) | Carbon Price ($/tonne) | VF (Policy Enforcement) | Dependency ($M/year) | Stranded Capital |
|------|---------------|----------------------|------------------------|---------------------|-----------------|
| **2025** | 7.88 | $100 | 1.0 (strict EU ETS) | $788 | - |
| **2030** | 4.38 (CCS) | $150 | 1.0 | $657 | - |
| **2035** | 0 | $200 | N/A | $0 | **$250M (write-down)** |

**TIR Calculation**:

| Year | Dependency ($M) | Impact ($M) | **TIR** | Financial State |
|------|----------------|------------|---------|----------------|
| **2025** | $788 | $709 | **1.11** | Super-internalized (carbon price > SCC) |
| **2030** | $657 | $548 | **1.20** | Increasing internalization (CCS not sufficient) |
| **2035** | Stranded | $0 | **∞** | Asset abandoned (orderly phase-out) |

**Contingent Liability (2025-2035 Period)**:
```
Total carbon costs: $788M + $657M × 5 years ≈ $4B (cumulative)
Stranded capital: $250M (one-time write-down)
Total Contingent Liability: $4.25B

vs. Asset NPV (2025): ~$500M book value
Contingent Liability / Asset Value = 8.5× (asset deeply underwater)
```

**Financial Implication**: **TIR > 1.0 throughout** → Carbon costs exceed societal damages → Asset economically unviable → Orderly divestment or early retirement required to avoid catastrophic losses.

---

### 2.2 SSP2-4.5 (Middle of the Road - Moderate Internalization)

**Scenario Characteristics**:
- Partial carbon pricing (40-50% of emissions covered)
- Gradual fossil phase-outs (no hard deadlines)
- Moderate enforcement (advanced economies only)

---

#### TIR Evolution (Same Coal Plant)

**Impact (IVF)**:

| Year | Emissions (Mt) | SCC ($/tonne) | Impact ($M/year) |
|------|---------------|--------------|------------------|
| **2025** | 7.88 | $75 | $591 |
| **2030** | 7.0 (minor efficiency) | $90 | $630 |
| **2040** | 3.5 (50% capacity, partial retirement) | $110 | $385 |
| **2050** | 0 (eventual phase-out) | $130 | $0 |

**Dependency**:

| Year | Emissions (Mt) | Carbon Price ($/tonne) | VF (Enforcement) | Dependency ($M/year) |
|------|---------------|----------------------|-----------------|---------------------|
| **2025** | 7.88 | $60 | 0.8 (moderate EU ETS) | $378 |
| **2030** | 7.0 | $75 | 0.8 | $420 |
| **2040** | 3.5 | $110 | 0.9 (tightening) | $346 |
| **2050** | 0 | - | - | $0 |

**TIR Calculation**:

| Year | Dependency ($M) | Impact ($M) | **TIR** | Financial State |
|------|----------------|------------|---------|----------------|
| **2025** | $378 | $591 | **0.64** | Moderate internalization (firm pays 64% of societal cost) |
| **2030** | $420 | $630 | **0.67** | Slowly increasing internalization |
| **2040** | $346 | $385 | **0.90** | High internalization (approaching 1.0) |
| **2050** | $0 | $0 | N/A | Gradual phase-out (managed) |

**Contingent Liability (2025-2050 Period)**:
```
Cumulative carbon costs: $378M + $420M×5 + $346M×10 ≈ $6.9B
Stranded capital (2045-2050): $85M (partial stranding, gradual)
Total: $7.0B

vs. Asset NPV (2025): $500M
Ratio: 14× (still deeply negative, but spread over longer period)
```

**Financial Implication**: **TIR = 0.6-0.9** → Partial internalization → Asset marginally profitable early years, then margin compression → **Gradual erosion** rather than sudden collapse (vs. SSP1).

---

### 2.3 SSP5-8.5 (Fossil-Fueled - Delayed Internalization, Then Crisis)

**Scenario Characteristics**:
- Weak early carbon pricing (<20% coverage)
- Continued fossil expansion (no phase-outs)
- Post-2050 crisis-driven emergency regulations (tipping points trigger sudden action)

---

#### TIR Evolution (Same Coal Plant)

**Early Period (2025-2050)**:

**Impact (IVF)**:

| Year | Emissions (Mt) | SCC ($/tonne) | Impact ($M/year) |
|------|---------------|--------------|------------------|
| **2025** | 7.88 | $65 | $512 |
| **2030** | 8.5 (capacity expansion) | $75 | $638 |
| **2050** | 9.0 (continued operation) | $75 | $675 (SCC stagnates in SSP5 early period) |

**Dependency**:

| Year | Emissions (Mt) | Carbon Price ($/tonne) | VF (Enforcement) | Dependency ($M/year) |
|------|---------------|----------------------|-----------------|---------------------|
| **2025** | 7.88 | $20 | 0.3 (weak voluntary schemes) | $47 |
| **2030** | 8.5 | $30 | 0.3 | $77 |
| **2050** | 9.0 | $40 | 0.4 (slow tightening) | $144 |

**TIR Calculation (Early Period)**:

| Year | Dependency ($M) | Impact ($M) | **TIR** | Financial State |
|------|----------------|------------|---------|----------------|
| **2025** | $47 | $512 | **0.09** | Very low internalization (91% externalized) |
| **2030** | $77 | $638 | **0.12** | Low internalization (appears profitable) |
| **2050** | $144 | $675 | **0.21** | Still low (79% externalized, asset appears viable) |

**Contingent Liability (Early Period, 2025-2050)**: $47M + $77M×5 + $144M×15 ≈ **$2.6B** (manageable, asset remains profitable)

---

**Crisis Period (Post-2050)**:

**Trigger**: Cascading climate disasters (multi-breadbasket failures, Arctic methane release, Amazon tipping point) → Emergency climate declarations

**Impact (IVF - Shock Pricing)**:

| Year | Emissions (Mt) | SCC ($/tonne) | Impact ($M/year) |
|------|---------------|--------------|------------------|
| **2055** | 9.0 (still operating) | **$300** (crisis pricing, 4× jump) | **$2,700** |

**Dependency (Crisis Scenario)**:

| Year | Emissions (Mt) | Carbon Price ($/tonne) | VF (Emergency Regulations) | Dependency ($M/year) | Additional Penalties |
|------|---------------|----------------------|---------------------------|---------------------|---------------------|
| **2055** | 9.0 | **$500** (emergency carbon tax) | **3.0** (retroactive penalties, criminal prosecution) | **$4,500** carbon cost | +**$1,500M** (fines, restoration mandates) |

**TIR Calculation (Crisis Period)**:
```
Dependency (2055): $4,500M (carbon) + $1,500M (penalties) = $6,000M
Impact (2055): $2,700M
TIR = $6,000M / $2,700M = 2.22 (222% internalization)

BUT this is a SINGLE YEAR. Cumulative liability:
- Retroactive carbon tax (2025-2055 historical emissions): 8Mt × 30 years × $200/tonne (retroactive) = $48B
- Asset seizure: $500M (full write-down)
- Criminal penalties: $2B (executives prosecuted)

TOTAL CONTINGENT LIABILITY (POST-2050): $50.5B
```

**Contingent Liability Comparison**:

| Period | TIR | Cumulative Liability ($B) | Risk Characterization |
|--------|-----|--------------------------|----------------------|
| **Early (2025-2050)** | 0.09-0.21 | $2.6 | **Low apparent risk** (profitable, weak regulation) |
| **Crisis (Post-2050)** | 2.22-10.0 | **$50.5** | **Catastrophic tail risk** (19× early period, asset becomes massive liability) |

**Financial Implication**: **SSP5-8.5 creates option value illusion** → Low early TIR (0.1-0.2) suggests low financial risk → Encourages continued investment → **Post-2050 shock TIR (2.0-10.0) triggers insolvency** → Asset + company both collapse.

---

### 2.4 TIR Delta Summary (Carbon/GHG)

**Same Asset (Coal Plant, Germany, 1,000 MW), Three Financial Futures**:

| SSP | 2030 TIR | 2050 TIR | Cumulative Contingent Liability ($B) | **Risk Profile** |
|-----|----------|----------|-------------------------------------|-----------------|
| **SSP1-1.9** | 1.20 | ∞ (stranded 2035) | $4.25 | **High early internalization → Orderly exit** (manageable via early divestment) |
| **SSP2-4.5** | 0.67 | 0.90 → ∞ (phased out 2050) | $7.0 | **Gradual internalization → Slow decline** (margin compression, eventual stranding) |
| **SSP5-8.5** | 0.12 | 0.21 → **2.22 (post-2050 shock)** | $2.6 (early) → **$50.5 (crisis)** | **Low early TIR masks catastrophic tail risk** (19× shock multiplier) |

**Portfolio Decision Matrix**:
- **SSP1 Aligned**: Divest coal by 2028 → Avoid $4.25B liability, redeploy to renewables
- **SSP2 Exposure**: Manage gradual decline → $7B liability over 25 years = $280M/year (bearable if planned)
- **SSP5 Trap**: Low early TIR (0.12) encourages holding → **$50.5B contingent liability post-2050 = insolvency**

---

## 3. Water TIR Under SSPs

### 3.1 SSP1-1.9 (Sustainability - Strong Water Governance)

**Asset**: Textile Factory, India (Ganges Basin), 100,000 m³/year baseline

**Impact (IVF - from Playbook 1)**:

| Year | Consumption (m³) | AWARE (Ganges) | IVF ($/m³) | Impact ($M/year) |
|------|-----------------|---------------|-----------|------------------|
| **2025** | 100,000 | 36.2 | $36.20 | $3.62 |
| **2030** | 70,000 (recycling) | 32.0 | $32.00 | $2.24 |
| **2050** | 40,000 (closed-loop) | 24.0 | $24.00 | $0.96 |

**Dependency (from Playbook 2 + Playbook 3)**:

| Year | Consumption (m³) | Municipal Price ($/m³) | Allocation Mandate (%) | Recycling Capex (annualized, $k) | Dependency ($M/year) |
|------|-----------------|----------------------|----------------------|--------------------------------|---------------------|
| **2025** | 100,000 | $8 | 100% (no restriction) | $0 | $0.80 |
| **2030** | 70,000 | $12 (scarcity pricing) | 70% (30% reduction required) | $200 | $1.04 |
| **2050** | 40,000 | $18 (strict allocation) | 40% (60% reduction) | $500 (cumulative systems) | $1.22 |

**TIR Calculation**:

| Year | Dependency ($M) | Impact ($M) | **TIR** | Financial State |
|------|----------------|------------|---------|----------------|
| **2025** | $0.80 | $3.62 | **0.22** | Low internalization (society bears 78% of scarcity cost) |
| **2030** | $1.04 | $2.24 | **0.46** | Moderate internalization (rising prices + compliance capex) |
| **2050** | $1.22 | $0.96 | **1.27** | **Super-internalization** (municipal price + capex > societal scarcity cost) |

**Financial Implication**: TIR rises from 0.22 (2025) to **1.27 (2050)** → Water becomes **fully internalized** → Company pays more than societal damage → Strong incentive to reduce consumption → **Successful circular economy transition**.

---

### 3.2 SSP5-8.5 (Fossil-Fueled - Water Crisis)

**Impact (IVF)**:

| Year | Consumption (m³) | AWARE (Ganges) | IVF ($/m³) | Impact ($M/year) |
|------|-----------------|---------------|-----------|------------------|
| **2025** | 100,000 | 36.2 | $36.20 | $3.62 |
| **2030** | 130,000 (expansion) | 45.0 (worsening scarcity) | $45.00 | $5.85 |
| **2050** | 180,000 (continued growth) | 75.0 (severe stress) | $75.00 | $13.50 |

**Dependency (Early Period 2025-2050)**:

| Year | Consumption (m³) | Municipal Price ($/m³) | Allocation Mandate | Dependency ($M/year) |
|------|-----------------|----------------------|-------------------|---------------------|
| **2025** | 100,000 | $5 (subsidized) | None | $0.50 |
| **2030** | 130,000 | $7 (minimal increase) | Weak (10% reduction, unenforced) | $0.91 |
| **2050** | 180,000 | $12 (crisis emerging, but still subsidized) | Weak | $2.16 |

**TIR (Early Period)**:

| Year | Dependency ($M) | Impact ($M) | **TIR** | Financial State |
|------|----------------|------------|---------|----------------|
| **2025** | $0.50 | $3.62 | **0.14** | Very low internalization (86% externalized, subsidized water) |
| **2030** | $0.91 | $5.85 | **0.16** | Still low (84% externalized) |
| **2050** | $2.16 | $13.50 | **0.16** | Low (84% externalized, growing absolute risk) |

**Dependency (Crisis Period, Post-2050)**:

| Year | Consumption (m³) | Crisis Municipal Price ($/m³) | Emergency Rationing | Dependency ($M/year) | Physical Constraint |
|------|-----------------|------------------------------|-------------------|---------------------|-------------------|
| **2055** | 180,000 (demand) | **$50** (crisis pricing, 4× jump) | **-60%** (emergency allocation cuts, factory can only get 72,000 m³) | $3.6 (water cost) + **$8M** (lost production) | **Severe** |

**TIR (Crisis)**:
```
Dependency (2055): $3.6M (water) + $8M (lost production due to rationing) = $11.6M
Impact (2055): 72,000 m³ × $100/m³ (AWARE=100, basin collapse) = $7.2M

TIR = $11.6M / $7.2M = 1.61

BUT: This is operational collapse. Factory cannot function with 60% water cut.
Effective TIR → ∞ (asset becomes unviable)
```

**Contingent Liability (SSP5-8.5)**:
```
Early Period (2025-2050): $0.50M + $0.91M×5 + $2.16M×15 ≈ $37M (manageable)
Crisis Period (Post-2050): Asset closure (cannot operate with rationing)
Stranded capital: $50M (factory value written off)
Total Contingent Liability: $87M
```

**TIR Delta Summary (Water)**:

| SSP | 2050 TIR | Contingent Liability ($M) | **Risk Profile** |
|-----|----------|--------------------------|-----------------|
| **SSP1-1.9** | 1.27 | $30 (capex for circular systems, manageable) | **High internalization → Proactive adaptation** (successful) |
| **SSP5-8.5** | 0.16 → **∞ (post-2050 rationing)** | $37 (early) → $87 (crisis, asset stranded) | **Low early TIR → Catastrophic tail risk** (operational collapse) |

---

## 4. Land Use TIR Under SSPs

### 4.1 SSP1-1.9 (Sustainability - EUDR Strict Enforcement)

**Asset**: Agribusiness (Brazil, Soy), 10,000 ha planned expansion (5,000 ha Cerrado, 5,000 ha degraded pasture)

**Impact (IVF - from Playbook 1)**:
```
Cerrado: $180,000/ha (2025) → $220,000/ha (2030, carbon pricing + biodiversity premium)
Degraded Pasture: $40,000/ha (2025) → $50,000/ha (2030)

Total Impact (if expansion proceeds):
- 2025: 5,000 × $180k + 5,000 × $40k = $1.1B
- 2030: 5,000 × $220k + 5,000 × $50k = $1.35B
```

**Dependency (EUDR Enforcement)**:
```
Scenario A (Expansion): Convert 10,000 ha post-2020
- Market access to EU: LOST (100% exclusion, EUDR Article 3)
- EU revenue: $50M/year (40% of total revenue)
- Dependency = $50M/year × 10 years (planning horizon) = $500M NPV

Scenario B (No Expansion, Intensification):
- Investment in yield improvement: $30M (precision ag, genetics)
- No market access loss
- Dependency = $30M (capex, one-time)
```

**TIR Calculation**:
```
Scenario A (Expansion):
TIR = $500M (market access loss) / $1.35B (ecosystem impact)
    = 0.37 (37% internalization via market exclusion)

BUT: This is NPV of revenue loss. Including ecosystem impact:
Total cost to firm = $500M (revenue loss) + $1.35B (ecosystem damage, if internalized via restoration mandate)
Effective TIR → 1.37 (137% if restoration required)

Scenario B (Intensification):
TIR = $30M (capex) / $0 (no new impact)
    = Undefined (no ecosystem damage, pure investment)
```

**Financial Decision**: **Scenario B dominates** → Avoid $1.85B total cost (revenue loss + ecosystem damage) by investing $30M in intensification → **NPV = +$1.82B** (vs. expansion).

**TIR Insight**: EUDR creates **binary TIR** → Expansion = TIR → ∞ (market exclusion is infinite internalization of revenue risk) → **Zero tolerance for post-2020 conversion**.

---

### 4.2 SSP5-8.5 (Fossil-Fueled - Weak EUDR, Then Amazon Tipping Point)

**Impact (IVF)**:
```
Cerrado (SSP5-8.5, delayed internalization):
- 2025: $110,000/ha (low carbon price, weak biodiversity regulation)
- 2030-2050: $110,000/ha (stagnant, no enforcement)
- Post-2050 (Amazon tipping point, 2055): $500,000/ha (crisis pricing, criminal penalties)
```

**Dependency (Early Period, 2025-2050)**:
```
Weak EUDR enforcement (lobbying delays, loopholes):
- EU market access: Partial loss (50% of EU revenue at risk, 50% evades via re-labeling)
- Dependency = $25M/year (50% of $50M EU revenue)
TIR = $25M×10 / $1.1B = 0.23 (23% internalization, expansion appears viable)
```

**Dependency (Crisis Period, Post-2050)**:
```
Amazon tipping point (15-20% deforestation triggers savannization) → Emergency UN resolution:
- Historical deforestation criminalized
- Restoration mandates: 10,000 ha × $100,000/ha = $1B (forced restoration)
- Criminal penalties: $500M (executives prosecuted)
- Asset seizures: $200M (land confiscated)

Total Dependency (Crisis): $1.7B
Impact (Crisis pricing): 10,000 ha × $500,000/ha = $5B

TIR = $1.7B / $5B = 0.34

BUT: Adding cumulative early period revenue losses:
Total Dependency = $250M (early) + $1.7B (crisis) = $1.95B
Total Impact = $1.1B (early) + $5B (crisis) = $6.1B

Cumulative TIR = $1.95B / $6.1B = 0.32
```

**TIR Delta Summary (Land Use)**:

| SSP | Early TIR | Crisis TIR | Contingent Liability ($B) | **Risk Profile** |
|-----|-----------|-----------|--------------------------|-----------------|
| **SSP1-1.9** | ∞ (EUDR market exclusion) | N/A (no expansion happens) | $0 (avoided via intensification) | **Binary risk → Zero tolerance** (expansion blocked) |
| **SSP5-8.5** | 0.23 (weak enforcement) | 0.32 (crisis, retroactive) | $0.25 (early) → **$1.95 (crisis)** | **Low early TIR → 8× crisis multiplier** |

---

## 5. Physical Risk TIR Under SSPs

### 5.1 SSP1-1.9 (Sustainability - Moderate Physical Risk, High Adaptation)

**Asset**: Coastal Real Estate Portfolio ($500M value), 10 properties

**Impact (IVF - Physical Damage)**:
```
Sea level rise (2050): +0.5m
Storm surge increase: 100-year flood → 50-year flood

Societal damage (coastal infrastructure, ecosystems):
- Baseline (2025): $50M/year (1% annual flood probability × $5B regional exposure)
- 2050 (SSP1): $60M/year (2% probability × $3B, adaptation reduces exposure)
```

**Dependency (Adaptation + Residual Risk)**:
```
Adaptation investments (2025-2050):
- Sea walls, green infrastructure: $100M (portfolio-wide)
- Annualized: $5M/year

Residual flood risk (2050, post-adaptation):
- Portfolio exposure: $500M
- Annual probability: 2% (despite adaptation, frequency increases)
- Expected loss: $500M × 2% = $10M/year

Total Dependency (2050): $5M (adaptation) + $10M (residual risk) = $15M/year
```

**TIR Calculation (2050)**:
```
TIR = $15M (dependency) / $60M (societal damage)
    = 0.25 (25% internalization)
```

**Interpretation**: Portfolio bears 25% of regional coastal flood risk → Society bears 75% (public infrastructure damage, ecosystem loss) → **Moderate financial risk**, but manageable with adaptation.

---

### 5.2 SSP5-8.5 (Fossil-Fueled - Extreme Physical Risk, Adaptation Overwhelmed)

**Impact (IVF)**:
```
Sea level rise (2050): +1.0m
Storm surge: 100-year flood → 10-year flood (2050) → Annual event (2070+)

Societal damage:
- 2050: $300M/year (10% probability × $3B, higher damage per event)
- 2070: $1B/year (systemic, infrastructure collapse)
```

**Dependency (2050)**:
```
Adaptation investments:
- $100M (same as SSP1, but insufficient for SSP5 risk)
- Annualized: $5M/year

Residual flood risk (2050):
- Portfolio exposure: $500M
- Annual probability: 10% (adaptation overwhelmed)
- Expected loss: $500M × 10% = $50M/year

Total Dependency (2050): $5M + $50M = $55M/year
```

**TIR (2050)**:
```
TIR = $55M / $300M = 0.18 (18% internalization)
```

**BUT Post-2070 (Catastrophic Period)**:
```
Insurance market withdrawal (2050-2060):
- Coastal properties become UNINSURABLE
- No insurance = no mortgages = forced sales

Portfolio value collapse: $500M → $50M (90% write-down)
Annual flood (2070): $50M remaining value × 100% probability = $50M/year
+ Cumulative losses (no insurance): $50M/year × 20 years (2050-2070) = $1B

Total Contingent Liability (Post-2050): $1.45B (vs. $500M baseline)

TIR (2070): $1.45B / $20B (regional systemic collapse) = 0.07 (7% internalization, but in absolute terms, asset total loss)
```

**TIR Delta Summary (Physical Risk)**:

| SSP | 2050 TIR | 2070+ TIR | Contingent Liability ($M) | **Risk Profile** |
|-----|----------|-----------|--------------------------|-----------------|
| **SSP1-1.9** | 0.25 | 0.30 (stable, adaptation works) | $15×25 = $375 (manageable) | **Low-moderate risk** (adaptation successful, portfolio viable) |
| **SSP5-8.5** | 0.18 | 0.07 (low %, but asset total loss) | $55×25 + $1,450 = **$2,825** | **Catastrophic tail risk** (asset value destroyed, uninsurable) |

---

## 6. Portfolio-Level Contingent Liability Under SSPs

### 6.1 Framework

**Aggregated Contingent Liability**:
```
Portfolio_Contingent_Liability[SSP] = Σ (Asset_Dependency[SSP] × Attribution_Share × Time_Horizon × Internalization_Probability[SSP])

Where:
- Asset_Dependency: From Playbooks 2-3 (exposure × VF)
- Attribution_Share: From Playbook 5 (equity %, debt %)
- Time_Horizon: Investment horizon (10-30 years)
- Internalization_Probability: SSP1 = 0.8-0.9, SSP2 = 0.5-0.7, SSP5 (early) = 0.2-0.3, SSP5 (crisis) = 0.7-0.9
```

---

### 6.2 Example: Diversified Portfolio ($10B AUM)

**Portfolio Composition**:
1. **Coal Power** (5% allocation = $500M)
2. **Oil & Gas** (10% = $1,000M)
3. **Coastal Real Estate** (15% = $1,500M)
4. **Agriculture** (Soy, Brazil, 5% = $500M)
5. **Steel** (BF-BOF, 5% = $500M)
6. **Renewables** (20% = $2,000M)
7. **IT Services** (40% = $4,000M)

**Contingent Liability by SSP (10-Year Horizon)**:

| Asset Class | Allocation ($M) | SSP1-1.9 Liability ($M) | SSP2-4.5 Liability ($M) | SSP5-8.5 (Early) Liability ($M) | SSP5-8.5 (Crisis, Post-2050) Liability ($M) |
|-------------|----------------|----------------------|----------------------|-------------------------------|------------------------------------------|
| **Coal Power** | $500 | $425 (stranded 2035) | $350 (gradual phase-out) | $130 (low carbon cost) | **$2,525** (crisis shutdown, retroactive tax) |
| **Oil & Gas** | $1,000 | $600 (partial stranding) | $500 (margin compression) | $200 | **$3,000** |
| **Coastal Real Estate** | $1,500 | $188 (adaptation costs) | $375 (moderate risk) | $412 (low adaptation) | **$2,825** (uninsurable) |
| **Agriculture (Soy)** | $500 | $0 (EUDR blocks expansion) | $150 (partial enforcement) | $125 (weak EUDR) | **$975** (Amazon tipping point) |
| **Steel (BF-BOF)** | $500 | $270 (high carbon price) | $210 (moderate) | $75 | **$450** |
| **Renewables** | $2,000 | -$400 (opportunity) | -$200 | -$100 | -$100 |
| **IT Services** | $4,000 | $200 (Scope 3, minimal) | $150 | $80 | $200 |
| **TOTAL** | **$10,000** | **$1,283** | **$1,535** | **$922** | **$9,875** |

**Portfolio Contingent Liability as % of AUM**:

| SSP | 10-Year Contingent Liability ($M) | **% of AUM** | Risk Characterization |
|-----|----------------------------------|-------------|----------------------|
| **SSP1-1.9** | $1,283 | **12.8%** | **High early internalization** (orderly transition, manageable if proactive) |
| **SSP2-4.5** | $1,535 | **15.4%** | **Moderate risk** (slow escalation, gradual portfolio rebalancing needed) |
| **SSP5-8.5 (Early)** | $922 | **9.2%** | **Low apparent risk** (weak regulation, appears safe) |
| **SSP5-8.5 (Crisis)** | **$9,875** | **98.8%** | **CATASTROPHIC TAIL RISK** (near-total portfolio loss, insolvency) |

---

### 6.3 Strategic Implications

**Portfolio Decisions Under Uncertainty**:

**Scenario 1: Align to SSP1-1.9 (Proactive Transition)**:
- **Action**: Divest coal, oil/gas, coastal real estate, increase renewables to 50%
- **Contingent Liability (2030-2040)**: $1.3B → $400M (70% reduction)
- **Opportunity**: Renewables allocation generates -$800M (revenue opportunity)
- **Net Financial Impact**: +$400M (vs. SSP1 baseline)

**Scenario 2: Hold Current Portfolio (Bet on SSP2-4.5)**:
- **Contingent Liability**: $1.5B (10-year)
- **Risk**: If SSP5-8.5 materializes → $9.9B loss (6.6× worse)
- **Bet**: 50% SSP2, 30% SSP1, 20% SSP5 probability-weighted = $1.5B×0.5 + $1.3B×0.3 + $9.9B×0.2 = **$3.1B expected loss** (31% of AUM)

**Scenario 3: Ignore Risk (Assume SSP5-8.5 Early Period Persists)**:
- **Contingent Liability**: $922M (appears lowest risk)
- **Tail Risk**: 20% probability of crisis → $9.9B × 0.2 = **$2.0B expected loss**
- **Risk**: Catastrophic if tipping points cross (10-20% probability by 2050)

**Optimal Strategy (Risk-Adjusted)**:
- **Minimize worst-case**: Align to SSP1-1.9 → Cap downside at $400M
- **Maximize upside**: Renewable allocation captures green transition opportunity
- **Avoid SSP5 Tail**: Even 10% probability of $9.9B loss = $1B expected loss → Unacceptable

---

## 7. Financial Metrics Under SSPs

### 7.1 Cost of Capital Adjustment by SSP

**Framework**:
```
Adjusted_WACC[SSP] = Base_WACC + Climate_Risk_Premium[SSP]

Where:
Climate_Risk_Premium = f(TIR[SSP], Sector_Vulnerability, Transition_Plan_Quality)
```

**Example: Coal Power Company**:

| SSP | Base WACC | TIR | Climate Risk Premium | **Adjusted WACC** | Financial Viability |
|-----|-----------|-----|---------------------|-------------------|-------------------|
| **SSP1-1.9** | 8% | 1.5 (2030) | +7% (high stranding risk) | **15%** | Unviable (cannot achieve 15% IRR with carbon costs) |
| **SSP2-4.5** | 8% | 0.7 (2030) | +3% (moderate risk) | **11%** | Marginal (tight margins, gradual decline) |
| **SSP5-8.5 (Early)** | 8% | 0.12 (2030) | +1% (low apparent risk) | **9%** | Viable (low carbon costs, profitable) |
| **SSP5-8.5 (Crisis)** | 8% | 2.22 (2055) | **+25%** (extreme tail risk) | **33%** | **Total collapse** (infinite cost of capital, bankruptcy) |

**Renewable Energy Company**:

| SSP | Base WACC | TIR | Climate Risk Premium | **Adjusted WACC** | Financial Viability |
|-----|-----------|-----|---------------------|-------------------|-------------------|
| **SSP1-1.9** | 7% | -2.0 (opportunity) | -2% (green premium discount) | **5%** | Highly viable (low cost of capital, strong demand) |
| **SSP2-4.5** | 7% | -1.2 | -1% | **6%** | Viable |
| **SSP5-8.5 (Early)** | 7% | -0.8 | 0% (limited green market) | **7%** | Baseline viable |

**Key Insight**: TIR-adjusted WACC **steers capital allocation** → High TIR assets (coal, SSP1) face prohibitive cost of capital → Low/negative TIR assets (renewables, SSP1) access cheap capital → **Market mechanism enforces transition**.

---

### 7.2 NPV Adjustments Under SSPs

**Framework**:
```
NPV_Adjusted[SSP] = Σ (Cash_Flows[t, SSP] - Dependency[t, SSP]) / (1 + WACC[SSP])^t

Where:
- Cash_Flows: Baseline operating cash flows (before climate costs)
- Dependency: Climate-related costs (carbon, water, adaptation, stranding)
- WACC: SSP-adjusted discount rate
```

**Example: Coal Plant (Germany, $500M Initial Investment, 2025-2055 Planning Horizon)**:

**SSP1-1.9**:
```
Baseline CF (no climate costs): $100M/year (2025-2035)
Dependency: -$788M/year (carbon) → -$657M (2030) → $0 (stranded 2035)
Stranded capital: -$250M (2035)
WACC: 15%

NPV = [($100M - $788M)/(1.15)^1] + ... + [-$250M/(1.15)^10]
    = -$688M/(1.15) + ... -$250M/(1.15)^10
    ≈ -$3.2B (deeply negative, immediate write-down required)
```

**SSP5-8.5 (Early Period, 2025-2050)**:
```
Baseline CF: $100M/year
Dependency: -$47M (2025) → -$144M (2050)
WACC: 9%

NPV (Early Period, ignoring post-2050) = Σ ($100M - $Dependency) / (1.09)^t
    ≈ +$800M (appears profitable!)
```

**SSP5-8.5 (Including Post-2050 Crisis)**:
```
Post-2050 Dependency: -$6,000M/year (2055, crisis)
Retroactive liability: -$48B (lump sum, 2055)
WACC (crisis): 33%

NPV (Full Horizon, 2025-2055) = $800M (early) - [$48B / (1.33)^30]
    = $800M - $5.8B
    = -$5.0B (catastrophic loss)
```

**NPV Comparison**:

| SSP | NPV ($M) | **Decision** |
|-----|---------|------------|
| **SSP1-1.9** | -$3,200 | **Divest immediately** (orderly exit, minimize loss) |
| **SSP2-4.5** | -$1,500 | **Phase out gradually** (manage decline) |
| **SSP5-8.5 (Excluding Crisis)** | +$800 | Appears viable (TRAP!) |
| **SSP5-8.5 (Including Crisis)** | **-$5,000** | **Catastrophic** (insolvency if held to 2055) |

**Key Insight**: SSP5-8.5 creates **severe selection bias** → Ignoring tail risk (post-2050 crisis) makes asset appear profitable (+$800M) → Including tail risk shows true value (-$5.0B) → **Option value illusion**.

---

### 7.3 Stress Testing Framework (TCFD / ISSB Compliance)

**Required Stress Tests**:
1. **Baseline** (SSP2-4.5, 50% probability)
2. **Orderly Transition** (SSP1-1.9, 30% probability)
3. **Disorderly Transition** (SSP5-8.5, 20% probability - including crisis)

**Stress Test Outputs** (Portfolio-Level):

| Metric | Baseline (SSP2) | Orderly (SSP1) | Disorderly (SSP5) | **Worst-Case (SSP5 Crisis)** |
|--------|----------------|---------------|------------------|------------------------------|
| **Portfolio TIR** | 0.45 | 0.85 | 0.22 (early) → 2.80 (crisis) | 2.80 |
| **Contingent Liability ($B)** | $1.5 | $1.3 | $0.9 (early) → **$9.9 (crisis)** | **$9.9** |
| **% of AUM** | 15% | 13% | 9% → **99%** | **99%** |
| **WACC (Weighted Avg)** | 9.5% | 11% | 8.5% (early) → **28% (crisis)** | **28%** |
| **Portfolio NPV Adjustment** | -$1.2B | -$1.0B | -$0.7B (early) → **-$8.5B (crisis)** | **-$8.5B** |

**Risk Appetite Threshold**: Portfolio contingent liability must not exceed **20% of AUM** in any stress scenario.

**Current Status**:
- SSP2 (15%), SSP1 (13%) → **PASS**
- SSP5 Crisis (99%) → **FAIL**

**Board Action Required**:
- **Immediate divestment** of coal, coastal real estate, deforestation-linked agriculture
- **Reallocation** to renewables, IT services (negative/low TIR)
- **Target**: Reduce SSP5 crisis contingent liability from 99% to <20% of AUM

---

## 8. Key Takeaways: TIR Under SSPs

### 8.1 Carbon/GHG TIR Evolution

| SSP | 2030 TIR | 2050 TIR | Cumulative Contingent Liability | Key Financial Risk |
|-----|----------|----------|-------------------------------|-------------------|
| **SSP1-1.9** | 1.20 | ∞ (stranded) | $4.25B (coal plant) | **High early internalization → Orderly exit required** |
| **SSP2-4.5** | 0.67 | 0.90 | $7.0B | **Gradual margin compression → Slow decline** |
| **SSP5-8.5** | 0.12 | 0.21 → **2.22 (crisis)** | $2.6B → **$50.5B** | **Option value illusion → Catastrophic tail risk (19× multiplier)** |

---

### 8.2 Water TIR Evolution

| SSP | 2050 TIR | Contingent Liability | Key Financial Risk |
|-----|----------|---------------------|-------------------|
| **SSP1-1.9** | 1.27 (super-internalized) | $30M (capex, manageable) | **Successful circular economy transition** |
| **SSP5-8.5** | 0.16 → ∞ (rationing) | $37M → $87M (asset stranded) | **Operational collapse (water crisis)** |

---

### 8.3 Land Use TIR Evolution

| SSP | TIR | Contingent Liability | Key Financial Risk |
|-----|-----|---------------------|-------------------|
| **SSP1-1.9** | ∞ (EUDR market exclusion) | $0 (expansion blocked) | **Binary risk → Zero tolerance for deforestation** |
| **SSP5-8.5** | 0.23 → 0.32 (crisis) | $0.25B → **$1.95B** | **Low early TIR → 8× crisis multiplier (Amazon tipping point)** |

---

### 8.4 Physical Risk TIR Evolution

| SSP | 2050 TIR | 2070+ TIR | Contingent Liability | Key Financial Risk |
|-----|----------|-----------|---------------------|-------------------|
| **SSP1-1.9** | 0.25 | 0.30 (stable) | $375M (manageable) | **Adaptation successful** |
| **SSP5-8.5** | 0.18 | 0.07 (asset total loss) | $1,375M → **$2,825M** | **Uninsurable → Forced abandonment** |

---

### 8.5 Portfolio Risk Implications

**Diversified Portfolio ($10B AUM)**:

| SSP | Contingent Liability | % of AUM | **Risk Profile** |
|-----|---------------------|----------|-----------------|
| **SSP1-1.9** | $1.3B | 13% | **Orderly transition** (manageable with proactive divestment) |
| **SSP2-4.5** | $1.5B | 15% | **Slow escalation** (gradual rebalancing required) |
| **SSP5-8.5 (Early)** | $0.9B | 9% | **LOW APPARENT RISK** (mask for catastrophic tail) |
| **SSP5-8.5 (Crisis)** | **$9.9B** | **99%** | **INSOLVENCY** (near-total portfolio loss) |

**Universal Insight**: **SSP5-8.5 creates option value illusion** (low early TIR) → Encourages inaction → **Catastrophic tail risk post-2050** (10-50× impact multipliers) → **Rational strategy: Align to SSP1-1.9, cap downside, capture green opportunity**.

---

## 9. Implementation Guidance

### 9.1 Data Requirements for SSP-Specific TIR

**Minimum**:
- Scenario selection (SSP1-1.9, SSP2-4.5, SSP5-8.5)
- Carbon price projections by scenario (from NGFS, IEA)
- Water/land/physical risk projections (from IPCC, TNFD)
- Attribution shares (from Playbook 5)

**Preferred**:
- Asset-specific transition plans (CCS, water recycling, adaptation)
- Jurisdictional enforcement projections (EUDR, carbon pricing by region)
- Contingent liability modeling (tail risk, crisis scenarios)
- Probabilistic scenario weighting (30% SSP1, 50% SSP2, 20% SSP5)

---

### 9.2 TIR Calculation Workflow

1. **Baseline TIR (SSP2-4.5)**: Use current policy trajectories
2. **Stress TIR (SSP1-1.9)**: Apply aggressive policy assumptions (high carbon price, strict EUDR)
3. **Tail Risk TIR (SSP5-8.5)**: Model both early period (low TIR) AND post-2050 crisis (extreme TIR)
4. **Probability-Weighted TIR**: Combine scenarios with probability weights
5. **Portfolio Aggregation**: Use Playbook 5 attribution to aggregate asset-level TIRs

---

### 9.3 Governance (Link to Playbook 4)

**TIR Approval**:
- **Asset-Level TIR**: Approved by CFO, CRO
- **Portfolio-Level TIR**: Reviewed by Board Risk Committee
- **Stress Testing**: Annual (baseline), Triennial (full SSP suite)

**Audit Trail**:
- Document scenario assumptions (carbon price paths, policy timelines)
- Version control (update as IPCC/NGFS scenarios evolve)
- Third-party assurance (for TCFD/ISSB disclosures)

---

### 9.4 Integration with Financial Reporting

**Balance Sheet**:
- **Provisions**: Contingent liabilities (if TIR-based probability > 50%)
- **Impairments**: Stranded asset write-downs (SSP1/SSP2 scenarios)

**Income Statement**:
- **Operating Expenses**: Carbon costs, water fees (internalized dependency)
- **Exceptional Items**: SSP5 crisis provisions (tail risk)

**Notes Disclosure** (IFRS S2, ESRS E1)**:
- Scenario-based TIR analysis (qualitative + quantitative tables)
- Contingent liability range (SSP1: $1.3B, SSP2: $1.5B, SSP5: $0.9-$9.9B)
- Sensitivity analysis: ±$50/tonne carbon price impact on TIR and earnings

---

**Document Version**: 2.1 (SSP Scenario-Specific TIR)
**Last Updated**: 2026-01-04
**Section Added**: PART H (SSP Scenario-Specific TIR & Financial Risk Evolution)

---

## References

**Finance & Valuation**:
- **TCFD** (2023). *Guidance on Metrics, Targets, and Transition Plans*.
- **ISSB** (2023). *IFRS S2 Climate-related Disclosures*.
- **PRI** (2021). *Inevitable Policy Response: Financial Impacts*.

**Dependency Frameworks**:
- **ENCORE** (2024). *Natural Capital Finance Alliance*. https://encore.naturalcapital.finance
- **TNFD** (2023). *LEAP Guidance - Dependencies Assessment*.

**Academic**:
- Caldecott, B. et al. (2016). *Stranded Assets: A Climate Risk Challenge*. Oxford.
- Carney, M. (2015). "Breaking the tragedy of the horizon." Bank of England.

---

## Document Navigation

**Previous**: [Playbook 5 — Portfolio Attribution](PLAYBOOK_5_PORTFOLIO_ATTRIBUTION.md)
**Next**: [Playbook 7 — Strategy & Transition Planning](PLAYBOOK_7_STRATEGY_TRANSITION_PLANNING.md)

**Related**:
- [Playbook 1 — Impact Value Factors](PLAYBOOK_1_IMPACT_VALUE_FACTORS.md)
- [Playbook 2 — Exposure Factors](PLAYBOOK_2_EXPOSURE_FACTORS.md)
- [Playbook 3 — Vulnerability Factors & Scenarios](PLAYBOOK_3_VULNERABILITY_SCENARIOS.md)

---

**Document Version**: 2.0
**Last Updated**: 2026-01-03

**Author**: Dimitrij Euler (https://github.com/d1mitrij/t_factors)
