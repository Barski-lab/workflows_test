#!/usr/bin/env bash
echo "Produce Homer Heatmap"
cwltool --debug ../../../../../../tools/homer-annotate-peaks-hist.cwl homer-annotate-peaks-hist-1.json
cwltool --debug ../../../../../../tools/homer-annotate-peaks-hist.cwl homer-annotate-peaks-hist-2.json

