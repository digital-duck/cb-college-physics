#!/usr/bin/env bash
# Sync generated artifacts from SPL.py into public/domains/.
# Run from any directory inside the concept-book repo.
set -euo pipefail

SPL_DIR="${SPL_DIR:-$HOME/projects/digital-duck/SPL.py}"
SPL_YAML="$SPL_DIR/cookbook/74_concept_book"
REPO_ROOT="$(cd "$(dirname "$0")/.." && pwd)"
DEST="$REPO_ROOT/public/domains"
GRAPH_TOOL="$REPO_ROOT/scripts/concept_graph.py"

declare -A LEVEL_MAP=(
  [college_physics_ch01]=core
  [college_physics_ch02]=core
  [college_physics_ch03]=core
  [college_physics_ch04]=core
  [college_physics_ch05]=core
  [college_physics_ch06]=core
  [college_physics_ch07]=core
  [college_physics_ch08]=core
  [college_physics_ch09]=core
  [college_physics_ch10]=core
  [college_physics_ch11]=core
  [college_physics_ch12]=core
  [college_physics_ch13]=core
  [college_physics_ch14]=core
  [college_physics_ch15]=core
  [college_physics_ch16]=core
  [college_physics_ch17]=core
  [college_physics_ch18]=core
  [college_physics_ch19]=core
  [college_physics_ch20]=core
  [college_physics_ch21]=core
  [college_physics_ch22]=core
  [college_physics_ch23]=core
  [college_physics_ch24]=core
  [college_physics_ch25]=core
  [college_physics_ch26]=core
  [college_physics_ch27]=core
  [college_physics_ch28]=core
  [college_physics_ch29]=core
  [college_physics_ch30]=core
  [college_physics_ch31]=core
  [college_physics_ch32]=core
  [college_physics_ch33]=core
  [college_physics_ch34]=core
)

DOMAINS=("${!LEVEL_MAP[@]}")
LANG="${LANG:-en}"

echo "Source YAML : $SPL_YAML"
echo "Destination : $DEST"
echo ""

for domain in "${DOMAINS[@]}"; do
  level="${LEVEL_MAP[$domain]}"
  variant="$level.$LANG"
  mkdir -p "$DEST/$domain/input" "$DEST/$domain/output/$variant/html"

  # Sync graph.yaml from SPL.py
  if [ -f "$SPL_YAML/${domain}_graph.yaml" ]; then
    cp "$SPL_YAML/${domain}_graph.yaml" "$DEST/$domain/input/graph.yaml"
    echo "  ✓  $domain/input/graph.yaml"
  else
    echo "  ✗  $domain/input/graph.yaml (not found)"
  fi

  # Generate graph.html locally from graph.yaml
  if [ -f "$DEST/$domain/input/graph.yaml" ]; then
    python3 "$GRAPH_TOOL" --domain "$DEST/$domain/input/graph.yaml" \
      visualize --format html --output "$DEST/$domain/output/graph.html"
    echo "  ✓  $domain/output/graph.html (generated)"
  fi
done

echo ""
echo "Sync complete.  Run 'npm run dev' to preview."
