#!/bin/bash
#
#  --- Copy LoopKit dependency directories from LoopWorkspace to OpeniAPS/Dependencies ---
#
# Before running the script, please clone LoopWorkspace into the same parent directory as Open-iAPS
#
# Launch the script from Open-iAPS/Dependencies by typing /bin/bash update_loopkit_dependencies.sh
#
# or with rexcutable permission: ./update_loopkit_dependencies.sh
#
# Modify permission by typing chmod a+x update_loopkit_dependencies.sh
#

echo ""
echo "Writing git references to Open-iAPS/Dependencies/LoopKit_dependencies.txt"
echo "Copying LoopKit dependencies to Open-iAPS/Dependencies"
echo ""

cd ../../LoopWorkspace

# Retrieves version, branch, and tag information from Git
git_version=$(git log -1 --format="%h" --abbrev=7)
git_branch=$(git symbolic-ref --short -q HEAD)
git_tag=$(git describe --tags --exact-match 2>/dev/null)

# Determines branch or tag information
git_branch_or_tag="${git_branch:-${git_tag}}"

# Write to Open-iAPS/Dependencies/LoopKit_dependencies.txt

echo "LoopKit dependencies are copied from LoopWorkspace ${git_branch_or_tag}:" > ../Open-iAPS/Dependencies/LoopKit_dependencies.txt
git log -1 --oneline --abbrev=7 >> ../Open-iAPS/Dependencies/LoopKit_dependencies.txt
echo "" >> ../Open-iAPS/Dependencies/LoopKit_dependencies.txt

cd CGMBLEKit >> ../Open-iAPS/Dependencies/LoopKit_dependencies.txt
echo "CGMBLEKit:" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
git log -1 --oneline --abbrev=7 >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
echo "" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
cd ..

cd dexcom-share-client-swift
echo "dexcom-share-client-swift:" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
git log -1 --oneline --abbrev=7 >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
echo "" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
cd ..

cd G7SensorKit
echo "G7SensorKit:" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
git log -1 --oneline --abbrev=7 >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
echo "" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
cd ..

cd LibreTransmitter
echo "LibreTransmitter:" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
git log -1 --oneline --abbrev=7 >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
echo "" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
cd ..

cd LoopKit
echo "LoopKit:" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
git log -1 --oneline --abbrev=7 >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
echo "" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
cd ..

cd MinimedKit
echo "MinimedKit:" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
git log -1 --oneline --abbrev=7 >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
echo "" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
cd ..

echo "Skipped copying dependency, MKRingProgressView is now a Swift package: 'Use MKRingProgressView from swift package' in LoopWorkspace 00f7b05c3b451ee416a98a60312f7295f4dd0813 (05/06/2023)" >> ../Open-iAPS/Dependencies/LoopKit_dependencies.txt
#cd MKRingProgressView
#echo "MKRingProgressView:" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
#git log -1 --oneline --abbrev=7 >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
echo "" >> ../Open-iAPS/Dependencies/LoopKit_dependencies.txt
#cd ..

cd OmniBLE
echo "OmniBLE:" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
git log -1 --oneline --abbrev=7 >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
echo "" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
cd ..

cd OmniKit
echo "OmniKit:" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
git log -1 --oneline --abbrev=7 >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
echo "" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
cd ..

echo "Skipped copying dependency, rileylink_ios is now RileyLinkKit: 'Reorg ps2 frameworks (#53) Update gitmodules to point to LoopKit repos instead of ps2 repos' LoopWorkspace 2d9c9a5537ff0c2a0ef6af7539bf70f16d55eaf3"  >> ../Open-iAPS/Dependencies/LoopKit_dependencies.txt
#cd rileylink_ios
#echo "rileylink_ios:" >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
#git log -1 --oneline --abbrev=7 >> ../../Open-iAPS/Dependencies/LoopKit_dependencies.txt
echo "" >> ../Open-iAPS/Dependencies/LoopKit_dependencies.txt
#cd ..

# Copy LoopKit dependencies@

cp -p -R ./CGMBLEKit ../Open-iAPS/Dependencies

cp -p -R ./dexcom-share-client-swift ../Open-iAPS/Dependencies

cp -p -R ./G7SensorKit ../Open-iAPS/Dependencies

cp -p -R ./LibreTransmitter ../Open-iAPS/Dependencies

cp -p -R ./LoopKit ../Open-iAPS/Dependencies

cp -p -R ./MinimedKit ../Open-iAPS/Dependencies

#cp -p -R ./MKRingProgressView ../Open-iAPS/Dependencies

cp -p -R ./OmniBLE ../Open-iAPS/Dependencies

cp -p -R ./OmniKit ../Open-iAPS/Dependencies

#cp -p -R ./rileylink_ios ../Open-iAPS/Dependencies


exit
