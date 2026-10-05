#!/usr/bin/env bash
# Reproduces the LOCAL (headless Rive CLI 1.3.0) frames. Run from rive/spike-01.
# Click puppet body = (150,315). Reset button = (250,455). Each K = one click + 700ms settle.
set -e; mkdir -p build/ev
K="--pointer=click@150,315 --pointer=move@20,20 --advance=700ms"; S4="$K $K $K $K"
C="--pointer=click@150,315 --pointer=move@20,20"; R="--pointer=click@250,455 --pointer=move@20,20"
shot(){ n=$1; shift; rive . --screenshot=build/ev/$n.png --quiet --advance=1 "$@"; }
shot 01-sync-up $C --advance=300ms
shot 02-sync-down $C --advance=300ms $C --advance=300ms
shot 03-delay-up-100ms $S4 $C --advance=100ms
shot 04-delay-up-700ms $S4 $C --advance=700ms
shot 05-delay-down-100ms $S4 $K $C --advance=100ms
shot 06-delay-down-700ms $S4 $K $C --advance=700ms
shot 07-hold-prep-up $S4 $K $K $K
shot 08-hold-puppet-down-300ms $S4 $K $K $K $C --advance=300ms
shot 09-hold-puppet-down-1500ms $S4 $K $K $K $C --advance=1500ms
shot 10-hold-released-2500ms $S4 $K $K $K $C --advance=2500ms
shot 11-reset-from-hold $S4 $K $K $K $C --advance=300ms $R --advance=500ms
shot 13-after-reset-sync-again $S4 $K $K $K $C --advance=300ms $R --advance=500ms $C --advance=300ms
