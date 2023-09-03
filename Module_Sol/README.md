# QGroundControl

## Source Code

The source code for QGroundControl is hosted on GitHub at [https://github.com/mavlink/qgroundcontrol](https://github.com/mavlink/qgroundcontrol). It is dual-licensed under Apache 2.0 and GPLv3.

To obtain the source files:

1. Clone the repository (or your fork) including submodules:
git clone --recursive -j8 https://github.com/mavlink/qgroundcontrol.git

2. Update submodules (required each time you pull new source code):
git submodule update --recursive


GitHub source-code zip files cannot be used because they do not contain the appropriate submodule source code. You must use Git!

## Build QGroundControl

### Native Builds

QGroundControl builds are supported on various platforms:

- **macOS**: v10.11 or higher
- **Ubuntu**: 64 bit, GCC compiler
- **Windows**: Vista or higher, Visual Studio 2019 compiler (64 bit)
- **iOS**: 10.0 and higher
- **Android**: Android 5.0 and later. Standard QGC is built against NDK version 19. Java JDK 11 is required.
- **Qt Version**: 5.15.2 (only)

**Note:** Do not use any other version of Qt! QGC has been thoroughly tested with the specified version of Qt (5.15.2). Using other Qt versions may introduce bugs affecting stability and safety.

### Install Visual Studio 2019 (Windows Only)

The Windows compiler can be found here: [Visual Studio 2019 compiler (64 bit)](https://visualstudio.microsoft.com/visual-cpp-build-tools/).

When installing, select "Desktop development with C++" as shown:


Visual Studio is ONLY used to obtain the compiler. Building QGroundControl should be done using Qt Creator or qmake as outlined below.

### Install Qt

You need to install Qt as described below instead of using pre-built packages from a Linux distribution because QGroundControl requires access to private Qt headers.

To install Qt:

1. Download and run the Qt Online Installer.
2. On Ubuntu, set the downloaded file to executable using: `chmod +x`.
3. Install to the default location for use with `./qgroundcontrol-start.sh`. If you install Qt to a non-default location, you will need to modify `qgroundcontrol-start.sh` to run downloaded builds.
4. In the installer's "Select Components" dialog, choose version 5.15.2. If the needed version is not displayed, check the archive and refresh it. Then install the following components:
- Windows: MSVC 2019 64 bit
- MacOS: macOS
- Linux: Desktop GCC 64-bit
- All: Qt Charts
- Android ARMv7 (optional, used for Android builds)


**Ubuntu**:

1. Create a file named `user_config.pri` in the repository root directory containing the text `DEFINES += DISABLE_AIRMAP`. This can be done in a bash terminal using the command:
echo -e "DEFINES += DISABLE_AIRMAP\r\n" | tee user_config.pri


### Building using Qt Creator

1. Launch Qt Creator and open the `qgroundcontrol.pro` project.
2. In the Projects section, select the appropriate kit for your needs:
- **macOS**: Desktop Qt 5.15.2 clang 64 bit
- **Ubuntu**: Desktop Qt 5.15.2 GCC 64bit
- **Windows**: Desktop Qt 5.15.2 MSVC2019 64bit
- **Android**: Android for armeabi-v7a (GCC 4.9, Qt 5.15.2)

JDK11 is required. You can confirm it is being used by reviewing the project settings: Projects > Manage Kits > Devices > Android (tab) > Android Settings > JDK location.

3. Build using the "hammer" or "play" icons in Qt Creator.


