.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field final synthetic $file:Ljava/io/File;

.field label:I


# direct methods
.method public constructor <init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$1;->$file:Ljava/io/File;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    new-instance p1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$1;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$1;->$file:Ljava/io/File;

    invoke-direct {p1, p0, p2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$1;-><init>(Ljava/io/File;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$1;->label:I

    if-nez v0, :cond_18

    invoke-static {p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->throwOnFailure(Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigBackupManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigBackupManager;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showConfigImportDialog$2$1$result$1;->$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "zipFile"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_f

    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "config_backup_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance p0, Lcom/deepalhome/launcher/config/ImportResult$ParseError;

    const-string p1, "temp_dir_failed"

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/config/ImportResult$ParseError;-><init>(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/zip/ZipInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_0
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/deepalhome/launcher/config/ConfigBackupManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigBackupManager;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, ".."

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v6, "/"

    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "\\"

    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    const-string v6, "config.json"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/16 p0, 0x2000

    new-array p0, p0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_1
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_4

    invoke-virtual {v2, p0, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_4
    sget-object p0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "toString(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v2, p0

    goto :goto_2

    :cond_5
    const-string v6, "wallpaper/"

    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-static {v0, p1, v5}, Lcom/deepalhome/launcher/config/ConfigBackupManager;->extractEntryToFile(Ljava/util/zip/ZipInputStream;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    move-object v3, p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_d

    :cond_6
    const-string v6, "floating_ball_icon/"

    invoke-static {v5, v6, v7}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {v0, p1, v5}, Lcom/deepalhome/launcher/config/ConfigBackupManager;->extractEntryToFile(Ljava/util/zip/ZipInputStream;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    move-object v4, p0

    :cond_7
    :goto_2
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    goto/16 :goto_0

    :cond_8
    :goto_3
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p0

    goto/16 :goto_0

    :cond_9
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p0, "missing_config"

    if-eqz v2, :cond_15

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_c

    :cond_a
    :try_start_3
    sget v0, Lkotlin/Result;->$r8$clinit:I

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigBackupManager;->gson:Lcom/google/gson/Gson;

    const-class v5, Lcom/deepalhome/launcher/config/ConfigBackup;

    invoke-virtual {v0, v5, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/config/ConfigBackup;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_4
    instance-of v2, v0, Lkotlin/Result$Failure;

    if-eqz v2, :cond_b

    goto :goto_5

    :cond_b
    move-object v1, v0

    :goto_5
    check-cast v1, Lcom/deepalhome/launcher/config/ConfigBackup;

    if-nez v1, :cond_c

    invoke-static {p1}, Lkotlin/io/FilesKt__UtilsKt;->deleteRecursively(Ljava/io/File;)V

    new-instance p0, Lcom/deepalhome/launcher/config/ImportResult$ParseError;

    const-string p1, "invalid_format"

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/config/ImportResult$ParseError;-><init>(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_c
    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigBackup;->getVersion()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_d

    invoke-static {p1}, Lkotlin/io/FilesKt__UtilsKt;->deleteRecursively(Ljava/io/File;)V

    new-instance p0, Lcom/deepalhome/launcher/config/ImportResult$VersionMismatch;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigBackup;->getVersion()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/config/ImportResult$VersionMismatch;-><init>(I)V

    goto/16 :goto_10

    :cond_d
    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigBackup;->getConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-static {p1}, Lkotlin/io/FilesKt__UtilsKt;->deleteRecursively(Ljava/io/File;)V

    new-instance p1, Lcom/deepalhome/launcher/config/ImportResult$ParseError;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/config/ImportResult$ParseError;-><init>(Ljava/lang/String;)V

    :goto_6
    move-object p0, p1

    goto/16 :goto_10

    :cond_e
    const-string p0, "getAbsolutePath(...)"

    const-string v1, "getName(...)"

    if-eqz v3, :cond_10

    sget-object v5, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->generateUniqueFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    :try_start_4
    invoke-static {v3, v5}, Lkotlin/io/FilesKt__UtilsKt;->copyTo$default(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object v6, v5

    goto :goto_7

    :catchall_2
    move-exception v6

    sget v7, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v6

    :goto_7
    instance-of v6, v6, Lkotlin/Result$Failure;

    xor-int/2addr v6, v2

    if-eqz v6, :cond_10

    invoke-static {v5}, Lkotlin/io/FilesKt__UtilsKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "US"

    const-string v9, "toLowerCase(...)"

    invoke-static {v7, v8, v6, v7, v9}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->isVideoExtension(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_f

    sget-object v6, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    :goto_8
    move-object v8, v6

    goto :goto_9

    :cond_f
    sget-object v6, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->IMAGE_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    goto :goto_8

    :goto_9
    new-instance v6, Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v10, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object v7, v6

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperType;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v6}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaper(Lcom/deepalhome/launcher/wallpaper/Wallpaper;)V

    invoke-static {v3}, Lkotlin/io/FilesKt__UtilsKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    xor-int/2addr v6, v2

    if-eqz v6, :cond_10

    const-string v6, "wallpaper"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    sget-object v6, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->INSTANCE:Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v3}, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->save(Ljava/io/File;Ljava/lang/String;)V

    :cond_10
    if-eqz v4, :cond_14

    sget-object v3, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5}, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->generateUniqueFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    :try_start_5
    invoke-static {v4, v1}, Lkotlin/io/FilesKt__UtilsKt;->copyTo$default(Ljava/io/File;Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object v3, v1

    goto :goto_a

    :catchall_3
    move-exception v3

    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v3

    :goto_a
    instance-of v3, v3, Lkotlin/Result$Failure;

    xor-int/2addr v3, v2

    const-string v5, "getApp(...)"

    const-string v6, ""

    if-eqz v3, :cond_12

    sget-object v3, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v7

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7, v1}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->cacheIcon(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    goto :goto_b

    :cond_11
    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconFilePath(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconLibraryPath(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconPackageName(Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/io/FilesKt__UtilsKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v2, v3

    if-eqz v2, :cond_14

    const-string v2, "icon"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    sget-object v2, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->INSTANCE:Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p0}, Lcom/deepalhome/launcher/util/DownloadDisplayNameStore;->save(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_b

    :cond_12
    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v4}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->cacheIcon(Landroid/content/Context;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconFilePath(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconLibraryPath(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallIconPackageName(Ljava/lang/String;)V

    :cond_14
    :goto_b
    invoke-static {v0}, Lcom/deepalhome/launcher/config/ConfigBackupManager;->applyConfig(Lcom/deepalhome/launcher/config/UserConfig;)V

    invoke-static {p1}, Lkotlin/io/FilesKt__UtilsKt;->deleteRecursively(Ljava/io/File;)V

    sget-object p0, Lcom/deepalhome/launcher/config/ImportResult$Success;->INSTANCE:Lcom/deepalhome/launcher/config/ImportResult$Success;

    goto :goto_10

    :cond_15
    :goto_c
    invoke-static {p1}, Lkotlin/io/FilesKt__UtilsKt;->deleteRecursively(Ljava/io/File;)V

    new-instance p1, Lcom/deepalhome/launcher/config/ImportResult$ParseError;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/config/ImportResult$ParseError;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_0
    move-exception p0

    goto :goto_e

    :goto_d
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v1

    :try_start_7
    invoke-static {v0, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    :goto_e
    invoke-static {p1}, Lkotlin/io/FilesKt__UtilsKt;->deleteRecursively(Ljava/io/File;)V

    new-instance p1, Lcom/deepalhome/launcher/config/ImportResult$ParseError;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_16

    const-string p0, "zip_read_error"

    :cond_16
    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/config/ImportResult$ParseError;-><init>(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_17
    :goto_f
    new-instance p0, Lcom/deepalhome/launcher/config/ImportResult$ParseError;

    const-string p1, "zip_not_found"

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/config/ImportResult$ParseError;-><init>(Ljava/lang/String;)V

    :goto_10
    return-object p0

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
