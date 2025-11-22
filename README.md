# Yanna
Yanna - The #1 Yanna Executor  

Yanna is a Yanna Executor and it's the first executor ever to be made for Yanna. It's fully open source, supports 64bit and 32bit, and works for version 2.117.1 (com.sandboxol.blockymods.official).  

The source won't be getting **any updates.**

---

## # Inject

Clone or download Yanna source, compile it with **Visual Studio**, **Android Studio**, or **AIDE (Android)**.  

Take the compiled APK and open it, then go to `lib/` and **extract both arm64 and arm32 libs**.  

Go to the Yanna APK, open `assets/` and **create two folders**:  

```text
YannaArm       (for 32bit)
YannaArm64     (for 64bit)
```

Paste `libYanna.so` of the respective ABI into these folders.  

Next, extract `classes.dex` from the Yanna Menu APK, rename it as the **next dex** in the Yanna APK.  
For example, if the last dex in Yanna APK is `classes20.dex`, rename Yanna Menu dex to:  

```text
classes21.dex
```

Open all of Yanna's dex files and navigate to:  

```text
com/yanna/executor/MainActivity
```

Go inside `onCreate()` and **add the following**:

**Update:**
```smali
invoke-static {p0}, Lcom/update/checker/UpdLoader;->start(Landroid/app/Activity;)V
```

**Main:**
```smali
invoke-static {p0}, Lcom/android/support/Main;->StartWithoutPermission(Landroid/content/Context;)V
```

Save and close the dex files.  

Open `AndroidManifest.xml` and **add storage and overlay permissions**:  

```xml
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.MANAGE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.SYSTEM_ALERT_WINDOW" />
```

You are now done with the injection! Simply install the modded APK and enjoy.  

---

## # Update

Yanna updated and you need to update your executor/injector?  

1. Open the project source code.  
2. Go to `Main.cpp`.  
3. Search for all the offset strings.  
4. Open the Yanna APK in **IDA Pro** or **Ghidra** to find the new addresses/offsets.  
5. Update the offsets in your source code accordingly.  

---

## # Bypass

For Yanna bypass, we **won’t leak any of our methods**.  
You will need to handle the bypass yourself.


--

## # Support

Join our discord server to get the latest compiled version and to contact the support team and report bugs or problems. 

Note: reporting bugs or problems about the source won't get you any where since it won't be getting any updates

[Join Discord Server](https://discord.gg/XeQVj2vZHk)
