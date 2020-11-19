# CoolLine v@project-version@

## [9.0.000](https://github.com/LoneWanderer-GH/CoolLine/tree/9.0.000) (2020-10-21)
[Full Changelog](https://github.com/LoneWanderer-GH/CoolLine/compare/8.0.010...9.0.000) 

- Merge branch 'release/9.0.000'  
- Merge branch 'develop' into release/9.0.000  
- Merge branch 'feature/fix-pet-cooldowns-issue#8' into develop  
- Merge branch 'feature/better-toc-and-version-check' into develop  
- Merge branch 'feature/better-toc-and-version-check' into develop  
- Merge branch 'feature/better-toc-and-version-check' into develop  
- Better toc and version-check  
     - add some fancy colors  
     - include the version name for version check prints  
- Merge branch 'develop' into release/9.0.000  
- Merge branch 'feature/fix-pet-cooldowns-issue#8' into develop  
- Add pet cooldowns  
    Fix issue #8 : add pet cooldowns  
- Merge branch 'develop' into release/9.0.000  
- Merge branch 'feature/manage-tabs-for-9.0' into develop  
- Better spell tabs management for 9.0  
     - Merge pull request #15 from capferro  
     - reduced code duplication between retail and classic  
- Merge remote-tracking branch 'capoferro/master' into feature/manage-tabs-for-9.0  
- Merge branch 'release/9.0.000' into develop  
- Use _ for unused variables  
- Load all spell tabs for retail like we do for classic now that there is an additional tab.  
- Fix packaging tool call syntax  
- Attempt to avoid the uploading part  
- Merge branch 'better-github-actions' into release/9.0.000  
- Merge remote-tracking branch 'capoferro/master' into release/9.0.000  
- Merge branch 'feature/wow-90000-backdropfix' into develop  
- wow-90000-backdropfix  
- Add warning for next WoW API major version revision  
- Add BackdropTemplate to CreateFrame calls where needed for WoW v9 and  
    update supported version number to 9  
    Fixes #10  
    Fixes #11  
    Fixes #12  
- Update issue templates  
- Update README.md  
- Better  gihhub actions  
    - use `- uses: BigWigsMods/packager@master` instead of having a .sh script in the repo  
    - remove .release/release.sh  
    - add a test build github action (no upload to curseforge)  
