#!/usr/bin/env bash
# create_issues.sh — bootstrap GitHub Issues for arcsix-datamap open items
#
# Prerequisites:
#   brew install gh
#   gh auth login
#
# Run once from the repo root:
#   bash create_issues.sh
#
# Issues are idempotent — gh will error (and skip) if a title already exists.

REPO="konradsebastian/arcsix-datamap"

echo "=== Creating labels ==="
gh label create "missing-video"     --color "#e57a00" --description "Video link not yet added"           --repo $REPO 2>/dev/null || true
gh label create "missing-data-link" --color "#0075ca" --description "Data archive URL not yet confirmed" --repo $REPO 2>/dev/null || true
gh label create "missing-doi"       --color "#cfd3d7" --description "DOI or citation missing"            --repo $REPO 2>/dev/null || true
gh label create "missing-readme"    --color "#7057ff" --description "Instrument README not yet linked"   --repo $REPO 2>/dev/null || true
gh label create "needs-PI-input"    --color "#d93f0b" --description "Waiting for PI to confirm"          --repo $REPO 2>/dev/null || true
gh label create "ready-to-implement"--color "#0e8a16" --description "Info received, ready to add to map" --repo $REPO 2>/dev/null || true

echo ""
echo "=== Creating video link issues ==="

# Morning session (transcript1.txt covers 00:00–03:28)
gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Shook — Data Locations / Status (9:50)" \
  --body "Clip: \`D1_0950_Shook_DataStatus.mp4\` trimmed and ready. Needs Google Drive upload and link added to datamap 9:50 slot and EarthData/ASDC instrument row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Bennett — MetNav (10:20)" \
  --body "Clip: \`D1_1020_Bennett_MetNav_approx.mp4\` — timestamp approximate, needs trimming. Add link to 10:20 agenda slot and MetNav instrument row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Thornhill — TAMMS (10:26)" \
  --body "Clip: \`D1_1026_Thornhill_TAMMS_approx.mp4\` — timestamp approximate. Add link to 10:26 agenda slot and TAMMS instrument row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Lawson — Microphysics / FCDP / 2DS (10:34)" \
  --body "Clip: \`D1_1034_Lawson_Microphysics_approx.mp4\` — timestamp approximate. Add link to 10:34 agenda slot and all Lawson instrument rows (FCDP, 2DS, CIP, etc.)." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Perkins — INP (10:54)" \
  --body "Clip: \`D1_1054_Perkins_INP_approx.mp4\` — timestamp approximate. Add link to 10:54 agenda slot and INP instrument row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Wang J. — FIMS (11:02)" \
  --body "Clip: \`D1_1102_Wang_FIMS_approx.mp4\` — timestamp approximate. Add link to 11:02 agenda slot and FIMS instrument row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Ziemba — LARGE (11:10)" \
  --body "Clip: \`D1_1110_Ziemba_LARGE_approx.mp4\` — timestamp approximate. Add link to 11:10 slot and LARGE/SP2/PILS rows." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Brown — PILS / PUTLS (11:20)" \
  --body "Clip: \`D1_1120_Brown_PUTLS_approx.mp4\` — timestamp approximate. Add link to 11:20 slot and PILS/PUTLS rows." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Diskin — DLH (11:28)" \
  --body "Clip: \`D1_1128_Diskin_DLH_approx.mp4\` — timestamp approximate. Add link to 11:28 slot and DLH instrument row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Zuidema — GVR (11:28)" \
  --body "Clip: \`D1_1128_Zuidema_GVR_approx.mp4\` — timestamp approximate. Add link to 11:28 slot and GVR/microwave row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Sorooshian — DASH-SP (11:36)" \
  --body "Clip: \`D1_1136_Sorooshian_DASH_approx.mp4\` — timestamp approximate. Add link to 11:36 slot and DASH-SP row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Pratt — ATOFMS (11:44)" \
  --body "Clip: \`D1_1144_Selimovic_ATOFMS_approx.mp4\` — timestamp approximate. Add link to 11:44 slot and ATOFMS row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Skov — Villum / ground site (11:52, remote)" \
  --body "Clip: \`D1_1152_Skov_Villum_approx.mp4\` — timestamp approximate, remote presenter. Add link to 11:52 slot and Villum row." 2>/dev/null || true

# Afternoon session (transcript3.txt covers lunch return onward)
gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Hofton — LVIS (13:00)" \
  --body "Clip: \`D1_1300_Hofton_LVIS.mp4\` ready. Upload to Drive and add link to 13:00 slot and LVIS row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Bohn / Bender — AVIRIS-NG (13:08)" \
  --body "Clip: \`D1_1308_Bohn_AVIRISNG.mp4\` ready. Add link to 13:08 slot and AVIRIS-NG row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Meyer / Peterson — Cloud Optical Properties (13:16)" \
  --body "Clip: \`D1_1316_Meyer_Retrieval.mp4\` ready. Add link to 13:16 slot and satellite cloud row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Wang Z. — MARLi lidar (13:24)" \
  --body "Clip: \`D1_1324_Wang_MARLi.mp4\` ready. Add link to 13:24 slot and MARLi row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Cairns / Ottaviani — RSP (13:34, remote)" \
  --body "Clip: \`D1_1334_Cairns_RSP.mp4\` ready. Add link to 13:34 slot and RSP row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Hirata / Chen — SSFR (13:50)" \
  --body "Clip: \`D1_1350_Hirata_SSFR.mp4\` ready. Add link to 13:50 slot and SSFR row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Bucholtz — BBR (13:58, remote)" \
  --body "Clip: \`D1_1358_Bucholtz_BBR.mp4\` ready. Add link to 13:58 slot and BBR row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Nehrir / Crosbie — HALO lidar (14:06)" \
  --body "Clip: \`D1_1406_Nehrir_HALO.mp4\` ready. Add link to 14:06 slot and HALO row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Thornhill — AVAPS dropsondes (14:14)" \
  --body "Clip: \`D1_1414_Thornhill_AVAPS.mp4\` ready. Add link to 14:14 slot and AVAPS row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Taylor — Ice tethered buoys (14:22)" \
  --body "Clip: \`D1_1422_Taylor_Buoys.mp4\` ready. Add link to 14:22 slot and buoys row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Calì Quaglia — THAAO ground site (14:30)" \
  --body "Clip: \`D1_1430_CaliquagliaTHAAO.mp4\` ready. Add link to 14:30 slot and THAAO row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Kahn / Zamora — Surface observations (14:38)" \
  --body "Clip: \`D1_1438_Kahn_Zamora_SurfaceObs.mp4\` ready. Add link to 14:38 slot and surface obs rows." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Kahn — Raikoke volcano aerosol (14:54)" \
  --body "Clip: \`D1_1454_Kahn_Volcano.mp4\` ready. Add link to 14:54 slot." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Crosbie / Sorooshian — ACI (15:15)" \
  --body "Clip: \`D1_1515_Sorooshian_ACI.mp4\` ready. Add link to 15:15 slot and ACI science row." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-video" \
  --title "Video: Boisvert / Meyer — Cryosphere / sea ice (15:40)" \
  --body "Clip: \`D1_1540_Boisvert_Meyer_Cryo.mp4\` ready. Add link to 15:40 slot and sea ice row." 2>/dev/null || true

echo ""
echo "=== Creating data link issues ==="

gh issue create --repo $REPO --label "missing-data-link,needs-PI-input" \
  --title "Data link: G-III navigation / MetNav (ASDC)" \
  --body "G-III MetNav data location needs confirmed archive URL on ASDC/EarthData. Contact Bennett or data manager." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-data-link,needs-PI-input" \
  --title "Data link: Lear jet navigation data" \
  --body "Lear jet MetNav / housekeeping data archive URL not yet confirmed. Contact PI." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-data-link,needs-PI-input" \
  --title "Data link: FIMS aerosol size distribution (Wang J.)" \
  --body "EarthData/ASDC link for FIMS data not yet confirmed." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-data-link,needs-PI-input" \
  --title "Data link: INP ice-nucleating particles (Perkins)" \
  --body "EarthData link for INP data not yet confirmed. May be at Arctic Data Center." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-data-link,needs-PI-input" \
  --title "Data link: ATOFMS single-particle chemistry (Pratt)" \
  --body "EarthData/ASDC link for ATOFMS data not yet confirmed." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-data-link,needs-PI-input" \
  --title "Data link: Villum / ground site data (Skov)" \
  --body "Archive URL for Villum Research Station data not confirmed. May be at Arctic Data Center." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-data-link,needs-PI-input" \
  --title "Data link: MARLi lidar (Wang Z.)" \
  --body "EarthData/ASDC link for MARLi data not yet confirmed." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-data-link,needs-PI-input" \
  --title "Data link: THAAO ground site (Calì Quaglia)" \
  --body "Archive URL for THAAO (Thule High Arctic Atmospheric Observatory) data not confirmed." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-data-link,needs-PI-input" \
  --title "Data link: Ice-tethered buoys (Taylor / Polashenski)" \
  --body "Archive URL for ice-tethered buoy data not yet confirmed. May be NSIDC." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-data-link,needs-PI-input" \
  --title "Data link: AVAPS dropsondes (Thornhill)" \
  --body "EarthData/ASDC link for AVAPS dropsonde data not yet confirmed." 2>/dev/null || true

echo ""
echo "=== Creating README / DOI issues ==="

gh issue create --repo $REPO --label "missing-readme,needs-PI-input" \
  --title "README missing: two instruments in datamap lack linked README files" \
  --body "Two instrument entries show 📄 ReadMe placeholders. Identify which instruments and request README files from PIs." 2>/dev/null || true

gh issue create --repo $REPO --label "missing-doi,needs-PI-input" \
  --title "DOI missing: G-III and Lear jet datasets lack DOIs" \
  --body "G-III and Lear jet navigation datasets show DOI placeholders. Confirm DOIs from data managers once data is published on ASDC." 2>/dev/null || true

echo ""
echo "=== Creating stale / catalog-link issues ==="

gh label create "stale-link"        --color "#b60205" --description "Existing link is broken or outdated" --repo $REPO 2>/dev/null || true
gh label create "catalog-link"      --color "#f9a825" --description "Link leads to EarthData catalog page, not granule search" --repo $REPO 2>/dev/null || true

gh issue create --repo $REPO --label "stale-link,needs-PI-input" \
  --title "Stale data link: THAAO archive (thuleatmos-it.it)" \
  --body "The THAAO archive link in the datamap points to \`https://thuleatmos-it.it\` which is stale / unreachable. Please confirm the current data archive URL with PI Calì Quaglia and update the datamap. (High priority — link is broken for users today.)" 2>/dev/null || true

gh issue create --repo $REPO --label "catalog-link,missing-data-link" \
  --title "Catalog-only link: P-3B In-Situ Cloud Data (FCDP, CPI, HVPS-4, WCM-2000)" \
  --body "Four instruments currently link to the EarthData catalog landing page (\`larc-cloud-arcsix-cloud-aircraftinsitu-p3b-data-1\`) rather than a filtered granule search. Identify the granule-ID patterns for FCDP, CPI, HVPS-4, and WCM-2000 in collection \`C3466130093-LARC_CLOUD\` and replace with direct \`search.earthdata.nasa.gov/search/granules?p=...&pg[0][id]=*INSTRUMENT*\` URLs. See LARGE links as the reference pattern." 2>/dev/null || true

gh issue create --repo $REPO --label "catalog-link,missing-data-link" \
  --title "Catalog-only link: Learjet In-Situ Cloud Data (FCDP, 2D-S, HVPS-4, Nevzorov)" \
  --body "Four Learjet cloud-probe instruments link to the EarthData catalog landing page (\`larc-cloud-arcsix-cloud-aircraftinsitu-learjet-data-1\`) rather than a filtered granule search. Identify the collection ID and granule-ID patterns and replace with direct granule search URLs." 2>/dev/null || true

gh issue create --repo $REPO --label "catalog-link,missing-data-link" \
  --title "Catalog-only link: KPR — K-Band Precipitation Radar (Learjet)" \
  --body "KPR currently links to the EarthData catalog landing page (\`larc-cloud-arcsix-aircraftremotesensing-learjet-kpr-data-1\`) rather than a filtered granule search. Identify the collection ID and granule-ID pattern for KPR and replace with a direct \`search.earthdata.nasa.gov/search/granules\` URL." 2>/dev/null || true

echo ""
echo "=== Done ==="
echo "View issues at: https://github.com/${REPO}/issues"
