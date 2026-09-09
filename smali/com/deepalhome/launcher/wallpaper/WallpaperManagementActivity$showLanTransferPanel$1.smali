.class public final Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 30

    move-object/from16 v1, p0

    const/4 v2, 0x0

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/transfer/LocalIpResolver;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/transfer/LocalIpResolver;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Lcom/blankj/utilcode/util/NetworkUtils;->$r8$clinit:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v3, "wifi"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/blankj/utilcode/util/NetworkUtils;->isWifiConnected()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/deepalhome/launcher/wallpaper/transfer/LocalIpResolver;->isValidIpv4(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_c

    :cond_1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    if-nez v0, :cond_3

    :catch_0
    :cond_2
    move-object v3, v4

    goto/16 :goto_2

    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isLoopback()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->isVirtual()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v6}, Lcom/deepalhome/launcher/wallpaper/transfer/LocalIpResolver;->isLikelyApInterface(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    instance-of v8, v7, Ljava/net/Inet4Address;

    if-eqz v8, :cond_7

    move-object v8, v7

    check-cast v8, Ljava/net/Inet4Address;

    invoke-virtual {v8}, Ljava/net/Inet4Address;->isLoopbackAddress()Z

    move-result v8

    if-nez v8, :cond_7

    move-object v8, v7

    check-cast v8, Ljava/net/Inet4Address;

    invoke-virtual {v8}, Ljava/net/Inet4Address;->isLinkLocalAddress()Z

    move-result v8

    if-nez v8, :cond_7

    check-cast v7, Ljava/net/Inet4Address;

    invoke-virtual {v7}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/deepalhome/launcher/wallpaper/transfer/LocalIpResolver;->isValidIpv4(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v6, v7}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    :goto_2
    if-nez v3, :cond_8

    :goto_3
    move-object v0, v4

    goto/16 :goto_c

    :cond_8
    invoke-virtual {v3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v6, Ljava/io/File;

    const-string v7, "/proc/net/arp"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v7

    if-nez v7, :cond_9

    goto/16 :goto_b

    :cond_9
    :try_start_1
    sget v7, Lkotlin/Result;->$r8$clinit:I

    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    new-instance v8, Ljava/io/InputStreamReader;

    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v9, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    instance-of v6, v8, Ljava/io/BufferedReader;

    if-eqz v6, :cond_a

    check-cast v8, Ljava/io/BufferedReader;

    goto :goto_4

    :catchall_0
    move-exception v0

    goto/16 :goto_9

    :cond_a
    new-instance v6, Ljava/io/BufferedReader;

    const/16 v7, 0x2000

    invoke-direct {v6, v8, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v6

    :goto_4
    :try_start_2
    new-instance v6, Lkotlin/io/LinesSequence;

    invoke-direct {v6, v2, v8}, Lkotlin/io/LinesSequence;-><init>(ILjava/lang/Object;)V

    instance-of v7, v6, Lkotlin/sequences/ConstrainedOnceSequence;

    if-eqz v7, :cond_b

    goto :goto_5

    :cond_b
    new-instance v7, Lkotlin/sequences/ConstrainedOnceSequence;

    invoke-direct {v7, v6}, Lkotlin/sequences/ConstrainedOnceSequence;-><init>(Lkotlin/sequences/Sequence;)V

    move-object v6, v7

    :goto_5
    invoke-static {v6, v5}, Lkotlin/sequences/SequencesKt___SequencesKt;->drop(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_c
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v9, Lkotlin/text/Regex;

    const-string v10, "\\s+"

    invoke-direct {v9, v10}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Lkotlin/text/Regex;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    const/4 v9, 0x2

    invoke-static {v9, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v9, :cond_d

    goto :goto_6

    :cond_d
    const/4 v10, 0x3

    invoke-static {v10, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v10, :cond_e

    goto :goto_6

    :cond_e
    const/4 v11, 0x5

    invoke-static {v11, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v7, :cond_f

    goto :goto_6

    :cond_f
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const-string v7, "0x0"

    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "00:00:00:00:00:00"

    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v7, :cond_c

    move v0, v5

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v6, v0

    goto :goto_8

    :cond_10
    move v0, v2

    :goto_7
    :try_start_3
    invoke-static {v8, v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_a

    :goto_8
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v7, v0

    :try_start_5
    invoke-static {v8, v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_9
    sget v6, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_a
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget v7, Lkotlin/Result;->$r8$clinit:I

    instance-of v7, v0, Lkotlin/Result$Failure;

    if-eqz v7, :cond_11

    move-object v0, v6

    :cond_11
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_12

    :goto_b
    goto/16 :goto_3

    :cond_12
    invoke-virtual {v3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_c
    if-eqz v0, :cond_19

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_13

    goto/16 :goto_f

    :cond_13
    const-string v3, "http://"

    const-string v6, ":8888"

    invoke-static {v3, v0, v6}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    iget-object v6, v3, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    const-string v7, "binding"

    if-eqz v6, :cond_18

    const v8, 0x7f1304ab

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->addressTv:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    iget-object v6, v3, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v6, :cond_17

    const v8, 0x7f1304c4

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->transferStatusTv:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_6
    invoke-static {v0}, Lcom/king/zxing/util/CodeUtils;->createQRCode(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v3, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    iget-object v3, v3, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v3, :cond_14

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->qrCodeIv:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_d

    :cond_14
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :goto_d
    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    iget-object v0, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->binding:Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperManagementActivityBinding;->lanTransferPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    iget-boolean v2, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->lanTransferActive:Z

    if-eqz v2, :cond_15

    goto :goto_e

    :cond_15
    iput-boolean v5, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->lanTransferActive:Z

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.deepalhome.launcher.wallpaper.transfer.action.STATUS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->transferReceiver:Lcom/deepalhome/launcher/HelperActivity$adbWifiReceiver$1;

    const/4 v5, 0x4

    invoke-static {v0, v3, v2, v5}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)V

    sget-object v2, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;->Companion:Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/deepalhome/launcher/wallpaper/transfer/WallpaperTransferService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.deepalhome.launcher.wallpaper.transfer.action.START"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_e
    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    invoke-static {v0}, Lokhttp3/logging/Utf8Kt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScopeImpl;

    move-result-object v5

    new-instance v8, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1$1;

    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    invoke-direct {v8, v0, v4}, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1$1;-><init>(Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;Lkotlin/coroutines/Continuation;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    goto :goto_10

    :cond_16
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_17
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_18
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_19
    :goto_f
    iget-object v0, v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity$showLanTransferPanel$1;->this$0:Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;

    sget v1, Lcom/deepalhome/launcher/wallpaper/WallpaperManagementActivity;->$r8$clinit:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f1304b7

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f1304b6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    sget-object v11, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    const v1, 0x7f1304b8

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v1, 0x7f13021b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v1

    const-string v2, "getString(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v27, 0x0

    const v29, 0x7fbcc

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    move-object/from16 v22, v0

    invoke-static/range {v11 .. v29}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    :goto_10
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
