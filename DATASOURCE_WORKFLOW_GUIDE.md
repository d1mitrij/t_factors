# Datasource Workflow Guide

**Version**: 1.0
**Last Updated**: 2026-01-03
**Purpose**: Direct datasource editing workflow for value factor coefficients

---

## Overview

As of **2026-01-03**, the value factor generation scripts have been streamlined to **read directly from source files** in the `t_factors/datasource/` directory. This eliminates the need for manual file copying and ensures changes to source data are immediately reflected when scripts are run.

### Benefits

✅ **No Manual File Copying** - Edit source files directly, run scripts
✅ **Single Source of Truth** - Datasource files are the authoritative reference
✅ **Version Control Friendly** - Track changes to source data in Git
✅ **Reduced Errors** - No risk of forgetting to copy updated files
✅ **Faster Iteration** - Immediate feedback when testing coefficient changes

---

## Configured Indicators

### 1. Air Pollution (UBA Methodology)

**Status**: ✅ **Configured and Operational**

**Datasource File**: `t_factors/datasource/uba_air_pollution_costs.csv`

**Format**: CSV (comma-separated values)

**Key Columns**:
- `Pollutant`: PM2.5, PM10, NOx, SOx, NMVOC, NH3
- `Total_eur_per_tonne`: Damage cost in EUR per tonne (2016 EUR, Germany reference)

**Workflow**:
```bash
# 1. Edit datasource file (Excel, text editor, etc.)
open t_factors/datasource/uba_air_pollution_costs.csv

# 2. Modify the Total_eur_per_tonne column for desired pollutants

# 3. Run script directly (no copying needed!)
cd value-factors
python3 008_241001_prepare_AirPollution_my.py

# 4. Output generated in value-factors/output/
```

**Configuration** (`value-factors/config.yaml`):
```yaml
air_pollution:
  input_file: ../t_factors/datasource/uba_air_pollution_costs.csv
```

**Example Edit**:
```csv
Pollutant,Total_eur_per_tonne,Category,Source
PM2.5,20000,Particulate Matter,UBA 2020
PM10,15000,Particulate Matter,UBA 2020
NOx,12500,Acidifying,UBA 2020
SOx,11000,Acidifying,UBA 2020
NMVOC,1100,Ozone Precursor,UBA 2020
NH3,8500,Acidifying,UBA 2020
```

**Script Behavior**:
- Reads CSV directly from datasource
- Converts EUR → USD (exchange rate)
- Converts per tonne → per kg (÷ 1000)
- Applies income elasticity by country: `Coefficient = Base × (GDP_country / GDP_reference)^0.8`
- Generates coefficients for 188 countries × 6 pollutants × 24 years

**Documentation**: See `02_PLAYBOOK_AIR_POLLUTION.md` Section 3.1

---

### 2. Water Consumption (AWARE Methodology)

**Status**: ✅ **Configured and Operational**

**Datasource File**: `t_factors/datasource/AWARE20_Countries_and_Regions.xlsx`

**Format**: Excel workbook (WULCA AWARE 2.0 database)

**Key Sheet**: `CFs_unspecified` (unspecified water use - applicable to all sectors)

**Key Columns**:
- `GLAM_ISO3`: ISO3 country codes (USA, DEU, IND, etc.)
- `Annual`: Annual average AWARE characterization factor (0.1 to 100+)
- `Jan-Dec`: Monthly AWARE factors (for seasonal analysis, not currently used)

**Workflow**:
```bash
# 1. Open datasource file in Excel
open t_factors/datasource/AWARE20_Countries_and_Regions.xlsx

# 2. Navigate to 'CFs_unspecified' sheet

# 3. Find country by GLAM_ISO3 code

# 4. Edit the 'Annual' column value (AWARE factor)
#    - Range: 0.1 (water-abundant) to 100+ (extreme scarcity)
#    - Example: India = 36.2, Germany = 2.31, USA = 33.7

# 5. Save file

# 6. Run script directly (no copying needed!)
cd value-factors
python3 009_241001_prepare_WaterConsumption_my.py

# 7. Output generated in value-factors/output/
```

**Configuration** (`value-factors/config.yaml`):
```yaml
water_consumption:
  input_file: ../t_factors/datasource/AWARE20_Countries_and_Regions.xlsx
```

**Example Data** (CFs_unspecified sheet):
```
GLAM_ISO3  | GLAM_country_name | Annual | Jan   | Feb   | ...
-----------|-------------------|--------|-------|-------|----
USA        | United States     | 33.70  | 12.50 | 15.30 | ...
DEU        | Germany           | 2.31   | 1.85  | 1.92  | ...
IND        | India             | 36.20  | 45.60 | 52.30 | ...
BRA        | Brazil            | 5.58   | 3.20  | 2.85  | ...
```

**Script Behavior**:
- Reads Excel directly from datasource (`CFs_unspecified` sheet)
- Extracts `GLAM_ISO3` and `Annual` columns
- Applies base shadow price: `Coefficient = $1.00/m³ × AWARE_factor`
- Generates coefficients for 188 countries × 24 years

**Current Implementation Note**: The loader applies a simplified base shadow price of $1.00/m³. The full WifOR methodology (documented in playbook) uses separate Economic (agricultural productivity loss) and Health (DALY-based) damage components, both scaled by AWARE factors.

**Documentation**: See `06_PLAYBOOK_WATER_CONSUMPTION.md` Section 4.1

---

## Alternative Sheets (AWARE File)

The AWARE datasource includes alternative sheets for specialized use cases:

### Agricultural Water Use
**Sheet**: `CFs_agri`
**Use Case**: Water consumption specifically for agricultural irrigation
**Note**: Currently not used by scripts (uses `CFs_unspecified` for all sectors)

### Non-Agricultural Water Use
**Sheet**: `CFs_nonagri`
**Use Case**: Industrial and municipal water consumption
**Note**: Currently not used by scripts

### To switch sheets** (advanced):
Edit `value_factor_utils.py` line 454:
```python
# Current (default):
df = pd.read_excel(file_path, sheet_name='CFs_unspecified', header=0)

# For agricultural-specific:
df = pd.read_excel(file_path, sheet_name='CFs_agri', header=0)

# For non-agricultural:
df = pd.read_excel(file_path, sheet_name='CFs_nonagri', header=0)
```

---

## Legacy Input Files (Deprecated)

The following files in `value-factors/input_data/` are **no longer used** as of 2026-01-03:

### Air Pollution (OLD)
❌ `220707_Air pollution_update.xlsx`
- **Replaced by**: `../t_factors/datasource/uba_air_pollution_costs.csv`
- **Status**: Retained for historical reference only
- **Format**: Excel with `WifOR_form` sheet (long format)

### Water Consumption (OLD)
❌ `220511_Water consumption_update.xlsx`
- **Replaced by**: `../t_factors/datasource/AWARE20_Countries_and_Regions.xlsx`
- **Status**: Retained for historical reference only
- **Format**: Excel with `Ergebnisse_final` sheet (wide format with Economic + Health components)

**Important**: These files are no longer read by scripts. All changes must be made to the datasource files in `t_factors/datasource/`.

---

## Troubleshooting

### Issue: Script can't find datasource file

**Symptom**:
```
Error: AWARE water data file not found at ../t_factors/datasource/AWARE20_Countries_and_Regions.xlsx
```

**Solution**:
```bash
# Verify you're running from value-factors directory
cd /path/to/transitionvaluation/value-factors

# Check datasource file exists
ls -la ../t_factors/datasource/

# If missing, verify repository structure
```

---

### Issue: Changes to datasource not reflected in output

**Symptom**: Modified AWARE factors but output coefficients unchanged

**Possible Causes**:
1. **Edited wrong file** - Make sure you edited the datasource file, not the legacy input file
2. **Wrong sheet** - Verify you're editing `CFs_unspecified` sheet (AWARE)
3. **Didn't save** - Ensure Excel file was saved before running script
4. **Cached output** - Delete old output files and re-run

**Solution**:
```bash
# Delete old output
rm value-factors/output/MonWaterCon_*

# Verify datasource file timestamp
ls -lh ../t_factors/datasource/AWARE20_Countries_and_Regions.xlsx

# Re-run script
python3 009_241001_prepare_WaterConsumption_my.py
```

---

### Issue: Invalid country codes

**Symptom**:
```
Warning: Country code XYZ not found in AWARE data
```

**Solution**:
- AWARE uses `GLAM_ISO3` codes (188 countries + regions)
- Standard ISO3 codes: USA, DEU, GBR, FRA, IND, CHN, BRA, etc.
- Check `GLAM_ISO3` column in AWARE file for valid codes
- Some regions may be aggregated (e.g., "EUR" for Europe)

---

## Configuration Reference

All datasource paths are configured in `value-factors/config.yaml`:

```yaml
indicators:
  air_pollution:
    input_file: ../t_factors/datasource/uba_air_pollution_costs.csv

  water_consumption:
    input_file: ../t_factors/datasource/AWARE20_Countries_and_Regions.xlsx

  # Other indicators still use input_data/ (not yet migrated)
  waste:
    input_file: input_data/220509_Waste figures merged_update.xlsx

  land_use:
    input_file: input_data/230317_Landuse_update_ZK.xlsx

  # ... etc
```

---

## Future Migration Plan

**Indicators to migrate** (see `11_INPUT_FILE_STANDARDIZATION_GUIDE.md`):

### Q1 2026 (Priority: HIGH)
- Water Pollution - Migrate to standardized long format in datasource
- Land Use - Migrate to standardized long format in datasource

### Q2 2026 (Priority: MEDIUM)
- Waste - Evaluate datasource migration
- Training - Evaluate datasource migration
- OHS - Evaluate datasource migration

### Benefits of Full Migration:
- **Consistency**: All indicators use same workflow
- **Transparency**: Source data clearly separated from processing scripts
- **Reproducibility**: Easy to trace coefficient origins
- **Collaboration**: Multiple users can edit datasource files without conflicts

---

## Version History

| Date | Version | Changes |
|------|---------|---------|
| 2026-01-03 | 1.0 | Initial datasource workflow implementation for Air Pollution and Water Consumption |

---

## References

- **Air Pollution Playbook**: `02_PLAYBOOK_AIR_POLLUTION.md` (Section 3.1)
- **Water Consumption Playbook**: `06_PLAYBOOK_WATER_CONSUMPTION.md` (Section 4.1)
- **Configuration File**: `value-factors/config.yaml`
- **Loader Functions**: `value-factors/value_factor_utils.py`
  - `load_uba_air_data()` (lines 388-434)
  - `load_aware_water_data()` (lines 437-498)

---

**Questions or Issues?**
Contact: dimitrij.euler@greenings.org
Repository: https://github.com/Greenings/transitionvaluation
