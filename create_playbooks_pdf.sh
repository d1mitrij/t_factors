#!/bin/bash
# This script concatenates the framework playbook markdown files and converts them to a single PDF.

cat PLAYBOOK_1_IMPACT_VALUE_FACTORS.md \
    PLAYBOOK_2_EXPOSURE_FACTORS.md \
    PLAYBOOK_3_VULNERABILITY_SCENARIOS.md \
    PLAYBOOK_4_GOVERNANCE_RISK_MANAGEMENT.md \
    PLAYBOOK_5_PORTFOLIO_ATTRIBUTION.md \
    PLAYBOOK_6_FINANCE_INTEGRATION.md \
    PLAYBOOK_7_STRATEGY_TRANSITION_PLANNING.md | pandoc --pdf-engine=xelatex -o framework_playbooks.pdf