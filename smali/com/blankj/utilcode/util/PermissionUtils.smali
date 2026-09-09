.class public final Lcom/blankj/utilcode/util/PermissionUtils;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;


# static fields
.field public static sInstance:Lcom/blankj/utilcode/util/PermissionUtils;


# instance fields
.field public mPermissions:Ljava/lang/Object;

.field public mPermissionsDenied:Ljava/io/Serializable;

.field public mPermissionsDeniedForever:Ljava/lang/Object;

.field public mPermissionsGranted:Ljava/io/Serializable;

.field public mPermissionsRequest:Ljava/io/Serializable;

.field public mSingleCallback:Ljava/lang/Object;


# direct methods
.method public static varargs getRequestAndDeniedPermissions([Ljava/lang/String;)Landroid/util/Pair;
    .locals 14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/16 v4, 0x1000

    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    :goto_1
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v3, :cond_f

    aget-object v6, p0, v5

    const/4 v7, 0x1

    if-nez v6, :cond_1

    new-array v8, v4, [Ljava/lang/String;

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, -0x1

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v8, "CAMERA"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_3

    :cond_2
    const/16 v9, 0x9

    goto/16 :goto_3

    :sswitch_1
    const-string v8, "MICROPHONE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    goto/16 :goto_3

    :cond_3
    const/16 v9, 0x8

    goto/16 :goto_3

    :sswitch_2
    const-string v8, "CALENDAR"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_3

    :cond_4
    const/4 v9, 0x7

    goto :goto_3

    :sswitch_3
    const-string v8, "CONTACTS"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    goto :goto_3

    :cond_5
    const/4 v9, 0x6

    goto :goto_3

    :sswitch_4
    const-string v8, "ACTIVITY_RECOGNITION"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_3

    :cond_6
    const/4 v9, 0x5

    goto :goto_3

    :sswitch_5
    const-string v8, "PHONE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_3

    :cond_7
    const/4 v9, 0x4

    goto :goto_3

    :sswitch_6
    const-string v8, "SMS"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    const/4 v9, 0x3

    goto :goto_3

    :sswitch_7
    const-string v8, "STORAGE"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    goto :goto_3

    :cond_9
    const/4 v9, 0x2

    goto :goto_3

    :sswitch_8
    const-string v8, "SENSORS"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    goto :goto_3

    :cond_a
    move v9, v7

    goto :goto_3

    :sswitch_9
    const-string v8, "LOCATION"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_3

    :cond_b
    move v9, v4

    :goto_3
    packed-switch v9, :pswitch_data_0

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :pswitch_0
    sget-object v8, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CAMERA:[Ljava/lang/String;

    goto :goto_4

    :pswitch_1
    sget-object v8, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_MICROPHONE:[Ljava/lang/String;

    goto :goto_4

    :pswitch_2
    sget-object v8, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CALENDAR:[Ljava/lang/String;

    goto :goto_4

    :pswitch_3
    sget-object v8, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_CONTACTS:[Ljava/lang/String;

    goto :goto_4

    :pswitch_4
    sget-object v8, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_ACTIVITY_RECOGNITION:[Ljava/lang/String;

    goto :goto_4

    :pswitch_5
    sget-object v8, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_PHONE:[Ljava/lang/String;

    goto :goto_4

    :pswitch_6
    sget-object v8, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SMS:[Ljava/lang/String;

    goto :goto_4

    :pswitch_7
    sget-object v8, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_STORAGE:[Ljava/lang/String;

    goto :goto_4

    :pswitch_8
    sget-object v8, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_SENSORS:[Ljava/lang/String;

    goto :goto_4

    :pswitch_9
    sget-object v8, Lcom/blankj/utilcode/constant/PermissionConstants;->GROUP_LOCATION:[Ljava/lang/String;

    :goto_4
    array-length v9, v8

    move v10, v4

    move v11, v10

    :goto_5
    if-ge v10, v9, :cond_d

    aget-object v12, v8, v10

    invoke-interface {v2, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v11, v7

    :cond_c
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_d
    if-nez v11, :cond_e

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "U should add the permission of "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " in manifest."

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PermissionUtils"

    invoke-static {v7, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_f
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x600a704b -> :sswitch_9
        -0x5f2a5027 -> :sswitch_8
        -0x458431a5 -> :sswitch_7
        0x14139 -> :sswitch_6
        0x489454e -> :sswitch_5
        0x8623667 -> :sswitch_4
        0xcd35053 -> :sswitch_3
        0x2404eb3e -> :sswitch_2
        0x6ea0852a -> :sswitch_1
        0x760cb725 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static launchAppDetailsSettings()V
    .locals 4

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/UtilsBridge;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCoverLoaded(Ljava/lang/String;)V
    .locals 3

    const-string v0, "cover"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mSingleCallback:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissions:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onCoverLoaded(Ljava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissions:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onError()V

    return-void
.end method

.method public onFavLoaded(Z)V
    .locals 0

    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissions:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {p0, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onFavLoaded(Z)V

    return-void
.end method

.method public onLyricLoaded(Ljava/lang/String;)V
    .locals 5

    const-string v0, "lyric"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    iget-object v4, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/io/Serializable;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4, p1, v3}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/io/Serializable;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1, p1, v3}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->cacheInMemory(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissions:Ljava/lang/Object;

    check-cast v1, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;

    invoke-interface {v1, p1}, Lcom/deepalhome/launcher/music/MusicInfoUtil$Callback;->onLyricLoaded(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/blankj/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/lang/Object;

    check-cast p0, Lcom/deepalhome/launcher/music/Music;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricAvailable()V

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->access$findPreferredPayloadForPrimaryChain(Lcom/deepalhome/launcher/music/MusicInfoUtil;Lcom/deepalhome/launcher/music/Music;)Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v2

    invoke-static {p1, v1, v2, v3, v0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object p0

    const-string v4, "primary_chain"

    invoke-static {p1, p0, v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->legacyLyricPayload$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/deepalhome/launcher/music/ttml/LyricPayload$Legacy;

    move-result-object p0

    invoke-static {v0, v1, v2, v3, p0}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->notifyLyricPayloadAvailable(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/music/ttml/LyricPayload;)V

    return-void
.end method
