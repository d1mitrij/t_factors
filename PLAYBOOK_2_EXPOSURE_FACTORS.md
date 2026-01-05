# Playbook 2 — Exposure Factors (EF)

**Version**: 2.1 (Enhanced Data Sources)
**Last Updated**: 2026-01-04
**License**: Apache 2.0

---

## Framework Alignment

| Framework | Scope | Coverage |
|-----------|-------|----------|
| **TCFD / ISSB** | Exposure to sustainability-related risks | ✓ Asset-level impact exposure |
| **TNFD** | Dependencies and location-specific exposure | ✓ Geographic and sectoral mapping |
| **SDGs** | Geographic and sectoral localization | ✓ Impact pathway tracking |
| **COSO ERM** | Risk identification and assessment | ✓ Exposure quantification |

---

## Executive Summary

### Focus

**Where and how assets are exposed to valued impacts**

### Core Question

> *Which assets are exposed to which impacts, in which regions and sectors?*

### Purpose

Translate impact values (from Playbook 1) into **asset-level exposure**. Exposure Factors (EFs) map:
- **What** the asset does (production, emissions, employment)
- **Where** it operates (country, region, watershed, biome)
- **Which** impact pathways it activates (GHG, water, land, OHS, etc.)

### Critical Principle

**No attribution occurs in Playbook 2**. Exposure describes *where impact risk sits* at the asset level, not *who claims it* at the portfolio level (that's Playbook 5).

---

## Information Logic

### Backward-Looking (Historical)

**Single Source of Truth** - Observed activities and dependencies

- **Data Source**: Historical asset-level data (emissions reports, production records, employee data)
- **Temporal Coverage**: 2014-2030 (annual observations)
- **Use Cases**:
  - Historical impact footprinting
  - Baseline establishment for ESRS/TNFD
  - Regulatory compliance reporting

**Key Principle**: Backward-looking exposure reflects *what actually happened* - observed production, emissions, land conversion, incidents.

---

### Forward-Looking (Scenario-Based)

**Multiple Truths** - Dependency changes under scenarios

- **Data Source**: Scenario pathways (from Playbook 3) + asset forecasts
- **Temporal Coverage**: 2030-2100 (scenario projections)
- **Scenarios**: Asset-level strategic responses to transition pathways
- **Use Cases**:
  - Climate transition planning (TCFD strategy resilience)
  - Dependency evolution (TNFD scenario analysis)
  - Forward-looking risk assessment

**Key Principle**: Forward-looking exposure depends on asset behavior assumptions (e.g., will the coal plant phase out by 2040? Will water efficiency improve 30%?).

---

## Asset Classification Framework

### 1. Asset Types

**Physical Assets**:
- **Facilities**: Power plants, factories, mines, farms, buildings
- **Infrastructure**: Roads, pipelines, dams, transmission lines
- **Land**: Owned/leased land, plantations, conservation areas

**Corporate Assets**:
- **Companies**: Legal entities with operations across multiple sites
- **Business Units**: Divisions, subsidiaries (consolidated into parent)
- **Projects**: Discrete investments (project finance, infrastructure)

**Portfolio Instruments** (Asset look-through via Playbook 5):
- **Equity**: Listed/unlisted shares
- **Debt**: Bonds, loans, project finance
- **Funds**: Commingled vehicles (with look-through to underlying assets)

---

### 2. Asset Qualification

Each asset must be qualified by:

**A. Geographic Location**
- **Country**: ISO3 code (primary)
- **Region**: Sub-national (state, province) for large countries
- **Watershed**: For water impacts (HydroBASINS Level 6)
- **Biome**: For biodiversity/land use (WWF Terrestrial Ecoregions)

**B. Sector Classification**
- **NACE Rev. 2**: 88 sectors (European standard, maps to ISIC)
- **GICS**: 11 sectors / 24 industry groups (for listed equity)
- **Custom**: Project-specific (infrastructure, agriculture)

**C. Activity Data**
- **Production Volume**: Physical output (tonnes steel, MWh electricity, hectares harvested)
- **Employment**: Headcount (for social indicators)
- **Emissions/Effluents**: kg pollutant emitted or discharged
- **Resource Consumption**: m³ water, hectares land, tonnes waste

---

## Exposure Factor Structure

### General Formula

```
Exposure[Asset, Impact, Year] = Activity_Data[Asset, Year] × Intensity_Factor[Sector, Country]

Where:
- Activity_Data: Physical quantity at asset level (production, employees, etc.)
- Intensity_Factor: Impact per unit activity (e.g., kg CO₂/MWh, m³ water/tonne product)
```

### Exposure Types

**Type 1: Direct Measurement** (Preferred)
- Asset reports actual emissions/consumption
- Example: Power plant reports 500,000 tonnes CO₂ annually (measured via CEMS)
- **Exposure = 500,000 kg CO₂** (no intensity factor needed)

**Type 2: Activity-Based Intensity** (Common)
- Asset reports activity, intensity estimated from sector/technology benchmarks
- Example: Steel plant reports 1,000,000 tonnes production, no emissions data
- Intensity: 1.8 kg CO₂/kg steel (electric arc furnace, EU average)
- **Exposure = 1,000,000 tonnes × 1,800 kg CO₂/tonne = 1,800,000,000 kg CO₂**

**Type 3: Proxy/Estimation** (Use if Type 1-2 unavailable)
- Asset has minimal data, use sector/country averages
- Example: Unknown factory in Indonesia, sector: textiles
- Use Indonesia textiles average: 15,000 tonnes CO₂/facility/year
- **Exposure = 15,000 kg CO₂** (flagged as "low confidence")

---

## PART A: ENVIRONMENTAL EXPOSURE FACTORS

---

## 1. GHG Emissions Exposure

### Asset-Level Exposure Metrics

**Scope 1 (Direct)**: Emissions from owned/controlled sources
- Fuel combustion (power plants, boilers, vehicles)
- Process emissions (cement, steel, chemicals)
- Fugitive emissions (methane leaks, refrigerants)

**Scope 2 (Energy Indirect)**: Purchased electricity, heat, steam
- Based on grid emission factors (location-based or market-based)

**Scope 3 (Value Chain)** (Optional for asset-level; relevant for company-level):
- Upstream: Purchased goods, transport, waste
- Downstream: Product use, end-of-life

### Intensity Benchmarks (kg CO₂e per unit)

| Sector | Unit | Low (Best) | Average | High (Worst) |
|--------|------|-----------|---------|-------------|
| **Electricity** | MWh | 50 (solar) | 450 (global avg) | 950 (coal) |
| **Steel** | tonne | 400 (H2-DRI) | 1,800 (EAF) | 2,400 (BF-BOF) |
| **Cement** | tonne | 500 (alternative fuels) | 900 (global avg) | 1,000 (inefficient) |
| **Agriculture** | hectare/year | 500 (organic) | 2,500 (conventional) | 5,000 (intensive livestock) |
| **Transport (Road)** | tonne-km | 60 (EV) | 100 (diesel truck) | 150 (old diesel) |

### Recommended Data Sources (Asset-Level)

| Region | Database | Type | Access URL |
|--------|----------|------|------------|
| **Global** | Climate TRACE | Direct (Remote Sensing) | climatetrace.org |
| **Global** | Global Power Plant Database (WRI) | Activity (Capacity/Gen) | datasets.wri.org |
| **USA** | EPA FLIGHT | Direct (Reported) | ghgdata.epa.gov |
| **Europe** | EU ETS / E-PRTR | Direct (Reported) | prtr.eea.europa.eu |
| **Australia** | NGER | Direct (Reported) | cleanenergyregulator.gov.au |

**Geographic Variation**:
- **Electricity grids**: Norway (hydro, 10 kg CO₂/MWh) vs. Poland (coal, 800 kg CO₂/MWh)
- **Regulations**: EU ETS forces efficiency; countries without carbon pricing lag

---

### Forward-Looking Exposure (Scenario-Based)

**Transition Assumptions** (Asset-Level Strategy):

**Example: Coal Power Plant (1,000 MW, Germany)**

| Scenario | 2030 | 2040 | 2050 | Rationale |
|----------|------|------|------|-----------|
| **SSP1-1.9** (1.5°C) | 500 MW (50% CCS) | 0 MW (phased out) | 0 MW | EU Coal Phase-out 2038 |
| **SSP2-4.5** (2.5°C) | 800 MW (continued) | 400 MW (partial) | 0 MW (replaced by renewables) | Gradual transition |
| **SSP5-8.5** (High emissions) | 1,000 MW (no change) | 1,000 MW | 800 MW (some retirement) | Extended operations |

**Exposure Evolution**:
- SSP1: 500 MW × 8,760 hrs × 0.4 kg CO₂/kWh (CCS) = 1,752,000,000 kg CO₂ (2030) → 0 (2040+)
- SSP5: 1,000 MW × 8,760 hrs × 0.9 kg CO₂/kWh = 7,884,000,000 kg CO₂ (constant to 2050)

---

## 2. Air Pollution Exposure

### Asset-Level Exposure Metrics

**Direct Emissions** (kg/year):
- PM2.5, PM10: Combustion, industrial processes
- NOx: High-temperature combustion (vehicles, power plants)
- SOx: Coal combustion, smelting
- NMVOC: Chemical plants, refineries, solvents
- NH3: Agriculture (livestock, fertilizer)

### Intensity Benchmarks (kg pollutant per unit activity)

| Sector | Activity Unit | PM2.5 | NOx | SOx | NH3 |
|--------|--------------|-------|-----|-----|-----|
| **Coal Power** | MWh | 0.05 | 0.5 | 1.0 | - |
| **Diesel Transport** | tonne-km | 0.0002 | 0.015 | 0.001 | - |
| **Steel (BF-BOF)** | tonne steel | 0.1 | 0.8 | 0.5 | - |
| **Agriculture (Livestock)** | Livestock Unit/year | - | - | - | 25 |
| **Agriculture (Crops)** | hectare/year | 0.5 | 2 | - | 15 |

### Regional Databases

- **Europe**: E-PRTR (Industrial sites)
- **USA**: EPA NEI (National Emissions Inventory)
- **Global**: EDGAR (Emissions Database for Global Atmospheric Research) - Grid-based proxy if asset data missing

**Geographic Variation**:
- **Regulations**: EU IED (Best Available Techniques) vs. no controls in some developing countries
- **Technology**: Electrostatic precipitators (reduce PM by 99%) vs. no abatement

---

## 3. Water Consumption Exposure

### Asset-Level Exposure Metrics

**Blue Water Consumption** (m³/year):
- Withdrawal minus Return (evaporated or incorporated into products)
- **Sources**: Surface water (rivers, lakes), Groundwater, Municipal supply

### Intensity Benchmarks (m³ per unit)

| Sector | Unit | Low | Average | High |
|--------|------|-----|---------|------|
| **Electricity (Thermal)** | MWh | 0.5 (air-cooled) | 2.0 (wet tower) | 4.0 (once-through) |
| **Textiles** | tonne fabric | 50 | 100 | 200 |
| **Beverages** | liter product | 2 | 4 | 8 |
| **Semiconductor** | wafer | 10,000 | 15,000 | 25,000 |
| **Agriculture (Irrigation)** | hectare/year | 2,000 (rainfed) | 8,000 (efficient) | 15,000 (flood irrigation) |

### Recommended Data Sources

| Region | Database | Scope | URL |
|--------|----------|-------|-----|
| **Global** | WRI Aqueduct | Risk/Scarcity Layers | wri.org/aqueduct |
| **South America** | MapBiomas Water | Surface Water Dynamics | mapbiomas.org |
| **Africa** | Digital Earth Africa (WOfS) | Surface Water Extent | digitalearthafrica.org |
| **Australia** | BoM Water Data Online | River/Storage Levels | bom.gov.au/water |

**Geographic Variation**:
- **Scarcity** (from Playbook 1 AWARE factors) amplifies *impact*, not exposure
- Exposure is physical volume; impact = volume × IVF (which includes AWARE scaling)

---

### Forward-Looking Exposure (Scenario-Based)

**Water Efficiency Improvements**:

**Example: Textile Factory (India)**

| Scenario | 2025 | 2030 | 2050 | Driver |
|----------|------|------|------|--------|
| **Baseline** | 100 m³/tonne | 100 m³/tonne | 100 m³/tonne | No change |
| **SSP1 (Efficiency)** | 100 m³/tonne | 70 m³/tonne (recycling) | 40 m³/tonne (closed-loop) | Strong water regulations, tech adoption |
| **SSP3 (Fragmentation)** | 100 m³/tonne | 110 m³/tonne (degradation) | 120 m³/tonne | Water stress, no investment |

**Exposure Calculation** (for 10,000 tonnes/year production):
- SSP1 (2050): 10,000 × 40 = 400,000 m³ (60% reduction vs. baseline)
- SSP3 (2050): 10,000 × 120 = 1,200,000 m³ (20% increase)

---

## 4. Land Use Exposure

### Asset-Level Exposure Metrics

**Land Use Change** (hectares converted):
- **FROM**: Natural/semi-natural (primary forest, wetland, grassland)
- **TO**: Human-dominated (cropland, plantation, urban, industrial, infrastructure)

**Ongoing Land Occupation** (hectares occupied):
- Existing footprint (for reporting, not damage unless conversion continues)

### Intensity Benchmarks (hectares per unit)

| Sector | Unit | Low | Average | High |
|--------|------|-----|---------|------|
| **Agriculture (Soy)** | tonne/year yield | 0.2 (intensive) | 0.3 (average) | 0.5 (extensive) |
| **Palm Oil** | tonne/year | 0.15 | 0.2 | 0.3 |
| **Mining (Open-Pit)** | tonne ore | 0.0001 | 0.0005 | 0.001 |
| **Solar Farm** | MW capacity | 2 | 4 | 6 |
| **Hydropower (Reservoir)** | MW capacity | 50 | 200 | 1,000 |

### Primary Regional Databases (Exposure Verification)

**1. South America (Best-in-Class)**
- **MapBiomas Brazil/Amazon/Chaco**: Annual land cover maps (30m & 10m). Tracks fire scars, mining areas, and specific crops (Soy/Sugar/Pasture).
- **RAISG**: Pan-Amazon network data.
- **Trase**: Links soy/beef production in specific municipalities to deforestation risk (supply chain exposure).

**2. North America**
- **NALCMS** (North American Land Change Monitoring System): Harmonized land cover for Canada, USA, Mexico.
- **NLCD** (USA): National Land Cover Database (USGS).
- **AAFC** (Canada): Annual Crop Inventory (detailed crop types).

**3. Australia**
- **NVIS** (National Vegetation Information System): Extant vs Pre-1750 vegetation.
- **TERN** (Terrestrial Ecosystem Research Network): Soil and landscape grids.

**4. Africa**
- **Digital Earth Africa**: Continental Sentinel-2 composites, crop masks, water availability.
- **RCMRD**: Regional mapping for Eastern/Southern Africa.

**5. Asia**
- **JAXA High-Res LULC**: 10m resolution for Vietnam, Japan, etc.
- **Fineprint**: Global mining areas dataset (mapped polygons of extraction sites).

**Geographic Variation**:
- **Ecosystem value** (from Playbook 1 IVF) varies drastically: Indonesia tropical forest ($3.7M/ha) vs. degraded grassland ($300k/ha)
- Exposure is hectares converted; impact = hectares × IVF (ecosystem-specific)

---

### Forward-Looking Exposure (Scenario-Based)

**Expansion vs. Intensification**:

**Example: Agribusiness (Brazil, Soy)**

| Scenario | Strategy | 2025 | 2030 | 2050 | Land Use Change |
|----------|----------|------|------|------|-----------------|
| **SSP1 (Sustainability)** | Intensification | 50,000 ha | 50,000 ha (yields +30%) | 50,000 ha (yields +60%) | **0 ha** (zero deforestation) |
| **SSP2 (Moderate)** | Mixed | 50,000 ha | 60,000 ha (+10k new) | 70,000 ha (+10k) | **20,000 ha** cumulative |
| **SSP5 (Development)** | Expansion | 50,000 ha | 75,000 ha (+25k new) | 120,000 ha (+45k) | **70,000 ha** cumulative |

**Exposure** (SSP5, 2050):
- **Total land conversion**: 70,000 ha (50% Cerrado savanna, 50% degraded pasture)
- **Impact Calculation** (via Playbook 1):
  - Cerrado: 35,000 ha × $180,000/ha = $6.3 billion damage
  - Degraded pasture: 35,000 ha × $40,000/ha = $1.4 billion damage
  - **Total**: $7.7 billion

---

## 5. Waste Management Exposure

### Asset-Level Exposure Metrics

**Waste Generated** (tonnes/year):
- Hazardous (toxic, flammable, corrosive)
- Non-hazardous (municipal, industrial)
- Recyclable (metals, plastics, paper, glass)

### Intensity Benchmarks (kg waste per unit)

| Sector | Unit | Hazardous | Non-Hazardous | Recyclable |
|--------|------|-----------|---------------|------------|
| **Chemical Manufacturing** | tonne product | 50 | 200 | 30 |
| **Electronics** | unit device | 0.5 | 2 | 1.5 |
| **Construction** | m² built | 5 | 150 | 80 |
| **Food Processing** | tonne product | 0 | 300 | 50 |

### Specialized Databases

- **Global Tailings Portal**: Mining waste storage facilities and risk status.
- **E-PRTR**: Industrial waste transfers in Europe.

**Data Sources**:
- **Direct**: Waste manifests, ESRS E5, CDP
- **Intensities**: Ecoinvent, EU Waste Statistics, EPA

---

## PART B: SOCIAL EXPOSURE FACTORS

---

## 6. Occupational Health & Safety (OHS) Exposure

### Asset-Level Exposure Metrics

**Incidents** (count/year):
- **Fatal**: Work-related deaths
- **Non-Fatal Injuries**: Lost-time injuries, medical treatment cases
- **Occupational Illnesses**: Respiratory diseases, cancers, musculoskeletal disorders

**Exposure Base**: Employee headcount × hours worked

### Intensity Benchmarks (incidents per 1,000,000 hours worked)

| Sector | Fatal Rate | Lost-Time Injury Rate (LTIR) | Total Recordable Incident Rate (TRIR) |
|--------|-----------|------------------------------|----------------------------------------|
| **Mining** | 0.15 | 3.5 | 8.0 |
| **Construction** | 0.10 | 2.5 | 6.0 |
| **Manufacturing** | 0.02 | 1.0 | 3.0 |
| **Agriculture** | 0.20 | 4.0 | 9.0 |
| **Services (Office)** | 0.001 | 0.2 | 0.5 |

**Data Sources**:
- **Direct**: OSHA logs (USA), HSE statistics (UK), ESRS S1
- **Benchmarks**: ILO, Bureau of Labor Statistics, industry associations

**Geographic Variation**:
- Developing countries: Higher rates (weak enforcement, older technology)
- Developed countries: Lower rates (strict regulations, safety culture)

---

### Forward-Looking Exposure (Scenario-Based)

**Safety Improvements & Automation**:

**Example: Mining Operation (South Africa)**

| Scenario | 2025 | 2030 | 2050 | Driver |
|----------|------|------|------|--------|
| **Baseline (LTIR)** | 3.5 | 3.5 | 3.5 | No change |
| **SSP1 (Safety First)** | 3.5 | 2.0 (automation + training) | 0.5 (autonomous equipment) | Strong regulation, investment |
| **SSP3 (Fragmentation)** | 3.5 | 4.0 (aging equipment) | 5.0 (deterioration) | Weak governance, low investment |

**Exposure** (for 5,000 employees, 2,000 hours/year each = 10 million hours):
- SSP1 (2050): 10M hours × 0.5/1M = 5 lost-time injuries/year
- SSP3 (2050): 10M hours × 5.0/1M = 50 lost-time injuries/year

---

## 7. Training & Human Capital Exposure

### Asset-Level Exposure Metrics

**Training Hours** (hours/year):
- Total training hours delivered to employees
- By type: Technical, leadership, compliance, safety

**Exposure Base**: Employee headcount

### Intensity Benchmarks (hours per employee per year)

| Sector | Low | Average | High |
|--------|-----|---------|------|
| **Manufacturing** | 10 | 30 | 60 |
| **IT / Professional Services** | 40 | 80 | 120 |
| **Retail / Hospitality** | 5 | 15 | 30 |
| **Construction** | 20 | 40 | 80 |

**Data Sources**:
- **Direct**: HR records, Learning Management Systems (LMS), ESRS S1
- **Benchmarks**: LinkedIn Learning, industry surveys

---

## 8. Living Wage, Forced Labour, Child Labour Exposure

**Status**: Research / Planned (see Playbook 1, Sections 11-13)

**Proposed Metrics**:
- **Living Wage**: Worker-years below living wage threshold (by country/region)
- **Forced Labour**: Worker-years in forced labour conditions (ILO indicators)
- **Child Labour**: Child-years in labour (ages 5-17, UNICEF/ILO definitions)

### Risk Exposure Proxies

- **US Dept of Labor (ILAB) List of Goods**: Maps commodities to child/forced labor risk by country (e.g., Cobalt/DRC, Cotton/Uzbekistan).
- **KnowTheChain**: Benchmarks for ICT, Food/Beverage, Apparel.

**Data Sources** (Proposed):
- **Direct**: Wage data, audit reports, worker surveys
- **Benchmarks**: Global Living Wage Coalition, ILO Global Estimates

---

## PART C: EXPOSURE MAPPING & INTEGRATION

---

## Geographic Qualification Framework

### Country-Level (Primary)

**ISO3 Codes** (188 countries)
- Directly maps to Playbook 1 IVFs (country-specific coefficients)

### Sub-National (Optional, for Large/Federal Countries)

**Examples**:
- **USA**: State-level (e.g., California, Texas) - Different electricity grids, regulations
- **China**: Province-level (e.g., Guangdong, Sichuan) - Vastly different water availability, emissions intensities
- **Brazil**: State-level (e.g., Amazonas, São Paulo) - Different biomes, land use risks

**When to Use**:
- Water impacts (basin-specific AWARE factors)
- Land use (ecosystem heterogeneity within country)
- Electricity GHG (grid mixes vary sub-nationally)

---

### Watershed-Level (For Water Impacts)

**HydroBASINS** (Level 6 - ~35,000 global watersheds)
- Maps facility location to watershed
- Enables basin-specific water scarcity (AWARE) and pollution risk

**Example**: Textile factory in Ganges Basin (India)
- **Country IVF**: India average AWARE = 36.2
- **Basin IVF** (if available): Ganges basin AWARE = 52 (higher scarcity than national average)
- **Impact**: 100,000 m³ × $52/m³ = $5.2M (vs. $3.62M using country average)

---

### Biome-Level (For Biodiversity / Land Use)

**WWF Terrestrial Ecoregions** (867 ecoregions globally)
- Maps land conversion to ecosystem type
- Enables ecoregion-specific land use IVF

**Example**: Palm oil plantation expansion (Indonesia)
- **Country IVF**: Indonesia average primary forest = $3.77M/ha
- **Ecoregion IVF**: Borneo lowland rainforest = $5.5M/ha (higher biodiversity, orangutan habitat)
- **Impact**: 1,000 ha converted × $5.5M/ha = $5.5 billion (vs. $3.77B using country average)

---

## Sector Qualification Framework

### NACE Rev. 2 (88 Sectors)

**Standard European Classification**
- Maps to ISIC (International Standard Industrial Classification)
- Used for Playbook 1 IVFs (sector-specific coefficients where applicable)

**Examples**:
- **A01**: Crop and animal production, hunting
- **C24**: Manufacture of basic metals
- **D35**: Electricity, gas, steam, air conditioning supply
- **H49**: Land transport and transport via pipelines

---

### GICS (11 Sectors / 24 Industry Groups)

**Used for Listed Equity**
- Energy, Materials, Industrials, Consumer Discretionary, Consumer Staples, Health Care, Financials, IT, Telecom, Utilities, Real Estate

**Mapping to NACE**:
- GICS Energy → NACE B (Mining), D35 (Electricity), C19 (Coke/Refined Petroleum)
- GICS Materials → NACE C23 (Non-metallic minerals), C24 (Basic metals)

---

### Custom Sector Classification (For Projects)

**Infrastructure Projects**:
- Power generation (technology-specific: coal, gas, nuclear, solar, wind, hydro)
- Transport (roads, rail, airports, ports)
- Water & Sanitation (treatment plants, pipelines)

**Agriculture Projects**:
- Commodity-specific: Soy, palm oil, cattle, cocoa, coffee

---

## Third-Party Asset Data Integration

Beyond corporate disclosures, several specialized databases provide asset-level exposure data using remote sensing and public records:

- **Climate TRACE** (GHG): Facility-level emissions using satellite data, AI, and public records
- **Global Energy Monitor**: Fossil fuel infrastructure tracking (coal plants, gas terminals, pipelines)
- **Fineprint**: Global mining polygons (extraction sites mapped from satellite imagery)
- **Global Dam Watch**: Hydropower reservoir extents and environmental impacts

---

## Exposure Data Sources & Quality Tiers

### Tier 1: Asset-Level Direct Measurement (Preferred)

**Sources**:
- **Corporate disclosures**: Annual reports, sustainability reports, ESRS, CDP, TCFD/TNFD
- **Facility-level**: Emissions permits, environmental permits (EU E-PRTR, US TRI)
- **Project-level**: ESIA (Environmental & Social Impact Assessments)
- **Third-Party Asset Data**: Climate TRACE (GHG), Global Energy Monitor (Fossil Assets), Fineprint (Mining polygons)

**Confidence**: High (actual measurements, third-party verified)

---

### Tier 2: Activity-Based Intensities (Common)

**Sources**:
- **Production data**: Company reports production volumes
- **Intensity factors**: Sector/technology benchmarks from IEA, Ecoinvent, EPA, UBA

**Confidence**: Medium (activity data is reported, but intensity is estimated)

**Example**:
- Steel plant reports 1M tonnes production (Tier 1 activity)
- Apply EAF intensity: 1.8 kg CO₂/kg steel (Tier 2 intensity)
- **GHG Exposure**: 1M tonnes × 1,800 kg/tonne = 1.8 billion kg CO₂

---

### Tier 3: Proxy / Estimation (Use if Tier 1-2 Unavailable)

**Sources**:
- **Sector/Country Averages**: Generic benchmarks
- **Revenue-Based**: Estimate activity from financial data ($/tonne sector average)

**Confidence**: Low (high uncertainty, flagged for user review)

**Example**:
- Unknown factory in Vietnam, sector: textiles, revenue $50M
- Vietnam textiles average: $100M revenue ≈ 200,000 m³ water/year
- **Water Exposure**: 200,000 × ($50M / $100M) = 100,000 m³ (estimate)

---

## Forward-Looking Exposure: Scenario Integration

### Asset-Level Strategic Assumptions

**Exposure evolution depends on** (defined in Playbook 3):
1. **Technology Adoption**: CCS, renewables, water recycling, automation
2. **Capacity Changes**: Expansion, phase-out, efficiency improvements
3. **Regulatory Compliance**: Stricter emissions limits, EUDR, carbon pricing

### Scenario Archetypes (Asset Behavior)

**Conservative (Asset Continues Current Trajectory)**:
- No major capex, no technology change
- Exposure remains constant or degrades (aging equipment)

**Moderate Transition**:
- Gradual efficiency improvements (20-30% over 20 years)
- Partial technology adoption (e.g., 50% of coal fleet adds CCS)

**Aggressive Transition**:
- Rapid phase-out (coal → renewables by 2035)
- Deep efficiency gains (water recycling, circular economy)

### Mapping to SSPs (From Playbook 3)

| Asset Strategy | SSP1-1.9 | SSP2-4.5 | SSP5-8.5 |
|---------------|---------|---------|---------|
| **Aggressive Transition** | ✓ Aligned | Possible | Unlikely |
| **Moderate Transition** | Likely | ✓ Aligned | Possible |
| **Conservative** | Unlikely | Possible | ✓ Aligned |

---

## Exposure Factor Matrix Structure

### Dimensions

**Asset-Level** (Not Portfolio-Level Yet - That's Playbook 5):
```
Exposure[Asset_ID, Impact, Country, Sector, Year]
```

**Where**:
- **Asset_ID**: Unique identifier (facility, company, project)
- **Impact**: GHG, Air Pollution, Water Consumption, etc. (13 indicators from Playbook 1)
- **Country**: ISO3 code (or sub-national)
- **Sector**: NACE Rev. 2 code
- **Year**: 2014-2030 (historical), 2030-2100 (scenario-based)

**Units**: Physical units (kg CO₂, m³ water, hectares land, incidents)

---

## Quality Assurance & Uncertainty

### Data Quality Flags

**High Confidence**:
- Direct measurement (CEMS, flow meters, employee records)
- Third-party verified (audited reports, CDP verification)

**Medium Confidence**:
- Activity data reported, intensity estimated from credible benchmarks
- Self-reported without third-party verification

**Low Confidence**:
- Proxy/estimation based on sector averages
- Revenue-based estimation
- Data >5 years old

### Uncertainty Ranges

**Exposure Uncertainty** (separate from IVF uncertainty in Playbook 1):
- **Tier 1 (Direct)**: ±5-15%
- **Tier 2 (Activity-Based)**: ±25-50%
- **Tier 3 (Proxy)**: ±100-300%

**Combined Uncertainty** (Exposure × IVF):
```
Total_Uncertainty = sqrt(Uncertainty_Exposure² + Uncertainty_IVF²)
```

**Example (GHG)**:
- Exposure (Tier 2): ±30%
- IVF (SCC): ±50%
- **Combined**: sqrt(30² + 50²) = **±58%**

---

## Governance & Data Management

### Data Ownership (From Playbook 4)

**Asset-Level Data Owners**:
- **Facilities**: Plant managers, EHS teams
- **Companies**: Sustainability / ESG teams
- **Projects**: Project managers, environmental consultants

**Portfolio-Level Data Aggregators**:
- **Investment Teams**: Collect asset data from portfolio companies
- **Risk Teams**: Consolidate exposure across portfolios

### Update Frequency

**Backward-Looking**: Annual (align to fiscal year / calendar year reporting)
**Forward-Looking**: 3-5 year refresh (align to scenario updates from Playbook 3)

### Version Control

**Format**: `EF_[Asset/Portfolio]_[Date].csv` or HDF5

**Change Log**:
- Methodology changes (e.g., switching from Tier 3 proxy to Tier 1 direct measurement)
- Data source updates
- Asset additions/disposals

---

## Appendix: Regional & Sectoral Data Portals

Comprehensive directory of asset-level exposure databases by region and theme:

| Region | Sector/Theme | Database Name | Access URL | Exposure Type |
|--------|--------------|---------------|------------|---------------|
| **Global** | Energy/GHG | Climate TRACE | climatetrace.org | Asset-level GHG |
| **Global** | Power/Energy | Global Power Plant Database | datasets.wri.org | Capacity, Generation |
| **Global** | Mining | FINEPRINT | fineprint.global | Mining Areas (Polygons) |
| **Global** | Mining/Waste | Global Tailings Portal | tailings.grida.no | Waste Risk |
| **Global** | Hydro/Water | Global Dam Watch | globaldamwatch.org | Reservoir Extent |
| **S. America** | Land Use | MapBiomas (Brazil/Amazon/Chaco) | mapbiomas.org | LULC History |
| **S. America** | Supply Chain | Trase | trase.earth | Soft Commodity Risk |
| **N. America** | Land Use | NALCMS (CEC) | cec.org/nalcms | Continental LULC |
| **N. America** | Biodiversity | BISON (USGS) | bison.usgs.gov | Species Occurrence |
| **Africa** | Land/Water | Digital Earth Africa | digitalearthafrica.org | Crop/Water Mask |
| **Australia** | Ecosystem | TERN / ALA | tern.org.au | Soil/Bio/Land |
| **Australia** | Vegetation | NVIS | dcceew.gov.au | Veg Extent |
| **Asia** | Land Use | JAXA EORC | eorc.jaxa.jp | High-Res LULC |

---

## PART D: SSP SCENARIO INTEGRATION & EXPOSURE EVOLUTION

---

## Executive Summary: Forward-Looking Exposure Under SSPs

**Purpose**: This section extends Playbook 2 from backward-looking (historical) to **forward-looking** exposure projections under **Shared Socioeconomic Pathways (SSPs)**.

**Key Principle**:
- **Playbook 1** defines how **impact values (IVF)** change under SSPs (e.g., water scarcity increases → IVF rises)
- **Playbook 2** defines how **physical exposures (activity data)** change under SSPs (e.g., water withdrawals increase → exposure rises)

**Combined Effect**:
```
Future_Impact[SSP, Year] = Exposure[SSP, Year] × IVF[SSP, Year]

Both components are scenario-dependent, creating compounding effects:
- SSP5-8.5: High exposure (more consumption) × High IVF (greater scarcity) = Extreme impact
- SSP1-1.9: Low exposure (efficiency) × Low IVF (restoration) = Minimal impact
```

**Coverage**: This section details SSP-driven exposure evolution for:
1. Water Consumption (basin-level withdrawal projections)
2. Land Use (expansion vs. intensification pathways)
3. GHG Emissions (sectoral transition trajectories)
4. Air Pollution (technology adoption & regulation)
5. Social Indicators (OHS, employment in high-risk sectors)

---

## 1. SSP Framework Recap (Exposure Lens)

### The Five SSP Narratives (Exposure Perspective)

| SSP | Narrative | Global Temperature (2100) | **Exposure Evolution Driver** |
|-----|-----------|-------------------------|--------------------------------|
| **SSP1-1.9** | Sustainability - Taking the Green Road | 1.5°C | **Resource decoupling**: Efficiency gains, circular economy, aggressive phase-outs |
| **SSP2-4.5** | Middle of the Road | 2.5°C | **Incremental improvement**: Moderate efficiency, partial transition, gradual adoption |
| **SSP3-7.0** | Regional Rivalry - A Rocky Road | 3.5°C | **Stagnation/degradation**: Low investment, fragmentation, weak regulation |
| **SSP4-6.0** | Inequality - A Road Divided | 2.8°C | **Bifurcated**: Advanced regions reduce exposure, developing regions increase |
| **SSP5-8.5** | Fossil-Fueled Development - Taking the Highway | 4-5°C | **Intensification**: High resource throughput, delayed transition, expansion-driven growth |

**T-Factors Primary Focus**: SSP1-1.9, SSP2-4.5, SSP5-8.5 (representing sustainability, middle ground, and high emissions pathways).

---

## 2. Water Consumption Exposure Under SSPs

### 2.1 Basin-Level Withdrawal Projections

**Key Drivers**:
- **SSP1-1.9**: Circular water use (industrial recycling), drip irrigation, urban conservation
- **SSP2-4.5**: Moderate efficiency gains, partial recycling adoption
- **SSP5-8.5**: Continued inefficient practices, expansion-driven demand, minimal recycling

---

#### SSP1-1.9 (Sustainability)

**Global Water Withdrawal Trajectory** (2020-2050):

| Sector | 2020 (km³/year) | 2030 | 2050 | Change (%) | Driver |
|--------|----------------|------|------|------------|--------|
| **Agriculture** | 2,700 | 2,500 | 2,100 | -22% | Drip irrigation, soil moisture sensors, drought-resistant crops |
| **Industry** | 750 | 650 | 500 | -33% | Closed-loop cooling, zero-liquid discharge, recycling |
| **Municipal** | 470 | 450 | 400 | -15% | Water-efficient appliances, greywater reuse, leak reduction |
| **Total** | 3,920 | 3,600 | 3,000 | -23% | Absolute decoupling from GDP |

**Example: Textile Factory (India, Ganges Basin)**

| Year | Production (tonnes/year) | Water Intensity (m³/tonne) | Total Withdrawal (m³/year) | Technology Adopted |
|------|-------------------------|---------------------------|----------------------------|-------------------|
| **2020** | 10,000 | 100 | 1,000,000 | Baseline (once-through dyeing) |
| **2030** | 12,000 (+20%) | 70 | 840,000 | Recycling system (30% recovery) |
| **2050** | 15,000 (+50%) | 40 | 600,000 | Closed-loop (60% reduction vs. baseline) |

**Exposure** (SSP1-1.9, 2050): **600,000 m³/year** (40% reduction despite 50% production increase)

---

#### SSP2-4.5 (Middle of the Road)

**Global Water Withdrawal Trajectory**:

| Sector | 2020 (km³/year) | 2030 | 2050 | Change (%) | Driver |
|--------|----------------|------|------|------------|--------|
| **Agriculture** | 2,700 | 2,750 | 2,800 | +4% | Moderate efficiency offset by expansion |
| **Industry** | 750 | 750 | 700 | -7% | Partial recycling adoption |
| **Municipal** | 470 | 500 | 550 | +17% | Urban growth outpaces efficiency |
| **Total** | 3,920 | 4,000 | 4,050 | +3% | Weak decoupling |

**Example: Same Textile Factory (SSP2-4.5)**

| Year | Production (tonnes/year) | Water Intensity (m³/tonne) | Total Withdrawal (m³/year) | Technology Adopted |
|------|-------------------------|---------------------------|----------------------------|-------------------|
| **2020** | 10,000 | 100 | 1,000,000 | Baseline |
| **2030** | 11,500 | 90 | 1,035,000 | Moderate efficiency (10% reduction) |
| **2050** | 14,000 | 80 | 1,120,000 | Incremental improvements |

**Exposure** (SSP2-4.5, 2050): **1,120,000 m³/year** (+12% vs. 2020)

---

#### SSP5-8.5 (Fossil-Fueled Development)

**Global Water Withdrawal Trajectory**:

| Sector | 2020 (km³/year) | 2030 | 2050 | Change (%) | Driver |
|--------|----------------|------|------|------------|--------|
| **Agriculture** | 2,700 | 3,100 | 3,800 | +41% | Expansion (new irrigation), inefficient flood irrigation persists |
| **Industry** | 750 | 900 | 1,200 | +60% | Heavy industry expansion (steel, chemicals), minimal recycling |
| **Municipal** | 470 | 550 | 700 | +49% | Rapid urbanization, low efficiency |
| **Total** | 3,920 | 4,550 | 5,700 | +45% | Strong coupling to GDP, no decoupling |

**Critical Threshold**: By 2050, **18 major basins** (supporting 2 billion people) exceed 100% renewable water availability (absolute scarcity).

**Example: Same Textile Factory (SSP5-8.5)**

| Year | Production (tonnes/year) | Water Intensity (m³/tonne) | Total Withdrawal (m³/year) | Technology Adopted |
|------|-------------------------|---------------------------|----------------------------|-------------------|
| **2020** | 10,000 | 100 | 1,000,000 | Baseline |
| **2030** | 13,000 | 110 | 1,430,000 | Aging equipment, no recycling |
| **2050** | 18,000 | 120 | 2,160,000 | Expansion-driven, efficiency degrades |

**Exposure** (SSP5-8.5, 2050): **2,160,000 m³/year** (+116% vs. 2020)

---

### 2.2 Exposure Delta Summary (Water)

**Same Asset (Textile Factory, India), Three Futures**:

| SSP | 2050 Exposure (m³) | Change vs. 2020 (%) | **Exposure Delta vs. SSP1** |
|-----|--------------------|---------------------|----------------------------|
| **SSP1-1.9** | 600,000 | -40% | Baseline (lowest) |
| **SSP2-4.5** | 1,120,000 | +12% | **+87%** vs. SSP1 |
| **SSP5-8.5** | 2,160,000 | +116% | **+260%** vs. SSP1 |

**Combined with IVF** (from Playbook 1, Ganges Basin):
- SSP1-1.9: 600,000 m³ × $24/m³ = **$14.4M impact**
- SSP2-4.5: 1,120,000 m³ × $48/m³ = **$53.8M impact** (3.7× SSP1)
- SSP5-8.5: 2,160,000 m³ × $75/m³ = **$162.0M impact** (11× SSP1)

**Key Insight**: Exposure and IVF both worsen in SSP5-8.5, creating **multiplicative risk** (11× impact vs. SSP1-1.9).

---

## 3. Land Use Exposure Under SSPs

### 3.1 Deforestation & Expansion Trajectories

**Key Drivers**:
- **SSP1-1.9**: Zero net deforestation by 2030 (EUDR, GBF Target 2), large-scale restoration
- **SSP2-4.5**: Slowing deforestation, partial restoration
- **SSP5-8.5**: Continued expansion, delayed regulation, high commodity demand

---

#### SSP1-1.9 (Sustainability)

**Global Land Use Change (2020-2050)**:

| Transition Type | Area (Million ha) | Key Regions | Driver |
|-----------------|-------------------|-------------|--------|
| **Forest → Cropland** | -20 | Near-zero in tropics | EUDR enforcement, national deforestation bans |
| **Degraded Land → Forest** | +400 | Tropics, temperate | Bonn Challenge (350M ha by 2030), GBF Target 2 (30% restoration) |
| **Pasture → Forest** | +150 | Latin America | Abandoned cattle ranching (shift to intensive systems) |
| **Cropland → Forest** | +50 | Europe, USA | Marginal land retirement, rewilding |
| **Net Forest Change** | **+580** | Global | Massive net reforestation |

**Example: Agribusiness (Brazil, Soy Production)**

| Year | Production (tonnes) | Area (ha) | Yield (tonnes/ha) | Deforestation (ha/year) | Strategy |
|------|---------------------|-----------|-------------------|------------------------|----------|
| **2020** | 50,000 | 50,000 | 1.0 | 2,000 (expansion) | Baseline |
| **2030** | 65,000 | 50,000 | 1.3 (+30%) | **0** (zero deforestation) | Intensification (improved genetics, precision ag) |
| **2050** | 80,000 | 50,000 | 1.6 (+60%) | **0** (zero) | Full intensification |

**Land Use Exposure** (SSP1-1.9, cumulative 2020-2050): **0 ha deforestation** (zero new conversion)

---

#### SSP2-4.5 (Middle of the Road)

**Global Land Use Change (2020-2050)**:

| Transition Type | Area (Million ha) | Key Regions | Driver |
|-----------------|-------------------|-------------|--------|
| **Forest → Cropland** | -120 | Slowing in tropics | Partial EUDR compliance, leakage to non-EU markets |
| **Degraded Land → Forest** | +100 | Targeted regions | Moderate restoration (Bonn Challenge partial fulfillment) |
| **Pasture → Cropland** | +80 | Latin America | Agricultural expansion into existing pasture |
| **Net Forest Change** | **-20** | Global | Small net loss (slowing trend) |

**Example: Same Agribusiness (SSP2-4.5)**

| Year | Production (tonnes) | Area (ha) | Yield (tonnes/ha) | Deforestation (ha/year) | Strategy |
|------|---------------------|-----------|-------------------|------------------------|----------|
| **2020** | 50,000 | 50,000 | 1.0 | 2,000 | Baseline |
| **2030** | 60,000 | 55,000 (+5,000) | 1.09 (+9%) | 500 (reduced) | Mixed (some intensification, some expansion) |
| **2050** | 70,000 | 60,000 (+10,000) | 1.17 (+17%) | 250 (slowing) | Gradual transition |

**Land Use Exposure** (SSP2-4.5, cumulative 2020-2050): **10,000 ha deforestation**

---

#### SSP5-8.5 (Fossil-Fueled Development)

**Global Land Use Change (2020-2050)**:

| Transition Type | Area (Million ha) | Key Regions | Driver |
|-----------------|-------------------|-------------|--------|
| **Forest → Cropland** | -350 | Amazon, Congo, SE Asia | Weak enforcement, commodity boom (soy, palm, beef) |
| **Forest → Pasture** | -180 | Latin America | Cattle expansion |
| **Degraded Land → Cropland** | +120 | Sahel, Central Asia | Marginal land exploitation (low yields) |
| **Net Forest Change** | **-410** | Global | Massive net loss (approaching 2000s rates) |

**Critical Threshold**: By 2050, **Amazon rainforest** crosses **tipping point** (15-20% deforestation → savannization, irreversible ecosystem collapse).

**Example: Same Agribusiness (SSP5-8.5)**

| Year | Production (tonnes) | Area (ha) | Yield (tonnes/ha) | Deforestation (ha/year) | Strategy |
|------|---------------------|-----------|-------------------|------------------------|----------|
| **2020** | 50,000 | 50,000 | 1.0 | 2,000 | Baseline |
| **2030** | 75,000 | 70,000 (+20,000) | 1.07 (+7%) | 2,500 (accelerating) | Expansion-driven (land cheaper than intensification) |
| **2050** | 120,000 | 110,000 (+60,000) | 1.09 (+9%) | 2,000 (sustained high) | Continued expansion |

**Land Use Exposure** (SSP5-8.5, cumulative 2020-2050): **60,000 ha deforestation**

---

### 3.2 Exposure Delta Summary (Land Use)

**Same Asset (Agribusiness, Brazil), Three Futures**:

| SSP | Cumulative Deforestation 2020-2050 (ha) | **Exposure Delta vs. SSP1** |
|-----|------------------------------------------|----------------------------|
| **SSP1-1.9** | 0 | Baseline (zero) |
| **SSP2-4.5** | 10,000 | **+10,000 ha** |
| **SSP5-8.5** | 60,000 | **+60,000 ha** |

**Combined with IVF** (from Playbook 1, 50% Cerrado savanna $180k/ha, 50% degraded pasture $40k/ha):

**SSP2-4.5**:
- 5,000 ha Cerrado × $220,000/ha (2030 avg) = $1.1B
- 5,000 ha Pasture × $50,000/ha = $250M
- **Total**: $1.35 billion cumulative impact

**SSP5-8.5**:
- 30,000 ha Cerrado × $110,000/ha (degraded value, delayed internalization) = $3.3B
- 30,000 ha Pasture × $40,000/ha = $1.2B
- **Total**: $4.5 billion cumulative impact (but note: value per ha is **lower** in SSP5 due to degraded ecosystem state and weak regulation)

**Key Insight**: SSP5-8.5 has **highest physical exposure** (60,000 ha) but **lower IVF per ha** initially (weak carbon pricing, no EUDR premium). However, by 2050, delayed shock pricing may spike IVF (see Playbook 1), creating **contingent liability**.

---

## 4. GHG Emissions Exposure Under SSPs

### 4.1 Sectoral Emission Trajectories

---

#### SSP1-1.9 (Sustainability)

**Global GHG Emissions** (Gt CO₂e/year):

| Sector | 2020 | 2030 | 2050 | Change (%) | Decarbonization Pathway |
|--------|------|------|------|------------|------------------------|
| **Electricity & Heat** | 14.0 | 8.0 | 0.5 | -96% | Coal phase-out by 2035, 90% renewables by 2050 |
| **Transport** | 8.0 | 6.0 | 1.5 | -81% | EV adoption (70% by 2050), sustainable aviation fuels |
| **Industry** | 9.0 | 6.5 | 3.0 | -67% | Green hydrogen, CCS, electrification |
| **Agriculture** | 6.0 | 5.5 | 4.5 | -25% | Methane reduction (livestock), soil carbon sequestration |
| **Buildings** | 3.0 | 2.0 | 0.5 | -83% | Heat pumps, building retrofits |
| **Total** | 40.0 | 28.0 | 10.0 | -75% | Net zero by 2050 |

**Example: Coal Power Plant (1,000 MW, Germany)**

| Year | Capacity (MW) | Capacity Factor (%) | Annual Generation (GWh) | Emission Intensity (kg CO₂/kWh) | Total Emissions (kt CO₂) |
|------|---------------|-------------------|------------------------|--------------------------------|-------------------------|
| **2020** | 1,000 | 60% | 5,256 | 0.90 | 4,730 |
| **2030** | 500 (50% CCS retrofit) | 50% | 2,190 | 0.40 (CCS capture) | 876 |
| **2040** | 0 (phased out) | 0% | 0 | - | 0 |
| **2050** | 0 | 0% | 0 | - | 0 |

**Exposure** (SSP1-1.9, 2030-2050 cumulative): **876 kt CO₂ (2030 only)** → 0 thereafter

---

#### SSP2-4.5 (Middle of the Road)

**Global GHG Emissions**:

| Sector | 2020 | 2030 | 2050 | Change (%) | Decarbonization Pathway |
|--------|------|------|------|------------|------------------------|
| **Electricity & Heat** | 14.0 | 12.0 | 6.0 | -57% | Gradual coal decline, 50% renewables by 2050 |
| **Transport** | 8.0 | 8.5 | 5.5 | -31% | Moderate EV uptake (40% by 2050) |
| **Industry** | 9.0 | 9.0 | 6.5 | -28% | Partial CCS, incremental efficiency |
| **Agriculture** | 6.0 | 6.0 | 5.5 | -8% | Modest methane reduction |
| **Buildings** | 3.0 | 2.8 | 2.0 | -33% | Slow retrofit pace |
| **Total** | 40.0 | 38.3 | 25.5 | -36% | Peak emissions ~2025 |

**Example: Same Coal Plant (SSP2-4.5)**

| Year | Capacity (MW) | Capacity Factor (%) | Annual Generation (GWh) | Emission Intensity (kg CO₂/kWh) | Total Emissions (kt CO₂) |
|------|---------------|-------------------|------------------------|--------------------------------|-------------------------|
| **2020** | 1,000 | 60% | 5,256 | 0.90 | 4,730 |
| **2030** | 800 (minor retrofit) | 55% | 3,854 | 0.85 | 3,276 |
| **2040** | 400 (partial phase-out) | 50% | 1,752 | 0.80 | 1,402 |
| **2050** | 0 (eventually replaced) | 0% | 0 | - | 0 |

**Exposure** (SSP2-4.5, cumulative 2020-2050): **~70,000 kt CO₂** (gradual decline)

---

#### SSP5-8.5 (Fossil-Fueled Development)

**Global GHG Emissions**:

| Sector | 2020 | 2030 | 2050 | Change (%) | Decarbonization Pathway |
|--------|------|------|------|------------|------------------------|
| **Electricity & Heat** | 14.0 | 16.5 | 22.0 | +57% | Coal expansion (Asia, Africa), minimal renewables |
| **Transport** | 8.0 | 10.0 | 14.0 | +75% | Continued fossil fuel dominance, low EV uptake |
| **Industry** | 9.0 | 11.0 | 15.0 | +67% | Heavy industry expansion, no CCS |
| **Agriculture** | 6.0 | 6.5 | 7.5 | +25% | Intensification (high methane) |
| **Buildings** | 3.0 | 3.5 | 4.5 | +50% | Urban sprawl, air conditioning boom |
| **Total** | 40.0 | 47.5 | 63.0 | +58% | Continued emissions growth |

**Example: Same Coal Plant (SSP5-8.5)**

| Year | Capacity (MW) | Capacity Factor (%) | Annual Generation (GWh) | Emission Intensity (kg CO₂/kWh) | Total Emissions (kt CO₂) |
|------|---------------|-------------------|------------------------|--------------------------------|-------------------------|
| **2020** | 1,000 | 60% | 5,256 | 0.90 | 4,730 |
| **2030** | 1,000 (no change) | 65% | 5,694 | 0.92 (aging, less efficient) | 5,238 |
| **2040** | 1,000 (extended operation) | 60% | 5,256 | 0.95 | 4,993 |
| **2050** | 800 (partial retirement) | 55% | 3,854 | 0.98 | 3,777 |

**Exposure** (SSP5-8.5, cumulative 2020-2050): **~145,000 kt CO₂** (sustained high emissions)

---

### 4.2 Exposure Delta Summary (GHG)

**Same Asset (1,000 MW Coal Plant, Germany), Three Futures**:

| SSP | Cumulative Emissions 2020-2050 (kt CO₂) | **Exposure Delta vs. SSP1** |
|-----|------------------------------------------|----------------------------|
| **SSP1-1.9** | ~8,000 | Baseline (lowest) |
| **SSP2-4.5** | ~70,000 | **+8.8× vs. SSP1** |
| **SSP5-8.5** | ~145,000 | **+18× vs. SSP1** |

**Combined with IVF** (from Playbook 1, SCC):
- SSP1-1.9: 8M tonnes × $125/tonne (avg 2030) = **$1.0 billion**
- SSP2-4.5: 70M tonnes × $90/tonne (avg) = **$6.3 billion** (6× SSP1)
- SSP5-8.5: 145M tonnes × $75/tonne (lower initial SCC, delayed spike) = **$10.9 billion** (11× SSP1, but note: contingent liability spike post-2050 if crisis pricing activates)

---

## 5. Air Pollution Exposure Under SSPs

### 5.1 Technology Adoption & Regulatory Tightening

**Key Drivers**:
- **SSP1-1.9**: Strict air quality standards (WHO guidelines), rapid abatement technology adoption
- **SSP2-4.5**: Moderate tightening, partial compliance
- **SSP5-8.5**: Weak regulation in developing regions, high emissions persist

---

#### SSP1-1.9 (Sustainability)

**Global Air Pollutant Emissions** (Mt/year):

| Pollutant | 2020 | 2030 | 2050 | Change (%) | Abatement Pathway |
|-----------|------|------|------|------------|-------------------|
| **PM2.5** | 25 | 15 | 5 | -80% | Coal phase-out, diesel bans, industrial filters (99% efficiency) |
| **NOx** | 120 | 80 | 30 | -75% | Electric transport, SCR systems |
| **SOx** | 100 | 50 | 10 | -90% | Desulfurization, coal exit |
| **NH3** | 60 | 55 | 45 | -25% | Precision agriculture, livestock management |

**Example: Diesel Truck Fleet (10,000 vehicles, EU)**

| Year | Fleet Size | Technology | PM2.5 (kg/vehicle/year) | Total PM2.5 (tonnes/year) |
|------|-----------|-----------|------------------------|--------------------------|
| **2020** | 10,000 | Euro 5 (pre-2015) | 0.5 | 5.0 |
| **2030** | 8,000 (20% EV) | Euro 6d (DPF) | 0.05 | 0.4 |
| **2050** | 2,000 (80% EV/H2) | Euro 6+ | 0.02 | 0.04 |

**Exposure** (SSP1-1.9, 2050): **0.04 tonnes PM2.5** (-99% vs. 2020)

---

#### SSP2-4.5 (Middle of the Road)

**Global Air Pollutant Emissions**:

| Pollutant | 2020 | 2030 | 2050 | Change (%) | Abatement Pathway |
|-----------|------|------|------|------------|-------------------|
| **PM2.5** | 25 | 20 | 12 | -52% | Partial abatement, gradual fleet turnover |
| **NOx** | 120 | 100 | 70 | -42% | Moderate EV uptake |
| **SOx** | 100 | 70 | 40 | -60% | Coal decline, partial scrubbers |
| **NH3** | 60 | 58 | 55 | -8% | Modest agricultural improvements |

**Example: Same Truck Fleet (SSP2-4.5)**

| Year | Fleet Size | Technology | PM2.5 (kg/vehicle/year) | Total PM2.5 (tonnes/year) |
|------|-----------|-----------|------------------------|--------------------------|
| **2020** | 10,000 | Euro 5 | 0.5 | 5.0 |
| **2030** | 10,000 | 50% Euro 6, 10% EV | 0.25 | 2.5 |
| **2050** | 10,000 | 70% Euro 6, 30% EV | 0.15 | 1.5 |

**Exposure** (SSP2-4.5, 2050): **1.5 tonnes PM2.5** (-70% vs. 2020)

---

#### SSP5-8.5 (Fossil-Fueled Development)

**Global Air Pollutant Emissions**:

| Pollutant | 2020 | 2030 | 2050 | Change (%) | Abatement Pathway |
|-----------|------|------|------|------------|-------------------|
| **PM2.5** | 25 | 28 | 32 | +28% | Coal expansion (Asia), weak standards |
| **NOx** | 120 | 140 | 180 | +50% | Diesel dominance, low EV uptake |
| **SOx** | 100 | 110 | 130 | +30% | High-sulfur fuel, minimal scrubbers |
| **NH3** | 60 | 65 | 75 | +25% | Intensive agriculture expansion |

**Example: Same Truck Fleet (SSP5-8.5)**

| Year | Fleet Size | Technology | PM2.5 (kg/vehicle/year) | Total PM2.5 (tonnes/year) |
|------|-----------|-----------|------------------------|--------------------------|
| **2020** | 10,000 | Euro 5 | 0.5 | 5.0 |
| **2030** | 12,000 (fleet expansion) | 80% Euro 5, 5% EV | 0.45 | 5.4 |
| **2050** | 15,000 (continued growth) | 60% Euro 5, 10% EV | 0.40 | 6.0 |

**Exposure** (SSP5-8.5, 2050): **6.0 tonnes PM2.5** (+20% vs. 2020)

**Key Insight**: Air pollution exposure **increases** in SSP5-8.5 despite some technology adoption, due to fleet expansion and weak regulation.

---

## 6. Social Exposure Under SSPs

### 6.1 Occupational Health & Safety (OHS)

**Key Drivers**:
- **SSP1-1.9**: Automation, stringent safety regulations, proactive risk management
- **SSP2-4.5**: Incremental improvements, moderate investment
- **SSP5-8.5**: Labor intensification, weak enforcement, climate stress (heat)

---

#### SSP1-1.9 (Sustainability)

**Global LTIR (Lost-Time Injury Rate) Trajectory** (per million hours):

| Sector | 2020 | 2030 | 2050 | Change (%) | Driver |
|--------|------|------|------|------------|--------|
| **Mining** | 3.5 | 2.0 | 0.5 | -86% | Autonomous equipment, remote operations |
| **Construction** | 2.5 | 1.5 | 0.8 | -68% | Prefabrication, robotics, exoskeletons |
| **Manufacturing** | 1.0 | 0.6 | 0.3 | -70% | Cobots, predictive maintenance |
| **Agriculture** | 4.0 | 2.5 | 1.5 | -63% | Mechanization, precision ag (reduced manual labor) |

**Example: Mining Operation (South Africa, 5,000 employees)**

| Year | Employees | Hours (M/year) | LTIR | Lost-Time Injuries/year |
|------|-----------|---------------|------|------------------------|
| **2020** | 5,000 | 10 | 3.5 | 35 |
| **2030** | 4,000 (20% automation) | 8 | 2.0 | 16 |
| **2050** | 2,000 (60% automation) | 4 | 0.5 | 2 |

**Exposure** (SSP1-1.9, 2050): **2 injuries/year** (-94% vs. 2020)

---

#### SSP5-8.5 (Fossil-Fueled Development)

**Global LTIR Trajectory**:

| Sector | 2020 | 2030 | 2050 | Change (%) | Driver |
|--------|------|------|------|------------|--------|
| **Mining** | 3.5 | 4.0 | 5.5 | +57% | Aging equipment, cost-cutting, heat stress |
| **Construction** | 2.5 | 3.0 | 4.5 | +80% | Labor-intensive (low automation), extreme heat |
| **Manufacturing** | 1.0 | 1.2 | 1.8 | +80% | Intensive production, weak enforcement |
| **Agriculture** | 4.0 | 5.0 | 7.0 | +75% | Heat stress, outdoor labor exposure (wet-bulb >32°C events) |

**Critical Threshold (SSP5-8.5, 2050)**:
- **Outdoor work becomes physiologically impossible** during summer in:
  - Persian Gulf (wet-bulb >35°C, 50+ days/year)
  - South Asia (Pakistan, India: 20-30 days/year)
  - Sub-Saharan Sahel (10-15 days/year)

**Example: Same Mining Operation (SSP5-8.5)**

| Year | Employees | Hours (M/year) | LTIR | Lost-Time Injuries/year | Heat-Related Component (%) |
|------|-----------|---------------|------|------------------------|---------------------------|
| **2020** | 5,000 | 10 | 3.5 | 35 | 5% |
| **2030** | 5,500 (expansion) | 11 | 4.0 | 44 | 15% |
| **2050** | 6,000 (labor-intensive) | 12 | 5.5 | 66 | 30% |

**Exposure** (SSP5-8.5, 2050): **66 injuries/year** (+89% vs. 2020, with heat stress as major driver)

---

### 6.2 Employment in High-Risk Sectors

**Key Sectors**: Fossil fuel extraction, heavy industry, outdoor agriculture, construction

---

#### SSP1-1.9 (Just Transition)

**Global Employment in Fossil Fuels** (millions):

| Year | Coal Mining | Oil & Gas | Total Fossil | Renewable Energy | Net Change |
|------|------------|----------|-------------|-----------------|-----------|
| **2020** | 7.0 | 12.0 | 19.0 | 12.0 | - |
| **2030** | 2.0 | 8.0 | 10.0 | 25.0 | +6.0M (net gain) |
| **2050** | 0.5 | 2.0 | 2.5 | 45.0 | +28.0M (net gain) |

**Transition Support**: Re-skilling programs, social safety nets, regional economic diversification (aligned with ILO Just Transition guidelines).

---

#### SSP5-8.5 (Continued Fossil Dependence)

**Global Employment in Fossil Fuels**:

| Year | Coal Mining | Oil & Gas | Total Fossil | Renewable Energy | Net Change |
|------|------------|----------|-------------|-----------------|-----------|
| **2020** | 7.0 | 12.0 | 19.0 | 12.0 | - |
| **2030** | 9.0 | 14.0 | 23.0 | 15.0 | +7.0M (fossil expansion) |
| **2050** | 10.0 | 16.0 | 26.0 | 18.0 | +13.0M (mostly fossil) |

**Exposure Risk**: **26 million workers** in 2050 remain in high-risk fossil sectors, facing:
- Stranded asset risk (post-2050 abrupt transition)
- Heat stress (outdoor extraction)
- Air pollution exposure (coal mining, refining)

---

## 7. Cross-Indicator Exposure Synthesis

### 7.1 The "Virtuous Cycle" (SSP1-1.9)

**Reinforcing Exposure Reductions Across Indicators**:

```
Renewable Energy Transition
   ↓
Lower GHG Emissions → Lower Air Pollution → Improved Worker Health (OHS)
   ↓                        ↓
Lower Water Consumption  Lower Land Use (No Coal Mining Expansion)
(No Thermal Cooling)          ↓
   ↓                     Biodiversity Co-Benefits
Circular Economy → Reduced Waste → Reduced Toxicity
```

**Example**: Coal plant phase-out (SSP1-1.9) **simultaneously reduces**:
- GHG: -4.7 Mt CO₂/year (to zero)
- Air pollution: -200 tonnes PM2.5, -5,000 tonnes SOx/year
- Water: -10 million m³/year (cooling water)
- OHS: -5 fatalities/year (mining accidents eliminated)
- Land: +500 ha (mine site restoration)

**Total Exposure Reduction**: **~$600M/year impact avoided** (cumulative across indicators)

---

### 7.2 The "Vicious Cycle" (SSP5-8.5)

**Reinforcing Exposure Escalations**:

```
Fossil Fuel Expansion
   ↓
High GHG Emissions → Extreme Heat → Worker Heat Stress (OHS ↑)
   ↓                        ↓
High Air Pollution     Agricultural Expansion (Deforestation)
(Coal Combustion)           ↓
   ↓                   Water Stress (Irrigation ↑)
Urban Sprawl → Waste ↑ → Toxicity ↑
```

**Example**: Coal plant expansion (SSP5-8.5) **simultaneously increases**:
- GHG: +2 Mt CO₂/year (new plant)
- Air pollution: +100 tonnes PM2.5, +3,000 tonnes SOx/year
- Water: +8 million m³/year (inefficient cooling)
- OHS: +3 fatalities/year (mining expansion)
- Land: -300 ha (mine expansion into forest)

**Total Exposure Escalation**: **~$450M/year impact** (cumulative, but with lower IVF initially due to weak pricing → **contingent liability** post-2050)

---

### 7.3 The "Muddling Through" (SSP2-4.5)

**Mixed Signals**:
- **Some sectors decarbonize** (electricity in OECD), **others lag** (heavy industry, aviation)
- **Exposure reductions in advanced economies**, **exposure increases in developing regions**
- **Net result**: Slow progress, insufficient to meet 1.5°C or 2°C targets

**Bifurcation Example** (Textile Sector):
- **EU Factory (SSP2-4.5, 2050)**: -30% water exposure (moderate recycling)
- **Bangladesh Factory (SSP2-4.5, 2050)**: +20% water exposure (expansion without technology)

---

## 8. Using SSP-Specific Exposures in T-Factors Framework

### 8.1 Enhanced Exposure Matrix Structure

**Backward-Looking** (Historical, single timeline):
```python
Exposure[Asset_ID, Indicator, Country, Sector, Year]
# Year: 2014-2030 (observed)
```

**Forward-Looking** (Scenario-dependent, multiple timelines):
```python
Exposure[Asset_ID, Indicator, Country, Sector, Year, SSP_Scenario]
# Year: 2030-2100 (projected)
# SSP_Scenario: SSP1-1.9, SSP2-4.5, SSP5-8.5
```

**Example Query**:
```python
# Same asset, same year, different scenarios
exposure_ssp1 = Exposure["Textile_Factory_India_01", "Water_Consumption", "IND", "C13", 2050, "SSP1-1.9"]
# Returns: 600,000 m³

exposure_ssp5 = Exposure["Textile_Factory_India_01", "Water_Consumption", "IND", "C13", 2050, "SSP5-8.5"]
# Returns: 2,160,000 m³

# Scenario delta (exposure risk):
delta = exposure_ssp5 - exposure_ssp1
# Returns: +1,560,000 m³ (+260% exposure risk)
```

---

### 8.2 Combined Impact Calculation (Exposure × IVF)

**Both Exposure and IVF are scenario-dependent**:

```python
Impact[Asset, Indicator, Year, SSP] = Exposure[Asset, Indicator, Year, SSP] × IVF[Indicator, Country, Year, SSP]
```

**Example (Textile Factory, India, Water, 2050)**:

| SSP | Exposure (m³) | IVF ($/m³) | Impact ($M) | **Impact Delta vs. SSP1** |
|-----|--------------|-----------|------------|--------------------------|
| **SSP1-1.9** | 600,000 | 24 | 14.4 | Baseline |
| **SSP2-4.5** | 1,120,000 | 48 | 53.8 | **+274%** (3.7×) |
| **SSP5-8.5** | 2,160,000 | 75 | 162.0 | **+1,025%** (11×) |

**Decomposition**:
- SSP5 vs. SSP1 **Exposure Effect**: +260% (2.16M / 0.6M)
- SSP5 vs. SSP1 **IVF Effect**: +213% ($75 / $24)
- **Combined Effect**: 3.6 × 3.13 = **11.3× total impact**

**Key Insight**: Exposure and IVF **compound** under scenarios → **Non-linear risk escalation**.

---

### 8.3 Scenario Sensitivity Analysis

**Risk Management Application**: Test asset/portfolio resilience across SSP range.

**Example (Coal Plant, Germany)**:

| SSP | Cumulative GHG 2020-2050 (Mt) | Avg SCC ($/tonne) | Total Impact ($B) | **Stranded Asset Risk** |
|-----|-------------------------------|------------------|------------------|------------------------|
| **SSP1-1.9** | 8 | 125 | 1.0 | Phase-out by 2040 (orderly transition) |
| **SSP2-4.5** | 70 | 90 | 6.3 | Phase-out by 2050 (manageable) |
| **SSP5-8.5** | 145 | 75 (→ $300 post-2050 shock) | 10.9 (→ $43.5 if shock) | **Extended operation → Catastrophic liability** |

**Portfolio Decision**: **Divest in SSP1/SSP2 scenarios** (avoid stranded assets). **Extreme risk** in SSP5 (contingent liability if crisis pricing activates post-2050).

---

### 8.4 Workflow Integration (Cross-Playbook)

**Step 1 (Playbook 2)**: Define asset-level exposure evolution under SSPs
- Water: 600k m³ (SSP1) vs. 2.16M m³ (SSP5)
- Land: 0 ha (SSP1) vs. 60k ha (SSP5)
- GHG: 8 Mt (SSP1) vs. 145 Mt (SSP5)

**Step 2 (Playbook 1)**: Retrieve scenario-specific IVFs
- Water (Ganges, 2050): $24/m³ (SSP1) vs. $75/m³ (SSP5)
- Land (Cerrado, 2050): $12M/ha (SSP1) vs. $3M→$7.5M (SSP5)
- GHG (SCC, 2050): $125/tonne (SSP1) vs. $75→$300/tonne (SSP5)

**Step 3 (Playbook 3)**: Apply vulnerability factors
- VF modulates impact based on asset-specific resilience
- Example: Factory with no water recycling → VF = 1.2 (20% penalty)

**Step 4 (Playbook 5)**: Attribute to portfolio
- Portfolio impact = Σ (Asset exposure × IVF × VF × Attribution share)

**Step 5 (Playbook 6)**: Calculate financial risk (TIR, contingent liabilities)
- TIR = Natural capital dependency / Impact
- Contingent liability = Exposure under SSP5 shock scenario

**Step 6 (Playbook 7)**: Strategic planning
- Identify high-exposure assets in SSP5
- Prioritize transition investments (water recycling, deforestation-free sourcing)
- Set science-based targets aligned to SSP1-1.9 pathway

---

## 9. Key Takeaways: Exposure Under SSPs

### 9.1 Water Consumption

| SSP | 2050 Global Withdrawal | **Exposure Trend** | Critical Threshold |
|-----|------------------------|-------------------|-------------------|
| **SSP1-1.9** | 3,000 km³/year (-23%) | Decoupling (efficiency) | Zero basins in absolute scarcity |
| **SSP2-4.5** | 4,050 km³/year (+3%) | Weak coupling | 5-8 basins in stress |
| **SSP5-8.5** | 5,700 km³/year (+45%) | Strong coupling | **18 basins >100% renewable availability** |

---

### 9.2 Land Use

| SSP | 2050 Net Forest Change | **Exposure Trend** | Critical Threshold |
|-----|------------------------|-------------------|-------------------|
| **SSP1-1.9** | +580M ha (restoration) | Zero deforestation by 2030 | Amazon **recovers** (reforestation) |
| **SSP2-4.5** | -20M ha (small loss) | Slowing deforestation | Leakage to non-EUDR markets |
| **SSP5-8.5** | -410M ha (massive loss) | Continued expansion | **Amazon tipping point** (15-20% loss → savannization) |

---

### 9.3 GHG Emissions

| SSP | 2050 Global Emissions | **Exposure Trend** | Paris Alignment |
|-----|----------------------|-------------------|----------------|
| **SSP1-1.9** | 10 Gt CO₂e (-75%) | Net zero by 2050 | ✓ 1.5°C aligned |
| **SSP2-4.5** | 25.5 Gt (-36%) | Peak ~2025, slow decline | ✗ 2.5°C (overshoot) |
| **SSP5-8.5** | 63 Gt (+58%) | Continued growth | ✗ 4-5°C (catastrophic) |

---

### 9.4 Air Pollution

| SSP | 2050 PM2.5 Emissions | **Exposure Trend** | Health Impact |
|-----|---------------------|-------------------|--------------|
| **SSP1-1.9** | 5 Mt (-80%) | Strict abatement | Near-zero premature deaths (air pollution) |
| **SSP2-4.5** | 12 Mt (-52%) | Moderate abatement | 3-4M deaths/year (WHO) |
| **SSP5-8.5** | 32 Mt (+28%) | Weak regulation | **8-10M deaths/year** (doubling vs. 2020) |

---

### 9.5 Occupational Health & Safety

| SSP | 2050 Mining LTIR | **Exposure Trend** | Climate Stress Factor |
|-----|-----------------|-------------------|--------------------|
| **SSP1-1.9** | 0.5 (-86%) | Automation, safety culture | Minimal (cooler climate) |
| **SSP2-4.5** | 2.5 (-29%) | Incremental improvements | Moderate heat stress |
| **SSP5-8.5** | 5.5 (+57%) | Labor-intensive, weak enforcement | **Critical: Outdoor work impossible (wet-bulb >35°C)** |

---

### 9.6 Portfolio Risk Implications

**Single Asset Example (Textile Factory, India)**:

| Risk Metric | SSP1-1.9 (2050) | SSP5-8.5 (2050) | **Risk Multiplier (SSP5 / SSP1)** |
|-------------|----------------|----------------|----------------------------------|
| **Water Impact** | $14.4M | $162.0M | **11.3×** |
| **Stranded Asset Probability** | 5% (transition complete) | 60% (post-2050 shock) | **12×** |
| **Regulatory Risk** | Low (compliance achieved) | Extreme (EUDR violations, fines) | **High** |

**Key Insight**: SSP5-8.5 creates **non-linear, compounding risks** across multiple indicators and timescales.

---

## 10. Implementation Guidance

### 10.1 Data Requirements for Forward-Looking Exposure

**Minimum**:
- Asset-level activity projections (production volumes, capacity plans)
- Sector-level technology adoption assumptions (from IEA, IPCC)
- Regional regulatory roadmaps (coal phase-outs, EUDR, carbon pricing)

**Preferred**:
- Asset-level transition plans (capex, technology roadmaps)
- Management forecasts (5-10 year strategic plans)
- Scenario-specific assumptions (aligned to NGFS, IPCC)

---

### 10.2 Exposure Projection Workflow

1. **Baseline (2020-2025)**: Use observed exposure data (Tier 1-2)
2. **Short-Term (2025-2030)**: Use management guidance + sector trends
3. **Medium-Term (2030-2040)**: Apply SSP-aligned assumptions (technology, regulation)
4. **Long-Term (2040-2050)**: Scenario-divergent pathways (aggressive vs. conservative)

---

### 10.3 Uncertainty Management

**Exposure projections have higher uncertainty than IVFs**:
- IVF uncertainty: ±50-150% (Playbook 1)
- **Exposure uncertainty (forward-looking)**: ±100-300% (technology adoption, regulatory enforcement unknown)

**Mitigation**:
- **Sensitivity analysis**: Test multiple technology adoption rates
- **Probabilistic modeling**: Assign likelihood to SSP scenarios (e.g., 30% SSP1, 50% SSP2, 20% SSP5)
- **Regular updates**: Refresh exposure projections every 3-5 years (align to strategic planning cycles)

---

### 10.4 Governance (Link to Playbook 4)

**Exposure Projection Approval**:
- **Asset-Level**: Approved by asset managers, sustainability teams
- **Portfolio-Level**: Reviewed by risk committees, investment committees
- **Board-Level**: Scenario analysis presented in TCFD/TNFD disclosures

**Audit Trail**:
- Document assumptions (technology adoption rates, regulatory timelines)
- Version control (track changes in exposure projections over time)
- Third-party assurance (for public disclosures)

---

**Document Version**: 2.1 (SSP Scenario Integration)
**Last Updated**: 2026-01-04
**Section Added**: PART D (SSP Scenario Integration & Exposure Evolution)

---

## References

### Frameworks

- **TCFD** (2023). *Strategy Resilience and Scenario Analysis*.
- **TNFD** (2023). *Guidance on Scenario Analysis*. https://tnfd.global
- **GHG Protocol** (2015). *Corporate Value Chain (Scope 3) Standard*.

### Data Sources

**Environmental**:
- **IEA** (2024). *Energy Technology Perspectives*. https://www.iea.org
- **Ecoinvent** (2023). *LCA Database v3.9*. https://ecoinvent.org
- **WRI Aqueduct** (2023). *Water Risk Atlas*. https://www.wri.org/aqueduct
- **Global Forest Watch** (2024). https://www.globalforestwatch.org

**Social**:
- **ILO** (2023). *International Labour Statistics*. https://ilostat.ilo.org
- **WHO** (2020). *Global Burden of Disease*.
- **LinkedIn Learning** (2024). *Workplace Learning Report*.

---

## Document Navigation

**Previous**: [Playbook 1 — Impact Value Factors (IVF)](PLAYBOOK_1_IMPACT_VALUE_FACTORS.md)
**Next**: [Playbook 3 — Vulnerability Factors & Scenarios](PLAYBOOK_3_VULNERABILITY_SCENARIOS.md)

**Related**:
- [Playbook 4 — Governance & Risk Management](PLAYBOOK_4_GOVERNANCE_RISK_MANAGEMENT.md)
- [Playbook 5 — Portfolio Attribution](PLAYBOOK_5_PORTFOLIO_ATTRIBUTION.md)

---

**Document Version**: 2.1 (Enhanced Data Sources)
**Last Updated**: 2026-01-04
**Next Review**: 2026-07-04

**Major Enhancements (v2.1)**:
- Comprehensive regional database integration (MapBiomas, NALCMS, Digital Earth Africa, TERN, JAXA)
- Third-party asset data sources (Climate TRACE, Fineprint, Global Dam Watch)
- Enhanced data portals appendix with 13+ regional databases
- Risk exposure proxies for social indicators (ILAB, KnowTheChain)

**Author**: Dimitrij Euler (https://github.com/d1mitrij/t_factors)
