# Playbook 1 — Impact Value Factors (IVF)

**Version**: 2.0 (Integrated Framework)
**Last Updated**: 2026-01-03
**License**: CC BY 4.0

---

## Framework Alignment

| Framework | Scope | Coverage |
|-----------|-------|----------|
| **TCFD / ISSB** | Metrics & Targets; Financial effects | ✓ Quantified impact values |
| **TNFD** | Impacts on nature | ✓ Environmental damage costs |
| **SDGs** | Outcome-level contributions | ✓ Social impact valuation |
| **COSO ERM** | Performance measurement | ✓ Decision-useful metrics |

---

## Executive Summary

### Focus

**Value of impact at the source (independent of ownership)**

### Core Question

> *What is the value of an impact occurring in a given place, sector, and time?*

### Purpose

Establish standardized, decision-useful values per unit of impact. Impact Value Factors (IVFs) monetize environmental and social externalities to enable:
- Comparable impact measurement across assets and portfolios
- Integration of non-financial impacts into risk and strategy
- Evidence-based decision-making for sustainability transitions

### Critical Principle

**No attribution occurs in Playbook 1.** Values exist independently of assets, investors, or portfolios.

Impact valuation answers "what is the damage/benefit per unit?" Attribution (Playbook 5) answers "who accounts for it?"

---

## Information Logic

### Backward-Looking (Historical)

**Single Source of Truth** - Observed impacts with one definitive value

- **Data Source**: Historical observed coefficients
- **Temporal Coverage**: 2014-2030 (annual observations)
- **Uncertainty**: Quantified and disclosed (±% ranges)
- **Use Cases**:
  - Historical impact reporting
  - Baseline establishment
  - Regulatory compliance (ESRS, CSRD)

**Key Principle**: Backward-looking values reflect realized conditions (GDP, population, technology, regulations as observed).

---

### Forward-Looking (Scenario-Based)

**Multiple Truths** - Scenario-dependent value evolution

- **Data Source**: Scenario pathways (defined in Playbook 3)
- **Temporal Coverage**: 2030-2100 (scenario projections)
- **Scenarios**: Multiple alternative futures (e.g., SSP1-1.9, SSP2-4.5, SSP5-8.5)
- **Use Cases**:
  - Climate transition planning
  - Strategic scenario analysis
  - Forward-looking risk assessment (TCFD, TNFD)

**Key Principle**: Forward-looking values depend on policy assumptions, technological trajectories, and socioeconomic pathways (governed by Playbook 3).

---

## Integrated Impact Value Factor Framework

### Coverage: 13 Impact Indicators

**Environmental (8)**:
1. GHG Emissions (Climate Change)
2. Air Pollution (Health & Biodiversity)
3. Water Consumption (Depletion)
4. Water Pollution (Quality Degradation)
5. Land Use (Ecosystem Service Loss)
6. Waste Management
7. Biodiversity Loss (Emerging)
8. Soil Quality (Emerging)

**Social (5)**:
9. Occupational Health & Safety (OHS)
10. Training & Human Capital
11. Living Wage (Research)
12. Forced Labour (Planned)
13. Child Labour (Planned)

---

## Value Factor Structure

### General Formula

```
Impact Value = Physical Quantity × Impact Value Factor (IVF)

Where:
IVF[Impact, Country, Sector, Year] = f(
    Base_Methodology,
    Geographic_Adjustment,
    Temporal_Adjustment,
    Scenario_Pathway (for forward-looking only)
)
```

### Units

All IVFs expressed as **damage cost** (negative externality) or **benefit** (positive externality) in monetary terms:

- **Environmental**: USD per physical unit (e.g., $/kg CO₂, $/m³ water, $/ha land)
- **Social**: USD per incident, hour, or person (e.g., $/injury, $/training hour, $/worker below living wage)

### Geographic Granularity

- **Countries**: 188 ISO3 codes (primary)
- **Sectors**: 88 NACE Rev. 2 classifications (secondary)
- **Temporal**: Annual (2014-2030), Milestone years (2050, 2100)

---

## PART A: ENVIRONMENTAL IMPACT VALUE FACTORS

---

## 1. GHG Emissions (Climate Change)

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | 🌫️ Atmosphere |
| **ESRS** | E1 (Climate Change) |
| **Maturity** | ✅ Well Established |
| **Physical Unit** | kg CO₂e |
| **IVF Unit** | {year}USD/kg CO₂e |
| **Sign** | Negative (damage) |

### Methodology

**Social Cost of Carbon (SCC)** - DICE Model (Nordhaus)

```
IVF_GHG[Year] = SCC[Year] / 1000

Where:
- SCC: Social Cost of Carbon (USD per tonne CO₂e)
- /1000: Conversion from tonne to kg
```

### Value Transfer Logic

**Global Uniform** - No geographic adjustment

**Rationale**: Climate change is a global commons problem. CO₂ emitted anywhere has identical marginal climate damage globally.

### Backward-Looking Values (2014-2030)

| Year | SCC ($/tonne CO₂e) | IVF ($/kg CO₂e) | Source |
|------|-------------------|----------------|---------|
| 2020 | $51 | $0.051 | Nordhaus DICE 2023 |
| 2025 | $76 | $0.076 | Nordhaus DICE 2023 |
| 2030 | $103 | $0.103 | Nordhaus DICE 2023 |

**Uncertainty**: ±50-200% (depends on discount rate, climate sensitivity, damage functions)

### Forward-Looking Values (Scenario-Based, 2030-2100)

| Scenario | 2030 | 2050 | 2100 | Pathway Description |
|----------|------|------|------|---------------------|
| **SSP1-1.9** (1.5°C) | $120/t | $200/t | $350/t | Aggressive mitigation, carbon pricing |
| **SSP2-4.5** (2.5°C) | $90/t | $150/t | $250/t | Moderate mitigation |
| **SSP5-8.5** (4-5°C) | $60/t | $100/t | $180/t | High emissions, limited action |

**Scenario Dependency**: Forward-looking SCC reflects:
- Carbon pricing policy
- Technological breakthroughs (CCS, renewables)
- Climate feedback loops (tipping points increase SCC in high-emission scenarios)

### Data Sources

- **Backward**: Nordhaus DICE model (Nobel Prize-winning framework)
- **Forward**: IPCC AR6 integrated assessment models (IAMs)
- **File**: `value-factors/input_data/20241022_scc_nordhaus.h5`

### References

- Nordhaus, W. (2017). "Revisiting the social cost of carbon." PNAS.
- IPCC AR6 WGIII (2022). Chapter 3: Mitigation pathways.

---

## 2. Air Pollution (Health & Biodiversity Damage)

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | 🌫️ Atmosphere |
| **ESRS** | E2 (Pollution) |
| **Maturity** | ✅ Solid |
| **Physical Unit** | kg pollutant |
| **IVF Unit** | {year}USD/kg |
| **Pollutants** | PM2.5, PM10, NOx, SOx, NMVOC, NH3 |
| **Sign** | Negative (damage) |

### Methodology

**UBA Damage Cost Approach** (German Federal Environment Agency)

**Four Damage Categories**:
1. **Health** (80-95% of total): Mortality (VSL) + Morbidity (medical costs, lost productivity)
2. **Biodiversity**: Acidification, eutrophication (WTP for conservation)
3. **Crops**: Ozone damage to agricultural yields
4. **Materials**: Corrosion and degradation

### Value Transfer Logic

**Income Elasticity of VSL** (Value of Statistical Life)

```
IVF_AirPol[Country, Pollutant] = Base_IVF[Pollutant] × (GDP_per_capita[Country] / GDP_per_capita[Reference])^0.8

Where:
- Base_IVF: Germany reference (2016 EUR/kg, converted to USD)
- Exponent 0.8: Income elasticity of WTP for health risk reduction
```

**Rationale**: Wealthier countries value health damages more in monetary terms (revealed preference, meta-analysis of 200+ VSL studies).

### Backward-Looking Values (2025USD/kg)

| Pollutant | Germany (Ref) | USA | India | China | Brazil |
|-----------|--------------|-----|-------|-------|--------|
| **PM2.5** | $22.00 | $25.30 | $4.62 | $7.85 | $8.90 |
| **PM10** | $16.50 | $19.00 | $3.47 | $5.88 | $6.68 |
| **NOx** | $12.50 | $14.38 | $2.63 | $4.46 | $5.06 |
| **SOx** | $11.00 | $12.65 | $2.31 | $3.92 | $4.45 |
| **NMVOC** | $1.10 | $1.27 | $0.23 | $0.39 | $0.44 |
| **NH3** | $8.50 | $9.78 | $1.79 | $3.03 | $3.44 |

**Uncertainty**: ±30-75% (VSL uncertainty dominates)

### Forward-Looking Values (Scenario-Based)

**Drivers**:
- **GDP growth** → Higher VSL in wealthier scenarios
- **Population aging** → Higher mortality impacts (older populations more vulnerable)
- **Air quality regulations** → May increase implicit VSL (stricter standards reveal higher WTP)

**Example (PM2.5 in India)**:
- 2025: $4.62/kg (current GDP per capita)
- 2050 (SSP1 - sustainable growth): $12.50/kg (GDP triplets, VSL rises)
- 2050 (SSP5 - fossil-fueled growth): $15.00/kg (higher GDP but worse air quality → higher marginal damage)

### Data Sources

- **Methodology**: UBA (2020) damage cost update
- **File**: `t_factors/datasource/uba_air_pollution_costs.csv`
- **Geographic adjustment**: World Bank GDP per capita (PPP)

### Datasource Workflow

1. Edit: `t_factors/datasource/uba_air_pollution_costs.csv`
2. Modify: `Total_eur_per_tonne` column
3. Run: `python3 008_241001_prepare_AirPollution_my.py`

See: `DATASOURCE_WORKFLOW_GUIDE.md` Section 1

### References

- UBA (2020). Methodological Convention 3.1 for the Determination of Environmental Costs.
- WHO (2021). Global Air Quality Guidelines.

---

## 3. Water Consumption (Depletion)

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | 🌊 Freshwater |
| **ESRS** | E3 (Water & Marine) |
| **Maturity** | ⚠️ Experimental |
| **Physical Unit** | m³ (blue water) |
| **IVF Unit** | {year}USD/m³ |
| **Sign** | Negative (damage) |

### Methodology

**Dual Damage Approach** (Economic + Health) × **AWARE Scaling**

**Components**:
1. **Economic Damage**: Shadow price of water depletion (agricultural productivity loss, ecosystem services)
2. **Health Damage**: DALY-based health impacts from water scarcity

**Formula**:
```
IVF_WaterCon[Country] = (Economic_Base + Health_Base) × AWARE[Country]

Where:
- Economic_Base: $0.50/m³ (from Ligthart & van Harmelen 2019)
- Health_Base: $0.50/m³ (from Debarre et al. 2022, DALY × VSL-Y)
- AWARE[Country]: Water scarcity characterization factor (0.1 to 100+)
```

### Value Transfer Logic

**AWARE Scaling** (WULCA Consensus Model)

**AWARE Factor**: Ratio of (Available Water minus Human + Ecosystem Demands) to World Average

- **Water-abundant**: AWARE = 0.1-1 (e.g., Norway, Canada)
- **Moderate scarcity**: AWARE = 1-10 (e.g., USA, Germany)
- **High scarcity**: AWARE = 10-50 (e.g., India, Spain)
- **Extreme scarcity**: AWARE = 50-100+ (e.g., Middle East, North Africa)

**Rationale**: Marginal damage of water consumption scales with local scarcity. 1 m³ consumed in India (AWARE=36) causes 36× more damage than 1 m³ in Germany (AWARE=2.31).

### Backward-Looking Values (2025USD/m³)

| Country | AWARE Factor | Economic | Health | **Total IVF** |
|---------|-------------|----------|--------|---------------|
| **USA** | 33.7 | $16.85 | $16.85 | **$33.70** |
| **Germany** | 2.31 | $1.16 | $1.16 | **$2.31** |
| **India** | 36.2 | $18.10 | $18.10 | **$36.20** |
| **Brazil** | 5.58 | $2.79 | $2.79 | **$5.58** |
| **Egypt** | 78.5 | $39.25 | $39.25 | **$78.50** |

**Uncertainty**: ±100-200% (AWARE itself ±50%, base damages ±100%)

**Note**: Current implementation uses simplified base shadow price of $1.00/m³ (see `value_factor_utils.py` line 480). Full methodology implementation pending.

### Forward-Looking Values (Scenario-Based)

**Drivers**:
- **Climate change** → AWARE increases in already-scarce regions (reduced precipitation, higher evaporation)
- **Population growth** → More demand in water-stressed basins
- **Water efficiency** → May reduce AWARE (desalination, recycling, efficiency gains)

**Example (India)**:
- 2025: $36.20/m³ (AWARE=36.2)
- 2050 (SSP2-4.5): $52.00/m³ (AWARE rises to 52 due to Himalayan glacier melt + monsoon variability)
- 2050 (SSP1-1.9 + water mgmt): $28.00/m³ (AWARE drops to 28 via efficiency, demand management)

### Data Sources

- **AWARE Factors**: WULCA (Water Use in LCA) database, Boulay et al. (2018)
- **File**: `t_factors/datasource/AWARE20_Countries_and_Regions.xlsx`
- **Sheet**: `CFs_unspecified` (unspecified water use)

### Datasource Workflow

1. Edit: `t_factors/datasource/AWARE20_Countries_and_Regions.xlsx`
2. Sheet: `CFs_unspecified`
3. Modify: `Annual` column (AWARE factors by `GLAM_ISO3` country code)
4. Run: `python3 009_241001_prepare_WaterConsumption_my.py`

See: `DATASOURCE_WORKFLOW_GUIDE.md` Section 2, `06_PLAYBOOK_WATER_CONSUMPTION.md`

### References

- Boulay, A.-M. et al. (2018). "The WULCA consensus characterization model for water scarcity footprints." *Intl J LCA*.
- Ligthart, T. & van Harmelen, T. (2019). Environmental Prices Handbook 2017.
- Debarre, A. et al. (2022). Health Impacts of Water Scarcity (DALY approach).

---

## 4. Water Pollution (Quality Degradation)

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | 🌊 Freshwater |
| **ESRS** | E2 (Pollution), E3 (Water) |
| **Maturity** | ⚠️ Experimental |
| **Physical Unit** | kg pollutant |
| **IVF Unit** | {year}USD/kg |
| **Pollutants** | N, P (nutrients); As, Cd, Cr, Cu, Hg, Ni, Pb, Zn, Sb (heavy metals) |
| **Sign** | Negative (damage) |

### Methodology

**Dual Framework**:
1. **Nutrients (N, P)**: Steen (2020) EPS - Eutrophication damage
2. **Heavy Metals**: USEtox 2.13 - Ecotoxicity + Human toxicity

**Formula**:
```
IVF_WaterPol[Country, Pollutant] = Base_Damage × PPP_Adjustment × AWARE_Scaling

Where:
- Base_Damage: Sweden (nutrients) or Global (metals)
- PPP_Adjustment: (PPP[Country] / PPP[Reference])
- AWARE_Scaling: Scarcity amplifies pollution damage
```

### Value Transfer Logic

**PPP Adjustment** - Purchasing Power Parity

**Rationale**: WTP for clean water scales with purchasing power. Eutrophication and toxicity damages are context-dependent (denser populations, stricter water quality standards in wealthier countries).

**AWARE Amplification**: Water pollution is more damaging in water-scarce regions (less dilution, higher downstream dependency).

### Backward-Looking Values (2023USD/kg, Selected Examples)

**Nutrients**:
| Pollutant | Sweden (Base) | USA | Germany | India | Bangladesh |
|-----------|--------------|-----|---------|-------|------------|
| **Nitrogen** | $25.0 | $18.0 | $22.5 | $8.5 | $5.2 |
| **Phosphorus** | $136.0 | $136.0 | $145.0 | $48.0 | $28.0 |

**Heavy Metals**:
| Pollutant | Global (USEtox) | USA | Germany | India | Bangladesh |
|-----------|----------------|-----|---------|-------|------------|
| **Chromium** | $50.0 | $50.0 | $52.0 | $17.5 | $10.2 |
| **Mercury** | $300.0 | $300.0 | $315.0 | $105.0 | $61.0 |
| **Lead** | $150.0 | $150.0 | $157.5 | $52.5 | $30.6 |

**Uncertainty**:
- Nutrients: ±100-200% (eutrophication damage highly context-dependent)
- Metals: ±75-150% (USEtox model uncertainty + PPP transfer)

### Forward-Looking Values (Scenario-Based)

**Drivers**:
- **Water quality regulations** → Higher implicit valuation (EU WFD, US Clean Water Act stringency increases)
- **Population density in basins** → More people affected downstream
- **AWARE evolution** → Climate-driven scarcity amplifies pollution damage

**Example (Phosphorus in India)**:
- 2025: $48/kg (PPP=0.35, AWARE dampened)
- 2050 (SSP1 - sustainable dev): $85/kg (stricter standards, higher PPP, improved enforcement)
- 2050 (SSP3 - fragmentation): $35/kg (weak governance, lower PPP growth)

### Data Sources

- **Nutrients**: Steen (2020) EPS 2015d
- **Metals**: USEtox 2.13 (UNEP/SETAC consensus model)
- **File**: `value-factors/input_data/230324_WaterPollution_Mon_Coef_Final_DC.xlsx`

### References

- Steen, B. (2020). EPS 2015d - Environmental Priority Strategies.
- USEtox (2023). Version 2.13 - Consensus model for toxicity characterization.

See: `07_PLAYBOOK_WATER_POLLUTION.md`

---

## 5. Land Use (Ecosystem Service Loss)

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | 🌍 Land (CORE Priority) |
| **ESRS** | E4 (Biodiversity & Ecosystems) |
| **Maturity** | ✅ Solid |
| **Physical Unit** | hectare (ha) |
| **IVF Unit** | {year}USD/ha |
| **Land Types** | Primary forest, secondary forest, wetland, grassland, other |
| **Sign** | Negative (damage from conversion) |

### Methodology

**EPS 2015 + LANCA** (Ecosystem Priority Strategies + Land Use Indicator)

**Four Ecosystem Services**:
1. **Working Capacity** ($417k/ha): Labor productivity loss from urban heat island effect
2. **Water Treatment** ($1,333k/ha): Natural filtration replacement cost
3. **Crop Growth** ($15k/ha): Pollination, pest control, soil protection
4. **Biodiversity** ($667k/ha): WTP for species habitat conservation

**Formula**:
```
IVF_LandUse[Country, LandType] = Base_EPS × LANCA_Climate × LANCA_Soil × LANCA_Condition × PPP^0.5

Where:
- Base_EPS: Sweden reference (sum of 4 services)
- LANCA_Climate: 0.6× (boreal) to 1.5× (tropical)
- LANCA_Soil: 0.7× (poor) to 1.2× (fertile)
- LANCA_Condition: 0.3× (degraded) to 1.0× (primary)
- PPP^0.5: Ecosystem service WTP scales with income (exponent 0.5, lower than VSL 0.8)
```

### Value Transfer Logic

**LANCA Geographic Customization**

**Rationale**: Ecosystem service values vary by:
- **Climate**: Tropical ecosystems have higher biodiversity, productivity, and service flows
- **Soil**: Fertile soils provide more crop growth support
- **Condition**: Primary forests provide full services; degraded land provides minimal

**Example**:
- **Indonesia (Tropical Primary Forest)**: Base ($800k) × 1.5 (tropical) × 1.2 (fertile) × 1.0 (primary) × 0.77 (PPP) = **$1,108k/ha**
- **Russia (Boreal Secondary Forest)**: Base ($800k) × 0.6 (boreal) × 1.0 (average soil) × 0.6 (secondary) × 0.95 (PPP) = **$274k/ha**

### Backward-Looking Values (2025USD/ha, Total)

| Country | Primary Forest | Secondary Forest | Wetland | Grassland |
|---------|---------------|------------------|---------|-----------|
| **Indonesia** | $3,765,000 | $1,200,000 | $1,500,000 | $300,000 |
| **Brazil** | $1,800,000 | $700,000 | $900,000 | $200,000 |
| **USA** | $850,000 | $400,000 | $750,000 | $150,000 |
| **Germany** | $1,200,000 | $550,000 | $950,000 | $180,000 |
| **Russia** | $450,000 | $270,000 | $350,000 | $70,000 |

**Uncertainty**: ±70-150% (WTP for biodiversity ±200%, other components ±50-100%)

### Forward-Looking Values (Scenario-Based)

**Drivers**:
- **EUDR / deforestation regulations** → Implicit value increases (revealed via offset markets, carbon credits)
- **Biodiversity credit markets** → Explicit valuation of conservation
- **PPP growth** → Wealthier countries value nature more

**Example (Brazil Amazon Primary Forest)**:
- 2025: $1.8M/ha
- 2050 (SSP1 - nature-positive): $3.5M/ha (biodiversity markets mature, EUDR enforcement, high PPP)
- 2050 (SSP5 - development focus): $1.2M/ha (weak enforcement, lower biodiversity priority)

### Data Sources

- **Methodology**: EPS 2015d (Steen, Chalmers University) + LANCA (Fraunhofer Institute)
- **File**: `value-factors/input_data/230317_Landuse_update_ZK.xlsx`

### References

- Steen, B. (2015). EPS 2015d - Environmental Priority Strategies.
- Beck, T. et al. (2010). LANCA - Land Use Indicator Value Calculation.

See: `08_PLAYBOOK_LAND_USE.md`

---

## 6. Waste Management

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | 🌍 Land (pollution) |
| **ESRS** | E2 (Pollution), E5 (Circular Economy) |
| **Maturity** | ✅ Solid |
| **Physical Unit** | kg waste |
| **IVF Unit** | {year}USD/kg |
| **Waste Types** | Hazardous, non-hazardous, specific categories |
| **Sign** | Negative (management cost + externality) |

### Methodology

**Life Cycle Costing + Externality**

**Components**:
1. **Management Cost**: Collection, transport, treatment, disposal (gate fees, labor, infrastructure)
2. **Environmental Externality**: GHG from landfill/incineration, leachate pollution, land occupation

**Formula**:
```
IVF_Waste[Country, WasteType] = Management_Cost + Environmental_Externality

Where:
- Management_Cost: Market price of waste treatment ($/kg)
- Environmental_Externality: GHG, leachate, land use (monetized via other IVFs)
```

### Value Transfer Logic

**Country-Specific Management Costs** - Varies by:
- Labor costs (waste collection, sorting)
- Infrastructure availability (landfills, incinerators, recycling facilities)
- Regulatory stringency (EU Landfill Directive, Extended Producer Responsibility)

### Backward-Looking Values (2020USD/kg, Examples)

| Waste Type | Germany | USA | India | Brazil |
|-----------|---------|-----|-------|--------|
| **Hazardous** | $2.50 | $1.80 | $0.60 | $0.90 |
| **Non-hazardous (landfill)** | $0.15 | $0.10 | $0.02 | $0.04 |
| **Recyclable (cost)** | -$0.05 | -$0.03 | $0.01 | $0.01 |

**Uncertainty**: ±30-50% (gate fees vary regionally)

### Data Sources

- **File**: `value-factors/input_data/220509_Waste figures merged_update.xlsx`

See: `03_PLAYBOOK_WASTE_MANAGEMENT.md` (legacy)

---

## 7. Biodiversity Loss (Emerging)

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | 🌍 Land + 🌊 Freshwater |
| **ESRS** | E4 (Biodiversity & Ecosystems) |
| **Maturity** | 🔬 Emerging (Research) |
| **Physical Unit** | PDF·m²·year (Potentially Disappeared Fraction) |
| **IVF Unit** | {year}USD / (PDF·m²·year) |
| **Sign** | Negative (damage) |

### Methodology (Proposed)

**Species Habitat Loss + Extinction Risk**

**Three Components**:
1. **Habitat Quality**: ReCiPe midpoint (PDF·m²·year)
2. **Species Threat**: IUCN Red List weighting (CR > EN > VU)
3. **WTP for Conservation**: Stated preference + revealed preference (protected area budgets)

**Status**: Research phase - Methodology under development. Current land use IVF (Section 5) includes biodiversity component but not species-specific extinction risk.

See: `00_INDICATORS_SELECTION_TNFD_ALIGNED.md` Section 4.1

---

## 8. Soil Quality (Emerging)

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | 🌍 Land |
| **ESRS** | E4 (Biodiversity & Ecosystems) |
| **Maturity** | 🔬 Emerging (Research) |
| **Physical Unit** | tonne topsoil lost |
| **IVF Unit** | {year}USD/tonne |
| **Sign** | Negative (damage) |

### Methodology (Proposed)

**Erosion + Degradation Replacement Cost**

**Components**:
1. **Erosion**: Agricultural productivity loss (crop yield reduction)
2. **Carbon Loss**: Soil organic carbon to atmosphere (GHG impact)
3. **Water Holding Capacity**: Reduced infiltration, increased runoff (flood risk)

**Status**: Research phase - Overlaps with Land Use and GHG IVFs. Standalone indicator requires non-double-counting methodology.

---

## PART B: SOCIAL IMPACT VALUE FACTORS

---

## 9. Occupational Health & Safety (OHS)

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | N/A (Social) |
| **ESRS** | S1 (Own Workforce) |
| **Maturity** | ✅ Well Established |
| **Physical Unit** | Incidents (fatal, non-fatal injuries, illnesses) |
| **IVF Unit** | {year}USD/incident |
| **Sign** | Negative (damage to worker well-being) |

### Methodology

**DALY Approach** (Disability-Adjusted Life Years)

**Formula**:
```
IVF_OHS[IncidentType] = DALY × VSL-Y

Where:
- DALY: Years of Life Lost (YLL) + Years Lived with Disability (YLD)
- VSL-Y: Value of Statistical Life Year ($200,000, global uniform)
```

**Incident Types**:
1. **Fatal**: YLL = (Life Expectancy - Age at Death) × Discount Factor
2. **Non-Fatal Injury**: YLD = Duration × Disability Weight × Discount Factor
3. **Occupational Illness**: YLD (chronic, often multi-year)

### Value Transfer Logic

**Global Uniform VSL-Y** - No geographic adjustment

**Rationale**: Equal value of human life principle (ethical foundation). All workers globally have equal intrinsic worth.

**Note**: This differs from air pollution VSL (income-elastic) due to normative choice: WTP for own health risk varies by income (revealed preference), but societal valuation of worker safety should not (ethical imperative).

### Backward-Looking Values (2025USD/incident, Global)

| Incident Type | DALYs | VSL-Y ($200k) | **Total IVF** |
|--------------|-------|---------------|---------------|
| **Fatal** (age 45) | 22 | $200,000 | **$4,400,000** |
| **Permanent Disability** | 10 | $200,000 | **$2,000,000** |
| **Lost Time Injury** (6 months, DW=0.25) | 0.125 | $200,000 | **$25,000** |
| **Minor Injury** (1 month, DW=0.1) | 0.008 | $200,000 | **$1,600** |
| **Occupational Cancer** (chronic, 15 years, DW=0.3) | 3.6 | $200,000 | **$720,000** |

**Uncertainty**: ±25-40% (DALY weights ±20%, VSL-Y ±30%)

### Forward-Looking Values (Scenario-Based)

**Drivers**:
- **Regulatory stringency** → Implicit VSL-Y may rise (OSHA fines, liability caps)
- **Automation** → Some hazardous jobs eliminated (incident rates drop)
- **Aging workforce** → Higher YLL per fatal (older workers, but fewer working years remaining)

**No geographic variation in base VSL-Y** (ethical principle maintained), but incident *rates* vary by country (exposure differs, governed by Playbook 2).

### Data Sources

- **DALY Weights**: WHO Global Burden of Disease 2019
- **VSL-Y**: Meta-analysis of WTP studies (Viscusi & Aldy 2003, updated)
- **File**: `value-factors/input_data/220616_monetization_value_per_incident_NEW.xlsx`

### References

- WHO (2020). Global Burden of Disease Study 2019.
- Viscusi, W. K. & Aldy, J. E. (2003). "The Value of a Statistical Life: A Critical Review." *J Risk Uncertainty*.

See: `04_PLAYBOOK_OHS_OCCUPATIONAL_HEALTH_SAFETY.md`

---

## 10. Training & Human Capital

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | N/A (Social) |
| **ESRS** | S1 (Own Workforce) |
| **Maturity** | ⚠️ Average |
| **Physical Unit** | Hours of training |
| **IVF Unit** | {year}USD/hour |
| **Sign** | Positive (benefit to worker and economy) |

### Methodology

**Returns to Education** (Mincer Equation)

**Formula**:
```
IVF_Training[Country, Sector] = (Wage × Return_Rate) / Working_Hours_per_Year

Where:
- Wage: Average sectoral wage ($/year)
- Return_Rate: Marginal return to 1 year of education (typically 8-12%)
- Working_Hours: 2000 hours/year (full-time equivalent)
```

**Conversion**: 1 training hour ≈ 1/2000 of a year of education
→ IVF per hour = (Wage × Return_Rate) / 2000

### Value Transfer Logic

**Country × Sector Specific** - Varies by:
- **Wage Level**: Higher wages → higher returns to training
- **Return to Education**: Developing countries often higher marginal returns (skills scarcity)
- **Sector**: High-skill sectors (IT, finance) have higher training returns than low-skill (agriculture, construction)

### Backward-Looking Values (2025USD/hour, Examples)

| Country | Manufacturing | IT/Services | Agriculture | Average |
|---------|--------------|-------------|-------------|---------|
| **USA** | $35 | $85 | $15 | $45 |
| **Germany** | $40 | $90 | $18 | $50 |
| **India** | $8 | $25 | $3 | $12 |
| **Brazil** | $12 | $35 | $5 | $17 |

**Uncertainty**: ±40-60% (return to education estimates vary widely by study)

### Forward-Looking Values (Scenario-Based)

**Drivers**:
- **Automation** → Returns to high-skill training increase (complementarity with technology)
- **Skills mismatch** → Returns rise if training addresses gaps
- **Lifelong learning policies** → Explicit valuation via subsidies, tax credits

### Data Sources

- **Return to Education**: World Bank EdStats, Psacharopoulos & Patrinos (2018)
- **Sectoral Wages**: ILO Labour Statistics
- **File**: `value-factors/input_data/220529_training_value_per_hour_bysector.h5`

### References

- Psacharopoulos, G. & Patrinos, H. A. (2018). "Returns to Investment in Education: A Decennial Review." *World Bank Policy Research*.

See: `05_PLAYBOOK_SOCIAL_INDICATORS_COMPREHENSIVE.md` Section 1

---

## 11. Living Wage (Research)

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | N/A (Social) |
| **ESRS** | S1 (Own Workforce) |
| **Maturity** | 🔬 Experimental (Research) |
| **Physical Unit** | Worker-years below living wage |
| **IVF Unit** | {year}USD/worker-year |
| **Sign** | Negative (damage to worker well-being and economic stability) |

### Methodology (Proposed)

**Three Alternative Approaches** (Under Evaluation):

**Option 1: Health & Utility Impact (HUI)**
```
IVF_LivingWage = Income_Gap × Health_Penalty × Utility_Loss

Where:
- Income_Gap: (Living Wage - Actual Wage)
- Health_Penalty: Increased morbidity/mortality (malnutrition, stress) → DALY × VSL-Y
- Utility_Loss: Reduced quality of life (housing, education) → WTP studies
```

**Option 2: Opportunity Cost**
```
IVF_LivingWage = Income_Gap × Time_Horizon × Discount_Factor

Where:
- Time_Horizon: Expected years until wage reaches living wage (5-20 years)
- Present value of cumulative income shortfall
```

**Option 3: Worker Utility Index (WUI)**
```
IVF_LivingWage = Worker_Utility_Loss × Monetary_Equivalent

Where:
- Worker_Utility: Composite of health, housing, nutrition, education access
- Monetary_Equivalent: Shadow price from stated preference surveys
```

### Preliminary Values (Research Estimates, 2025USD)

| Country | Income Gap ($/year) | HUI Approach | Opportunity Cost (10y) | WUI Approach |
|---------|-------------------|-------------|---------------------|--------------|
| **Bangladesh** | $2,500 | $18,000 | $15,000 | $12,000 |
| **India** | $3,200 | $22,000 | $19,000 | $16,000 |
| **Vietnam** | $2,800 | $20,000 | $17,000 | $14,000 |

**Uncertainty**: ±200-300% (methodology under development, no consensus)

**Status**: Requires pilot studies, stakeholder consultation (worker unions, ILO), ethics review.

### Data Sources (Proposed)

- **Living Wage Benchmarks**: Global Living Wage Coalition, Anker Methodology
- **Health Impacts**: WHO NCD data, nutrition studies
- **Utility Valuation**: Stated preference surveys (to be commissioned)

See: `05_PLAYBOOK_SOCIAL_INDICATORS_COMPREHENSIVE.md` Section 2

---

## 12. Forced Labour (Planned)

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | N/A (Social) |
| **ESRS** | S1 (Own Workforce), S2 (Value Chain) |
| **Maturity** | 📋 Planned (Methodology Development) |
| **Physical Unit** | Worker-years in forced labour |
| **IVF Unit** | {year}USD/worker-year |
| **Sign** | Negative (severe human rights violation) |

### Methodology (Proposed)

**Three-Component Approach**:

1. **Lost Earnings** ($15,000): Wage theft (difference between market wage and forced labour compensation)
2. **Health & Psychological Harm** ($50,000): DALY approach (physical abuse, psychological trauma)
3. **Freedom Deprivation** ($65,000): WTP for liberty (stated preference, legal precedents for wrongful imprisonment)

**Total IVF (preliminary)**: **$130,000 per worker-year**

**Uncertainty**: ±300-500% (no established methodology, highly sensitive ethical assumptions)

**Status**: Requires ethics review, survivor consultation, legal expert input (ILO conventions, ICC framework).

### Data Sources (Proposed)

- **ILO**: Forced Labour Indicators, Global Estimates
- **Legal Precedents**: Compensation for trafficking survivors, wrongful imprisonment
- **DALY**: Physical and psychological trauma weights (to be developed)

See: `05_PLAYBOOK_SOCIAL_INDICATORS_COMPREHENSIVE.md` Section 3

---

## 13. Child Labour (Planned)

### Overview

| Attribute | Value |
|-----------|-------|
| **TNFD Realm** | N/A (Social) |
| **ESRS** | S2 (Value Chain), S4 (Consumers) |
| **Maturity** | 📋 Planned (Methodology Development) |
| **Physical Unit** | Child-years in labour (ages 5-17) |
| **IVF Unit** | {year}USD/child-year |
| **Sign** | Negative (severe human rights violation + development harm) |

### Methodology (Proposed)

**Three-Component Approach**:

1. **Lost Education** ($25,000): Foregone lifetime earnings (returns to education over 40-year career)
2. **Health & Development Harm** ($15,000): Physical harm (growth stunting, injuries) + psychological (PTSD, anxiety)
3. **Childhood Deprivation** ($10,000): Loss of play, socialization, family time (WTP for child well-being)

**Total IVF (preliminary)**: **$50,000 per child-year**

**Uncertainty**: ±300-500% (methodology under development, ethics review required)

**Status**: Requires child rights expert consultation (UNICEF, Save the Children), ethics board approval.

### Data Sources (Proposed)

- **ILO / UNICEF**: Child Labour Global Estimates
- **Education Returns**: Psacharopoulos & Patrinos (2018) - lifetime earnings loss
- **Health Impacts**: WHO, UNICEF child development data

See: `05_PLAYBOOK_SOCIAL_INDICATORS_COMPREHENSIVE.md` Section 4

---

## PART C: IMPLEMENTATION & GOVERNANCE

---

## IVF Matrix Structure

### Dimensions

**MultiIndex DataFrame** (pandas):
```python
Index: (Year, Indicator)
Columns: (Country, Sector)
Values: IVF (monetary units as specified per indicator)
```

### Specifications

- **Years**: 24 total
  - Historical: 2014-2030 (17 annual observations)
  - Future: 2050, 2100 (7 milestone years, scenario-based)
- **Indicators**: 13 (as per this playbook)
- **Countries**: 188 ISO3 codes
- **Sectors**: 88 NACE Rev. 2 classifications

**Matrix Size**: 24 × 13 × 188 × 88 = ~6.5 million cells

**Storage**: HDF5 compressed format (~50 MB per matrix)

See: `09_MATRIX_STRUCTURE_SPECIFICATION.md`

---

## Data Sources & Hierarchy

### Source Hierarchy (Descending Authority)

1. **Tier 1: International Consensus Models**
   - IPCC (GHG), WHO (health), WULCA (water), IUCN (biodiversity)
   - Use directly, no adjustment

2. **Tier 2: National Environmental Agencies**
   - UBA (Germany air), EPA (USA), EEA (Europe)
   - Apply geographic value transfer

3. **Tier 3: Academic Research (Peer-Reviewed)**
   - EPS (Steen), USEtox, LANCA (Fraunhofer)
   - Value transfer with documented assumptions

4. **Tier 4: Proxy/Estimation** (Use only if Tiers 1-3 unavailable)
   - Regional averages, econometric models
   - Flag as "low confidence" in metadata

### Update Frequency

- **Backward-Looking**: Annual updates (as new data becomes available)
- **Forward-Looking**: Scenario refresh every 3-5 years (aligned to IPCC/NGFS cycles)

See: `10_DATABASE_AND_INPUT_FILES_GUIDE.md`

---

## Uncertainty & Quality Assurance

### Uncertainty Quantification

All IVFs must report uncertainty ranges:
- **Low**: ±25-40% (Well-established methodologies, high data quality)
- **Medium**: ±50-100% (Solid methodologies, moderate data gaps)
- **High**: ±100-300% (Experimental, research phase)

### Quality Assurance Checklist

- [ ] Source documented (Tier 1-4 classification)
- [ ] Value transfer logic explained
- [ ] Uncertainty range quantified
- [ ] Geographic/sectoral coverage mapped
- [ ] Scenario dependencies identified (forward-looking only)
- [ ] Peer review completed (Tier 3-4 sources)
- [ ] Version control and change log maintained

---

## Scenario Integration (Forward-Looking)

### Scenario Framework (From Playbook 3)

**Authoritative Scenarios**:
1. **SSP1-1.9**: Sustainability - Green growth, strong climate action
2. **SSP2-4.5**: Middle of the road - Moderate mitigation
3. **SSP3-7.0**: Regional rivalry - Fragmentation, weak action
4. **SSP5-8.5**: Fossil-fueled development - High emissions, tech optimism

### IVF Scenario Adjustment Drivers

| Impact | SSP1-1.9 | SSP2-4.5 | SSP5-8.5 |
|--------|---------|---------|---------|
| **GHG SCC** | High (strong carbon pricing) | Medium | Low (weak policy) |
| **Air Pollution VSL** | High (income growth + clean air) | Medium | Medium (income up, air quality down) |
| **Water AWARE** | Decreasing (efficiency, mgmt) | Stable | Increasing (climate stress) |
| **Land Use WTP** | High (biodiversity markets) | Medium | Low (weak governance) |
| **OHS VSL-Y** | Stable (ethical principle) | Stable | Stable |
| **Training Returns** | High (skills demand) | Medium | Medium |

**Scenario Selection Governance**: See Playbook 3, Section 2

---

## Version Control & Change Management

### Versioning Protocol

**Format**: `IVF_[Indicator]_v[Major].[Minor].[Patch]_[Date].h5`

Example: `IVF_GHG_v2.1.3_20260103.h5`

- **Major**: Methodology change (e.g., SCC model swap: DICE → META)
- **Minor**: Data source update (e.g., AWARE 2.0 → AWARE 2.1)
- **Patch**: Bug fix, unit correction

### Change Log (Example)

| Date | Version | Indicator | Change | Impact |
|------|---------|-----------|--------|--------|
| 2026-01-03 | 2.0.0 | All | Integrated Playbook 1 framework | All IVFs |
| 2025-12-15 | 1.5.1 | Water Consumption | AWARE datasource migration | High |
| 2025-11-20 | 1.5.0 | GHG | Updated SCC to Nordhaus 2025 | Medium |
| 2025-10-10 | 1.4.2 | Air Pollution | UBA 2025 update | Low |

---

## PART D: SSP SCENARIO INTEGRATION & IVF EVOLUTION

---

## 1. SSP Framework Overview (IPCC AR6 Basis)

### 1.1 The Five SSP Narratives

The **Shared Socioeconomic Pathways (SSPs)** provide alternative global development futures that fundamentally shape IVF evolution through:
- **Economic Development**: GDP growth affects VSL, PPP, and willingness-to-pay for environmental protection
- **Governance Quality**: Affects regulatory enforcement, environmental standards, and internalization
- **Social Progress**: Education, inequality, and social cohesion affect vulnerability and adaptive capacity
- **Technology Development**: Innovation rates affect mitigation costs and damage avoidance

**Source**: IPCC AR6 Working Groups I, II, III; IPBES Global Assessment

| SSP | Narrative | Governance | Inequality | Environmental Priority | Climate Outcome |
|-----|-----------|------------|------------|----------------------|-----------------|
| **SSP1** | Sustainability | Strong, global cooperation | Low, converging | High | 1.5-2°C |
| **SSP2** | Middle of the Road | Moderate, uneven | Medium, stable | Medium | 2-3°C |
| **SSP3** | Regional Rivalry | Weak, fragmented | High, diverging | Low | 3-4°C |
| **SSP4** | Inequality | Two-tier (strong/weak) | Very high, stratified | Low for poor, medium for rich | 3-4°C |
| **SSP5** | Fossil-Fueled Development | Strong, technology-focused | Low, but resource-intensive | Initially low, reactive later | 4-5°C |

**T-Factors Focus**: We primarily use **SSP1-1.9**, **SSP2-4.5**, and **SSP5-8.5** as they span the range from ambitious mitigation (1.5°C) to high emissions (4-5°C) scenarios.

---

### 1.2 How SSPs Affect IVF Evolution

**SSP1-1.9 (Sustainability, 1.5°C)**:
- **GHG**: High carbon prices ($150-350/tonne by 2050) → High SCC → High IVF
- **Water**: Strong water governance → Lower scarcity (AWARE decreases) → Lower IVF in managed basins
- **Land**: Halt deforestation, large-scale restoration → High ecosystem value protected → High IVF for conversion
- **Social**: High education investment, strong labor protections → High training value, low OHS risk → Moderate social IVF

**SSP2-4.5 (Middle of the Road, 2.5°C)**:
- **GHG**: Moderate carbon prices ($75-150/tonne by 2050) → Moderate SCC → Moderate IVF
- **Water**: Uneven water management → Mixed scarcity outcomes → Variable IVF
- **Land**: Continued deforestation in some regions, restoration in others → Variable ecosystem IVF
- **Social**: Slow social progress → Moderate improvements in OHS, training → Moderate social IVF

**SSP5-8.5 (Fossil-Fueled Development, 4-5°C)**:
- **GHG**: Low/delayed carbon prices → Low SCC until severe impacts → Initially low, then spiking IVF
- **Water**: Technology-focused water supply → Scarcity persists (AWARE stable/increases) → High IVF in stressed basins
- **Land**: Continued expansion for resources → High deforestation, degradation → Very high ecosystem loss IVF
- **Social**: Economic growth but resource extraction risks → High OHS risk in extractive sectors → High social IVF

---

## 2. Water Indicators Under SSP Scenarios

### 2.1 Water Consumption (AWARE-Scaled IVF)

**Scenario-Driven AWARE Evolution** (Source: IPCC AR6 WGII, SROCC)

#### SSP1-1.9 (Sustainability)

**Global Narrative**:
- Strong water governance, transboundary cooperation
- Demand management, efficiency investments (30-50% reduction by 2050)
- Nature-based solutions (wetland restoration, managed aquifer recharge)
- Climate mitigation limits glacier loss, maintains monsoon stability

**Regional AWARE Trajectories** (2020-2050):

| Basin Example | 2020 AWARE | 2030 | 2050 | Driver |
|--------------|-----------|------|------|--------|
| **Ganges (India)** | 36.2 | 32.0 | 24.0 | Efficient irrigation, reduced groundwater pumping, Himalayan glacier preservation |
| **Colorado (USA)** | 42.5 | 38.0 | 30.0 | Agricultural efficiency, municipal conservation, Colorado River Compact compliance |
| **Murray-Darling (Australia)** | 28.7 | 26.0 | 22.0 | Basin plan enforcement, environmental flows restored |
| **Rhine (Europe)** | 2.31 | 2.10 | 1.90 | Already efficient, minor improvement |

**IVF Water Consumption** (SSP1-1.9, India Ganges Basin example):
- 2030: $1.00/m³ × 32.0 = **$32.00/m³**
- 2050: $1.00/m³ × 24.0 = **$24.00/m³**
- **Interpretation**: Proactive water management reduces scarcity, lowering IVF

---

#### SSP2-4.5 (Middle of the Road)

**Global Narrative**:
- Uneven water governance, some basins manage well, others deteriorate
- Moderate efficiency improvements (15-25% by 2050)
- Limited transboundary cooperation
- Moderate climate impacts (glacier loss ongoing, monsoon variability increases)

**Regional AWARE Trajectories**:

| Basin Example | 2020 AWARE | 2030 | 2050 | Driver |
|--------------|-----------|------|------|--------|
| **Ganges (India)** | 36.2 | 40.0 | 52.0 | Himalayan glacier loss, population growth, uneven management |
| **Colorado (USA)** | 42.5 | 45.0 | 48.0 | Continued depletion, limited demand reduction |
| **Murray-Darling (Australia)** | 28.7 | 30.0 | 32.0 | Weak plan enforcement, drought intensification |
| **Rhine (Europe)** | 2.31 | 2.50 | 2.80 | Slight degradation from climate impacts |

**IVF Water Consumption** (SSP2-4.5, India Ganges Basin):
- 2030: $1.00/m³ × 40.0 = **$40.00/m³**
- 2050: $1.00/m³ × 52.0 = **$52.00/m³**
- **Interpretation**: Moderate governance fails to prevent scarcity increase

---

#### SSP5-8.5 (Fossil-Fueled Development)

**Global Narrative**:
- Technology-focused: Desalination, long-distance transfer, groundwater mining
- High water demand (industrial, energy, cooling)
- Weak basin-level governance, tragedy of the commons
- Severe climate impacts: Glaciers collapse, mega-droughts, precipitation extremes

**Regional AWARE Trajectories**:

| Basin Example | 2020 AWARE | 2030 | 2050 | Driver |
|--------------|-----------|------|------|--------|
| **Ganges (India)** | 36.2 | 50.0 | 75.0 | Himalayan glaciers largely gone, monsoon failure years, massive groundwater depletion |
| **Colorado (USA)** | 42.5 | 55.0 | 80.0 | Lake Mead/Powell collapse, mega-drought, unsustainable |
| **Murray-Darling (Australia)** | 28.7 | 42.0 | 65.0 | Permanent drought state, ecosystem collapse |
| **Rhine (Europe)** | 2.31 | 3.50 | 5.00 | Summer flow reductions, heat waves |

**IVF Water Consumption** (SSP5-8.5, India Ganges Basin):
- 2030: $1.00/m³ × 50.0 = **$50.00/m³**
- 2050: $1.00/m³ × 75.0 = **$75.00/m³**
- **Interpretation**: Technology cannot compensate for climate-driven scarcity; IVF spikes

---

### 2.2 Water Pollution (Eutrophication, Toxicity)

#### SSP-Specific Pollution Trajectories (Source: IPCC AR6 WGII, SRCCL)

**SSP1-1.9**:
- **Agricultural Intensification**: Precision agriculture reduces nutrient runoff by 40-60%
- **Wastewater Treatment**: Universal tertiary treatment in developed countries, 80%+ in developing
- **IVF Trend**: **Decreasing** - Lower pollution loads, stricter PNEC standards
- **2050 IVF Range**: $15-50/kg (down from $10-300/kg baseline) for most regions

**SSP2-4.5**:
- **Mixed Outcomes**: Developed countries improve, developing countries lag
- **Nutrient Runoff**: 20-30% reduction in OECD, stable/increasing elsewhere
- **IVF Trend**: **Stable to slightly increasing** in high-risk regions
- **2050 IVF Range**: $10-200/kg (wide variance)

**SSP5-8.5**:
- **Intensive Agriculture Expansion**: High fertilizer use, limited regulation
- **Industrial Discharge**: Weak enforcement, chemical production growth
- **IVF Trend**: **Increasing** - More hotspots, ecosystem tipping points
- **2050 IVF Range**: $20-400/kg (upper range increases due to irreversible damage)

---

## 3. Land Use Indicators Under SSP Scenarios

### 3.1 Land Use Change (Deforestation, Degradation, Restoration)

**SSP Land Transition Matrices** (Source: IPCC SRCCL, AR6 WGIII, IPBES Global)

#### SSP1-1.9 (Sustainability)

**Global Land Use Change (2020-2050)**:

| Transition | Area (Million ha) | Key Regions | Driver |
|-----------|------------------|-------------|--------|
| **Forest → Cropland** | -50 to -20 | Near-zero in tropics, slight in temperate (managed) | EUDR enforcement, zero-deforestation commitments |
| **Degraded Land → Forest** | +300 to +500 | Tropics, temperate | Large-scale restoration (Bonn Challenge, GBF Target 2) |
| **Cropland → Intensive Cropland** | +150 | All regions | Yield improvement, land sparing |
| **Pasture → Natural Grassland** | +100 | Latin America, Africa | Livestock intensification, rewilding |

**IVF Implications**:
- **Conversion IVF**: Extremely high ($5M-$10M/ha) due to:
  - Strong enforcement (EUDR, TNFD)
  - Biodiversity markets create positive value for conservation
  - Residual conversion only in areas with low ecological value
- **Restoration Benefit**: -$2M to -$5M/ha (negative IVF = benefit from restoring ecosystem services)

**Example (Amazon Primary Forest, SSP1-1.9)**:
- 2020 Conversion IVF: $3.77M/ha
- 2030 Conversion IVF: $8.50M/ha (EUDR premium, biodiversity credits)
- 2050 Conversion IVF: $12.0M/ha (full internalization via nature-positive economy)

---

#### SSP2-4.5 (Middle of the Road)

**Global Land Use Change (2020-2050)**:

| Transition | Area (Million ha) | Key Regions | Driver |
|-----------|------------------|-------------|--------|
| **Forest → Cropland** | +50 to +100 | Tropics (Africa, SE Asia) | Continued agricultural expansion |
| **Forest → Pasture** | +30 to +50 | Amazon, Central Africa | Beef production for export |
| **Degraded Land → Cropland** | +50 | All regions | Some sustainable intensification |
| **Restoration** | +50 to +100 | Targeted programs only | Voluntary initiatives, limited scale |

**IVF Implications**:
- **Conversion IVF**: Moderate increase ($3.5M-$5M/ha for tropical forests)
- Reflects partial internalization (some EUDR-like regulations in EU/USA, weak elsewhere)
- **Regional Divergence**: High IVF in regulated markets (EU), low in non-regulated (Africa, SE Asia)

**Example (Amazon Primary Forest, SSP2-4.5)**:
- 2030 Conversion IVF: $4.20M/ha (EU EUDR premium for EU-bound commodities only)
- 2050 Conversion IVF: $4.80M/ha (slow increase, fragmented governance)

---

#### SSP5-8.5 (Fossil-Fueled Development)

**Global Land Use Change (2020-2050)**:

| Transition | Area (Million ha) | Key Regions | Driver |
|-----------|------------------|-------------|--------|
| **Forest → Cropland** | +200 to +300 | Tropics, boreal | Agricultural expansion, biofuel demand |
| **Forest → Energy Crops** | +100 | Temperate, tropical | BECCS for climate mitigation (late recognition) |
| **Forest → Urban/Industrial** | +50 | All regions | Resource extraction, infrastructure |
| **Restoration** | Near zero | - | No priority, economic growth focus |

**IVF Implications**:
- **Conversion IVF**: Initially low ($2.5M-$3M/ha), spiking late ($6M-$8M/ha by 2050) due to:
  - Delayed recognition of ecosystem collapse
  - Reactive regulations after tipping points crossed
  - Scarcity value spikes (last remaining forests become extremely valuable)
- **Tipping Point Risk**: Amazon dieback, boreal forest-to-grassland transition → Irreversible losses

**Example (Amazon Primary Forest, SSP5-8.5)**:
- 2030 Conversion IVF: $3.00M/ha (weak regulation, high deforestation)
- 2050 Conversion IVF: $7.50M/ha (scarcity premium, late reactive regulations, but much forest already lost)

---

### 3.2 Soil Quality Under SSP Scenarios

**SSP Soil Degradation Trajectories** (Source: IPCC SRCCL)

| SSP | Soil Erosion Trend | Soil Carbon Trend | Soil Biodiversity | IVF Impact |
|-----|-------------------|------------------|------------------|-----------|
| **SSP1-1.9** | **Decreasing** (-30% by 2050) | **Increasing** (+20% via regenerative ag) | Recovering | IVF decreases (less damage to remediate) |
| **SSP2-4.5** | Stable to slight increase | Slight decrease (-5%) | Stable | IVF stable |
| **SSP5-8.5** | **Increasing** (+50% by 2050) | **Decreasing** (-15% to -25%) | Declining | IVF increases (higher remediation costs, irreversible losses) |

**Regional Hotspots (SSP5-8.5)**:
- **Sub-Saharan Africa**: Severe erosion, desertification expansion
- **Central Asia**: Soil salinization from irrigation
- **Amazon (post-deforestation)**: Laterite hardening, irreversible degradation

---

## 4. Social Indicators Under SSP Scenarios

### 4.1 Occupational Health & Safety (OHS)

**SSP-Driven OHS Risk Evolution** (Source: IPCC AR6 WGII, WGIII)

#### SSP1-1.9 (Sustainability)

**Trends**:
- **Automation**: 40-60% of high-risk jobs automated by 2050 (mining, construction)
- **Strong Regulation**: Universal OHS standards (ILO conventions ratified globally)
- **Heat Stress**: Managed via work-hour adjustments, cooling infrastructure
- **Incident Rates**: LTIR decreases from 3.5 to 0.8 per million hours (global average, high-risk sectors)

**IVF Evolution**:
- **Fatality**: Stable to slightly increasing VSL due to GDP growth ($4.5M → $6M per fatality)
- **Injury**: Decreasing frequency × increasing VSL = **Stable to slightly decreasing total IVF**
- **2050 Range**: $2k-$6M/incident (upper range increases, but incidents decrease)

---

#### SSP2-4.5 (Middle of the Road)

**Trends**:
- **Partial Automation**: 20-30% of high-risk jobs automated
- **Uneven Regulation**: Strong in OECD, weak in developing countries
- **Heat Stress**: Increasing (5-15% productivity loss in outdoor work, tropical regions)
- **Incident Rates**: Slight decrease in developed countries (LTIR 2.5), stable/increasing in developing (LTIR 4.0)

**IVF Evolution**:
- **Heat-Related Incidents**: New category (not captured in baseline) → IVF increases
- **Geographic Divergence**: High IVF in unregulated regions, moderate in regulated
- **2050 Range**: $1.6k-$5M/incident

---

#### SSP5-8.5 (Fossil-Fueled Development)

**Trends**:
- **Resource Extraction Boom**: Mining, fossil fuel extraction expand → High OHS exposure
- **Weak Regulation**: Economic growth prioritized over safety
- **Severe Heat Stress**: 20-40% productivity loss in tropical outdoor work; 10-15% in temperate
- **Incident Rates**: Increasing in extractive sectors (LTIR 5.0-7.0)

**IVF Evolution**:
- **Heat Fatalities**: Major new category (outdoor workers in South Asia, Middle East, Sub-Saharan Africa)
- **Extractive Sector Incidents**: High frequency × high VSL = **Very high total IVF**
- **2050 Range**: $1.8k-$8M/incident (upper range expands due to heat fatalities in high-GDP countries)

**Critical Threshold (SSP5-8.5)**:
- By 2050, outdoor work becomes **physiologically impossible** during summer in parts of:
  - Persian Gulf
  - Pakistan/India (wet-bulb >35°C events)
  - Sub-Saharan Sahel

---

### 4.2 Training & Human Capital

**SSP Education Investment Trajectories** (Source: IPCC AR6 WGIII)

| SSP | Education Investment (% GDP) | Literacy Rate 2050 | Technical Skills | IVF Training Value |
|-----|----------------------------|------------------|----------------|------------------|
| **SSP1-1.9** | 6-8% | 99% (universal) | High (green jobs, digital) | **$80-$120/hour** (high returns to education) |
| **SSP2-4.5** | 4-5% | 95% | Medium | **$40-$80/hour** (moderate returns) |
| **SSP5-8.5** | 3-4% | 90% (stagnant) | Low (fossil-focused) | **$20-$50/hour** (low returns, skills mismatch) |

**SSP1-1.9 Training Focus**:
- Green skills (renewable energy, circular economy, nature-based solutions)
- Reskilling for just transition (coal → solar technicians)
- Universal lifelong learning

**SSP5-8.5 Training Focus**:
- Extractive industries (declining long-term value)
- Fossil fuel sector skills (stranded human capital)
- Limited social mobility

---

### 4.3 Living Wage & Income Inequality

**SSP Inequality Trajectories** (Source: IPCC AR6 WGIII, WGII)

| SSP | Gini Coefficient (2050) | Living Wage Gap | IVF Living Wage Deficit |
|-----|----------------------|----------------|----------------------|
| **SSP1-1.9** | 0.30 (converging) | $5k-$8k/worker-year (narrowing) | **$5k-$10k/worker-year** |
| **SSP2-4.5** | 0.38 (stable) | $12k-$18k/worker-year | **$12k-$22k/worker-year** |
| **SSP3-7.0** | 0.52 (diverging) | $18k-$30k/worker-year | **$18k-$35k/worker-year** |
| **SSP5-8.5** | 0.35 (low, but absolute poverty persists) | $8k-$15k/worker-year | **$8k-$18k/worker-year** |

**SSP1-1.9 Mechanisms**:
- Strong minimum wage enforcement globally
- Universal basic income pilots
- Progressive taxation, wealth redistribution

**SSP3-7.0 (Regional Rivalry) - Worst Case**:
- Nationalism, trade barriers
- Within-country inequality explodes
- Living wage gap widens despite regional GDP growth

---

### 4.4 Forced & Child Labour

**SSP Risk Trajectories** (Source: IPBES Global, IPCC AR6 WGII - Limited Coverage)

| SSP | Forced Labour Risk | Child Labour Risk | Enforcement |
|-----|------------------|------------------|-------------|
| **SSP1-1.9** | **Decreasing** | **Decreasing** | Strong (ILO conventions universally enforced) |
| **SSP2-4.5** | Stable | Slight decrease | Moderate (uneven enforcement) |
| **SSP5-8.5** | **Increasing** (extractive sectors) | **Increasing** (informal economy) | Weak (economic growth prioritized) |

**SSP5-8.5 Hotspots (2050)**:
- Cobalt mining (DRC): Forced labour persists
- Rare earth extraction (Myanmar, Africa): Child labour in informal mining
- Palm oil (Indonesia, Malaysia): Exploitative labor conditions

**IVF Implications**:
- SSP1-1.9: IVF decreases as prevalence drops (fewer worker-years affected)
- SSP5-8.5: IVF increases in extractive supply chains critical to fossil-fuel economy

---

## 5. Cross-Indicator SSP Synthesis

### 5.1 The SSP1-1.9 "Virtuous Cycle"

**Mechanism**:
1. Strong climate mitigation → Avoid severe physical impacts
2. Nature-positive policies → Ecosystems recover, water scarcity decreases
3. Just transition → Social progress, education, labor protections improve
4. **Result**: Lower environmental IVFs (less scarcity/damage) + Lower social IVFs (better conditions) = **Lower total impact value**

**Portfolio Implication**: Assets in SSP1-1.9 future face **declining total IVF burden** over time (exception: residual high-IVF activities like fossil fuel conversion face extreme IVF due to scarcity value).

---

### 5.2 The SSP5-8.5 "Vicious Cycle"

**Mechanism**:
1. High emissions → Severe physical impacts (heat, drought, floods)
2. Resource extraction intensifies → Ecosystems collapse, water/land degradation accelerates
3. Weak social protection → Heat stress, extractive labor risks increase
4. **Result**: Spiking environmental IVFs (scarcity cascades) + Spiking social IVFs (heat fatalities, exploitation) = **Exponentially increasing total impact value**

**Portfolio Implication**: Assets in SSP5-8.5 future face **exponentially rising IVF burden**, especially after 2040 when tipping points cascade.

---

### 5.3 SSP2-4.5 "Muddling Through"

**Mechanism**:
- Moderate climate action → Avoid worst impacts, but significant damage occurs
- Uneven policies → Some regions/sectors improve, others degrade
- Slow social progress → Incremental improvements, persistent inequality
- **Result**: Stable to slowly increasing IVFs with **high regional variance**

**Portfolio Implication**: Requires **geographic granularity** - Global averages mask critical local hotspots.

---

## 6. Using SSP-Specific IVFs in T-Factors Framework

### 6.1 Workflow

**Step 1 (Playbook 3)**: Select scenario(s) for analysis
- Mandatory: SSP1-1.9 (best case), SSP2-4.5 (central), SSP5-8.5 (worst case)

**Step 2 (Playbook 1 - This Playbook)**: Apply scenario-specific IVF
- Use forward-looking IVF tables (see Sections 2-4 above)
- Example: Water consumption in Ganges Basin
  - SSP1: $24/m³ (2050)
  - SSP2: $52/m³ (2050)
  - SSP5: $75/m³ (2050)

**Step 3 (Playbook 2)**: Calculate exposure (unchanged by scenario for backward-looking; changes for forward-looking)

**Step 4 (Playbook 3)**: Apply vulnerability factor (VF)
- VF may further adjust for asset-specific mitigation
- Example: If SSP1 assumes 30% water efficiency improvement globally, but asset implements 50%, VF = 0.67 (further reduction)

**Step 5 (Playbook 5)**: Aggregate to portfolio level

**Step 6 (Playbook 6)**: Calculate TIR by scenario
- High-IVF scenarios (SSP5) → Lower TIR (externality less internalized relative to damage)
- Low-IVF scenarios (SSP1) → Higher TIR (strong internalization via policy)

---

### 6.2 Scenario-Specific IVF Matrix Structure

**Enhanced Matrix** (from Section 2.3, now with SSP dimension):

```
IVF[Year, Indicator, Country, Sector, SSP_Scenario]
```

**Example Query**:
```python
IVF[2050, "Water_Consumption", "India", "Agriculture", "SSP5-8.5"]
# Returns: $75.00/m³ (Ganges Basin AWARE = 75)

IVF[2050, "Water_Consumption", "India", "Agriculture", "SSP1-1.9"]
# Returns: $24.00/m³ (Ganges Basin AWARE = 24)
```

**Scenario Delta**:
```
Delta = IVF[SSP5] - IVF[SSP1]
      = $75 - $24
      = $51/m³ (214% increase in SSP5 vs SSP1)
```

**Strategic Interpretation**: Portfolio water risk in India is **highly scenario-dependent**. Aggressive climate action (SSP1) reduces IVF by 68% vs. high emissions (SSP5).

---

## 7. Key Takeaways for Playbook 1 Users

1. **Forward-Looking IVFs Are Scenario-Dependent**: Always specify SSP when reporting forward-looking IVF.

2. **Water & Land Show Highest Scenario Sensitivity**: IVF ranges can differ by 200-300% between SSP1 and SSP5.

3. **Social IVFs Driven by Governance**: SSP1 (strong governance) vs SSP5 (weak governance) creates divergent OHS, living wage trajectories.

4. **Tipping Points in SSP5-8.5**: IVFs spike exponentially post-2040 as ecosystems collapse and physical limits hit (e.g., wet-bulb >35°C).

5. **Regional Granularity Essential**: SSP2-4.5 "average" masks extreme variance - Always drill down to basin/country level.

6. **SSP1-1.9 Is Not "Zero Impact"**: Even best-case scenario has residual environmental/social IVFs - No scenario achieves zero harm.

---

## References & Further Reading

### Frameworks

- **TCFD** (2023). *Implementing the Recommendations of the Task Force on Climate-related Financial Disclosures*.
- **TNFD** (2023). *Recommendations of the Taskforce on Nature-related Financial Disclosures*. https://tnfd.global
- **ISSB** (2023). *IFRS S1 & S2 - Sustainability Disclosure Standards*.
- **EFRAG** (2023). *ESRS 1-2, E1-E5, S1-S4 - European Sustainability Reporting Standards*.

### Methodologies

- **Nordhaus, W.** (2017). "Revisiting the social cost of carbon." *PNAS*, 114(7), 1518-1523.
- **UBA** (2020). *Methodological Convention 3.1 for the Determination of Environmental Costs*.
- **Boulay, A.-M. et al.** (2018). "The WULCA consensus characterization model for water scarcity footprints." *Intl J LCA*, 23(11), 2393-2410.
- **Steen, B.** (2015). *EPS 2015d - The International EPD System's default LCIA methodology*. Chalmers University.
- **USEtox** (2023). *Version 2.13 - Consensus model for toxicity characterization*. UNEP/SETAC.
- **WHO** (2020). *Global Burden of Disease Study 2019*.

---

## Document Navigation

**Next**: [Playbook 2 — Exposure Factors (EF)](PLAYBOOK_2_EXPOSURE_FACTORS.md)

**Related**:
- [Playbook 3 — Vulnerability Factors & Scenarios](PLAYBOOK_3_VULNERABILITY_SCENARIOS.md)
- [Playbook 4 — Governance & Risk Management](PLAYBOOK_4_GOVERNANCE_RISK_MANAGEMENT.md)
- [Playbook 5 — Portfolio Attribution](PLAYBOOK_5_PORTFOLIO_ATTRIBUTION.md)

**Technical Appendices**:
- [Matrix Structure Specification](09_MATRIX_STRUCTURE_SPECIFICATION.md)
- [Database & Input Files Guide](10_DATABASE_AND_INPUT_FILES_GUIDE.md)
- [Input File Standardization Guide](11_INPUT_FILE_STANDARDIZATION_GUIDE.md)
- [Datasource Workflow Guide](DATASOURCE_WORKFLOW_GUIDE.md)

**Legacy Indicator Playbooks** (Archived):
- [01_PLAYBOOK_GHG_EMISSIONS.md](01_PLAYBOOK_GHG_EMISSIONS.md)
- [02_PLAYBOOK_AIR_POLLUTION.md](02_PLAYBOOK_AIR_POLLUTION.md)
- [06_PLAYBOOK_WATER_CONSUMPTION.md](06_PLAYBOOK_WATER_CONSUMPTION.md)
- [07_PLAYBOOK_WATER_POLLUTION.md](07_PLAYBOOK_WATER_POLLUTION.md)
- [08_PLAYBOOK_LAND_USE.md](08_PLAYBOOK_LAND_USE.md)
- [04_PLAYBOOK_OHS_OCCUPATIONAL_HEALTH_SAFETY.md](04_PLAYBOOK_OHS_OCCUPATIONAL_HEALTH_SAFETY.md)
- [05_PLAYBOOK_SOCIAL_INDICATORS_COMPREHENSIVE.md](05_PLAYBOOK_SOCIAL_INDICATORS_COMPREHENSIVE.md)

---

**Document Version**: 2.0 (Integrated Framework)
**Last Updated**: 2026-01-03
**Next Review**: 2026-07-03

**Contact**: dimitrij.euler@greenings.org
**Repository**: https://github.com/Greenings/transitionvaluation
