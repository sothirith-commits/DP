.class public final Lcom/deepalhome/launcher/settings/S05AppUpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

.field public static final VERSION_NAME_REGEX:Lkotlin/text/Regex;

.field public static final downloadExecutor:Ljava/util/concurrent/ExecutorService;

.field public static isCheckingUpdate:Z

.field public static lastUpdateCheckElapsedMs:J

.field public static final updateBadgeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->updateBadgeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    new-instance v0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda3;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->downloadExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lkotlin/text/Regex;

    sget-object v1, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    invoke-virtual {v1}, Lkotlin/text/RegexOption;->getValue()I

    move-result v1

    sget-object v2, Lkotlin/text/Regex;->Companion:Lkotlin/text/Regex$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    const-string v2, "v(\\d{2})\\.(\\d{4})"

    invoke-static {v2, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v1

    const-string v2, "compile(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/util/regex/Pattern;)V

    sput-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->VERSION_NAME_REGEX:Lkotlin/text/Regex;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$prepareInstallerApk(Lcom/deepalhome/launcher/settings/S05AppUpdateManager;Lcom/deepalhome/launcher/http/S05AppUpdateInfo;Ljava/io/File;)Ljava/io/File;
    .locals 6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/io/File;

    const-string v0, "/sdcard/Download/Deepal"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/io/FilesKt__UtilsKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "apk"

    invoke-static {v4, v5}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/http/S05AppUpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    invoke-static {p2}, Lkotlin/io/FilesKt__UtilsKt;->getNameWithoutExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    new-instance v1, Lkotlin/text/Regex;

    const-string v2, "[^A-Za-z0-9._-]"

    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, "_"

    invoke-virtual {v1, p1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string p1, "s05-update"

    :cond_3
    const-string v1, ".apk"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p2, 0x2000

    :try_start_1
    invoke-static {p0, p1, p2}, Lokio/Okio;->copyTo(Ljava/io/InputStream;Ljava/io/OutputStream;I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 p2, 0x0

    :try_start_2
    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    :try_start_4
    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public static final access$verifySha256(Lcom/deepalhome/launcher/settings/S05AppUpdateManager;Ljava/io/File;Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "US"

    const-string v2, "toLowerCase(...)"

    invoke-static {v0, v1, p2, v0, v2}, Lcom/umeng/commonsdk/config/d$a$EnumUnboxingLocalUtility;->m(Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_3

    :cond_1
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 p1, 0x2000

    :try_start_0
    new-array p1, p1, [B

    :goto_1
    invoke-virtual {v2, p1}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v1, p1, v0, v3}, Ljava/security/MessageDigest;->update([BII)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_2
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    const-string p1, "digest(...)"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$verifySha256$actual$1;->INSTANCE:Lcom/deepalhome/launcher/settings/S05AppUpdateManager$verifySha256$actual$1;

    const-string v0, ""

    invoke-static {p0, v0, p1}, Lkotlin/collections/ArraysKt___ArraysKt;->joinToString$default([BLjava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_3

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v2, p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    :goto_3
    return v0
.end method

.method public static final access$writeApk(Lcom/deepalhome/launcher/settings/S05AppUpdateManager;Landroid/content/Context;Lcom/deepalhome/launcher/http/S05AppUpdateInfo;Lokhttp3/ResponseBody;Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$file$1;)Ljava/io/File;
    .locals 19

    move-object/from16 v0, p4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/io/File;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "updates"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v2, v5

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/io/FilesKt__UtilsKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "apk"

    invoke-static {v7, v8}, Lkotlin/text/StringsKt__StringsJVMKt;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Lcom/deepalhome/launcher/http/S05AppUpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    const-string v4, "s05-update"

    if-nez v2, :cond_2

    move-object v2, v4

    :cond_2
    new-instance v5, Lkotlin/text/Regex;

    const-string v6, "[^A-Za-z0-9._-]"

    invoke-direct {v5, v6}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v6, "_"

    invoke-virtual {v5, v2, v6}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v2

    :goto_1
    const-string v2, ".apk"

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-wide/16 v6, 0x0

    cmp-long v1, v1, v6

    const/4 v2, 0x0

    if-lez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v5, v2

    :goto_2
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_3

    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/deepalhome/launcher/http/S05AppUpdateInfo;->getSize()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    goto :goto_3

    :cond_6
    const-wide/16 v8, -0x1

    :goto_3
    invoke-virtual/range {p3 .. p3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v1

    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v10, 0x2000

    :try_start_1
    new-array v10, v10, [B

    move-wide v11, v6

    :cond_7
    :goto_4
    invoke-virtual {v1, v10}, Ljava/io/InputStream;->read([B)I

    move-result v13

    if-lez v13, :cond_9

    invoke-virtual {v5, v10, v3, v13}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v13, v13

    add-long/2addr v6, v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long v15, v13, v11

    const-wide/16 v17, 0xc8

    cmp-long v15, v15, v17

    if-gez v15, :cond_8

    cmp-long v15, v6, v8

    if-nez v15, :cond_7

    :cond_8
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v0, v11, v12}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$file$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-wide v11, v13

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_5

    :cond_9
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v5, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$downloadAndInstall$1$onResponse$1$1$file$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4

    :catchall_1
    move-exception v0

    move-object v2, v0

    goto :goto_6

    :goto_5
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-static {v5, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_6
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static addOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->updateBadgeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->shouldShowUpdateBadge()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static checkUpdateWithUserFeedback$default(Lcom/deepalhome/launcher/settings/S05AppUpdateManager;Landroid/content/Context;)V
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->lastUpdateCheckElapsedMs:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long p0, v4, v6

    if-lez p0, :cond_0

    const-wide/16 v0, 0x2af7

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    invoke-static {v0, v1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const v0, 0x7f130414

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->isCheckingUpdate:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sput-wide v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->lastUpdateCheckElapsedMs:J

    const/4 p0, 0x1

    sput-boolean p0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->isCheckingUpdate:Z

    const v0, 0x7f130416

    invoke-static {v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    new-instance v0, Lcom/umeng/commonsdk/statistics/common/a$a;

    invoke-direct {v0, p1, p0}, Lcom/umeng/commonsdk/statistics/common/a$a;-><init>(Ljava/lang/Object;Z)V

    sget-object p0, Lcom/deepalhome/launcher/http/Server;->INSTANCE:Lcom/deepalhome/launcher/http/Server;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/http/Server;->openListProxyApi:Lcom/deepalhome/launcher/http/OpenListProxyApi;

    invoke-interface {p0}, Lcom/deepalhome/launcher/http/OpenListProxyApi;->getS05AppUpdate()Lretrofit2/Call;

    move-result-object p0

    new-instance p1, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v1, 0x4

    invoke-direct {p1, v1, v0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    invoke-interface {p0, p1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    :goto_0
    return-void
.end method

.method public static hasNewerVersion(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    const-string v0, "remoteVersion"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->versionOrder(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p0, "v26.0521"

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->versionOrder(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p0, v1, v3

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static markUpdateBadge(Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)V
    .locals 2

    invoke-static {p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->updateVersion(Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->hasNewerVersion(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getS05UpdateBadgeVersionName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->shouldShowUpdateBadge()Z

    move-result p0

    new-instance v0, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setS05UpdateBadgeVersionName(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    invoke-static {}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->shouldShowUpdateBadge()Z

    move-result p0

    new-instance v0, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/deepalhome/launcher/task/TaskExecutor$$ExternalSyntheticLambda0;-><init>(IZ)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static removeOnUpdateBadgeChangedListener(Lkotlin/jvm/functions/Function1;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->updateBadgeChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static shouldShowUpdateBadge()Z
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getS05UpdateBadgeVersionName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {v0}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->hasNewerVersion(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final showUpdatePasswordDialog$setProgressAreaVisible(Landroid/widget/ProgressBar;Landroid/widget/TextView;ZZ)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p3, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p3

    cmpg-float p3, p3, p2

    if-nez p3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p0

    cmpg-float p0, p0, v0

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :goto_2
    return-void
.end method

.method public static final showUpdatePasswordDialog$updateCells(Landroid/widget/EditText;Ljava/util/List;IIIZ)V
    .locals 7

    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    const-string v1, ""

    if-nez p0, :cond_1

    move-object p0, v1

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    if-ltz v2, :cond_9

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_2
    move-object v5, v1

    :goto_2
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p5, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v2, v5, :cond_5

    :goto_3
    move v2, p3

    goto :goto_5

    :cond_5
    :goto_4
    move v2, p2

    :goto_5
    invoke-virtual {v3}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    instance-of v6, v5, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v6, :cond_6

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    goto :goto_6

    :cond_6
    move-object v5, v0

    :goto_6
    if-eqz v5, :cond_7

    invoke-virtual {v5, p4, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    :cond_7
    if-eqz p5, :cond_8

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_7

    :cond_8
    const v2, 0x3f0ccccd    # 0.55f

    :goto_7
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v3, p5}, Landroid/widget/TextView;->setEnabled(Z)V

    move v2, v4

    goto :goto_1

    :cond_9
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    throw v0

    :cond_a
    return-void
.end method

.method public static updateVersion(Lcom/deepalhome/launcher/http/S05AppUpdateInfo;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/http/S05AppUpdateInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/http/S05AppUpdateInfo;->getVersionName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    move-object v1, p0

    :cond_3
    :goto_2
    return-object v1
.end method

.method public static versionOrder(Ljava/lang/String;)Ljava/lang/Long;
    .locals 6

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/settings/S05AppUpdateManager;->VERSION_NAME_REGEX:Lkotlin/text/Regex;

    invoke-virtual {v0, p0}, Lkotlin/text/Regex;->matchEntire(Ljava/lang/String;)Lkotlin/text/MatcherMatchResult;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lkotlin/text/MatcherMatchResult$groupValues$1;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lkotlin/text/MatcherMatchResult;->getGroupValues()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lkotlin/text/MatcherMatchResult$groupValues$1;

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lkotlin/text/MatcherMatchResult$groupValues$1;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {v3, p0}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, p0}, Lkotlin/text/StringsKt___StringsKt;->takeLast(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringNumberConversionsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-gt v2, v4, :cond_1

    const/16 v3, 0xd

    if-ge v4, v3, :cond_1

    if-gt v2, p0, :cond_1

    const/16 v2, 0x20

    if-ge p0, v2, :cond_1

    int-to-long v0, v1

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x1312d00

    add-long/2addr v0, v2

    int-to-long v2, v4

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    add-long/2addr v2, v0

    int-to-long v0, p0

    add-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
