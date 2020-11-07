# Device Tree for Nokia 8

The Nokia 8 is a high-end Nokia-branded smartphone running the Android operating system
Announced on 16 August 2017 in London, England by HMD Global,[4][5] the phone began sales in Europe in September 2017.

| Basic                   | Spec Sheet                                                                                                                     |
| -----------------------:|:------------------------------------------------------------------------------------------------------------------------------ |
| CPU                     | Octa-core (4x2.5 GHz Kryo & 4x1.8 GHz Kryo)                                                                           |
| Chipset                 | Qualcomm MSM8998 Snapdragon 835 (10 nm)                                                                                                 |
| GPU                     | Adreno 540                                                                                                                     |
| Memory                  | 4/6 GB RAM                                                                                                                     |
| Shipped Android Version | Android 7.1.1 (Nougat)                                                                                                                            |
| Storage                 | 64/128 GB                                                                                                                          |
| Battery                 | Non-removable Li-Ion 3090 mAh battery                                                                                           |
| Display                 | 1440 x 2560 pixels, 16:9 ratio (~554 ppi density)                                                                              |
| Camera (Back)           | 13 MP, f/2.0, 1/3.1", 1.12µm, PDAF, Laser AF, OIS                                                                              |
| Camera (Front)          | 13 MP, f/2.0, (wide), 1/3.1", 1.12µm, PDAF                                                                                                    |

![Nokia 8](https://fdn2.gsmarena.com/vv/pics/nokia/nokia-8-5.jpg)

# Build instructions

For compilation you should use this TWRP manifest: 
https://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni/tree/twrp-8.1

```
source build/envsetup.sh
export ALLOW_MISSING_DEPENDENCIES=true
lunch omni_NB1-eng
make -j4 recoveryimage
```

### Thanks to:
 * TeamWin Team
 * Omni Team
 * XDA Forums
 * Dees-Troy
 * HikariCalyx
 * sjrmac
 * bidhata
 * cosmicdan
 * wuxianlin
 * dg28gadhavi
 * Dorian Stoll