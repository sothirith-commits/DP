.class public final Lcom/deepalhome/launcher/map/MapController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/map/MapController;

.field public static final cornerInset$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final cornerRadius$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static volatile isShowing:Z

.field public static lastFrame:Lcom/deepalhome/launcher/map/MapController$MapFrame;

.field public static final lock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepalhome/launcher/map/MapController;

    invoke-direct {v0}, Lcom/deepalhome/launcher/map/MapController;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/map/MapController;->lock:Ljava/lang/Object;

    sget-object v0, Lcom/deepalhome/launcher/map/MapController$cornerRadius$2;->INSTANCE:Lcom/deepalhome/launcher/map/MapController$cornerRadius$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/map/MapController;->cornerRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object v0, Lcom/deepalhome/launcher/map/MapController$cornerInset$2;->INSTANCE:Lcom/deepalhome/launcher/map/MapController$cornerInset$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/map/MapController;->cornerInset$delegate:Lkotlin/SynchronizedLazyImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyCornerInsetSafely(Lcom/deepalhome/launcher/map/MapController$MapFrame;)Lcom/deepalhome/launcher/map/MapController$MapFrame;
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->cornerInset$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->width:I

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->height:I

    sub-int/2addr v3, v1

    if-lez v2, :cond_1

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/deepalhome/launcher/map/MapController$MapFrame;

    iget v4, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    add-int/2addr v4, v0

    iget p0, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    add-int/2addr p0, v0

    invoke-direct {v1, v4, p0, v2, v3}, Lcom/deepalhome/launcher/map/MapController$MapFrame;-><init>(IIII)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static applyDpiTopOffset(Lcom/deepalhome/launcher/map/MapController$MapFrame;)Lcom/deepalhome/launcher/map/MapController$MapFrame;
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getAppDensityDpi()I

    move-result v0

    const/16 v1, 0xf0

    const/16 v2, 0xa0

    invoke-static {v0, v2, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v0

    const/4 v1, 0x0

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    const/16 v1, 0x14

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result v1

    :goto_0
    if-nez v1, :cond_1

    return-object p0

    :cond_1
    iget v0, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    sub-int/2addr v0, v1

    new-instance v1, Lcom/deepalhome/launcher/map/MapController$MapFrame;

    iget v2, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->width:I

    iget v3, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->height:I

    iget p0, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/deepalhome/launcher/map/MapController$MapFrame;-><init>(IIII)V

    return-object v1
.end method

.method public static dismiss()V
    .locals 3

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->isDeepalMapMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->dismissPlus()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->isAmapPlusMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->dismissPlus()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/deepalhome/launcher/map/MapController;->lastFrame:Lcom/deepalhome/launcher/map/MapController$MapFrame;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "club.deepal.floatmap"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_CMD"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/deepalhome/launcher/map/MapController;->sendBroadcastSafely(Landroid/content/Intent;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static dismissPlus()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/deepalhome/launcher/map/MapController;->lastFrame:Lcom/deepalhome/launcher/map/MapController$MapFrame;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.plus.closemap"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/map/MapController;->sendBroadcastSafely(Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static exitNavi()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_TYPE"

    const/16 v2, 0x271a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/deepalhome/launcher/map/MapController;->sendBroadcastSafely(Landroid/content/Intent;)V

    return-void
.end method

.method public static hide()V
    .locals 3

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->isDeepalMapMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->hidePlus()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->isAmapPlusMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->hidePlus()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    const/4 v2, 0x0

    sput-object v2, Lcom/deepalhome/launcher/map/MapController;->lastFrame:Lcom/deepalhome/launcher/map/MapController$MapFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "club.deepal.floatmap"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_CMD"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/deepalhome/launcher/map/MapController;->sendBroadcastSafely(Landroid/content/Intent;)V

    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static hidePlus()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    const/4 v2, 0x0

    sput-object v2, Lcom/deepalhome/launcher/map/MapController;->lastFrame:Lcom/deepalhome/launcher/map/MapController$MapFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.autonavi.plus.closemap"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/map/MapController;->sendBroadcastSafely(Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static isAmapPlusMode()Z
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMapAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "amapauto"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "np"

    invoke-static {v0, v1}, Lkotlin/text/StringsKt__StringsJVMKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "com.wt.mahjong"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    return v2
.end method

.method public static isDeepalMapMode()Z
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMapAppPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "baidu"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/map/MapUtil;->deepalMapPackages:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method public static sendBroadcastSafely(Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_0
    :goto_0
    return-void
.end method

.method public static setTheme(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_TYPE"

    const/16 v2, 0x2740

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "EXTRA_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/deepalhome/launcher/map/MapController;->sendBroadcastSafely(Landroid/content/Intent;)V

    return-void
.end method

.method public static show(IIIIIZ)V
    .locals 4

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->isDeepalMapMode()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_0

    sub-int/2addr p1, p4

    :cond_0
    new-instance p4, Lcom/deepalhome/launcher/map/MapController$MapFrame;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/deepalhome/launcher/map/MapController$MapFrame;-><init>(IIII)V

    invoke-virtual {p4}, Lcom/deepalhome/launcher/map/MapController$MapFrame;->isValid()Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_7

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/map/MapController;->lock:Ljava/lang/Object;

    monitor-enter p0

    if-nez p5, :cond_2

    :try_start_0
    sget-boolean p1, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/deepalhome/launcher/map/MapController;->lastFrame:Lcom/deepalhome/launcher/map/MapController$MapFrame;

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    monitor-exit p0

    goto/16 :goto_7

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    :try_start_1
    sput-object p4, Lcom/deepalhome/launcher/map/MapController;->lastFrame:Lcom/deepalhome/launcher/map/MapController$MapFrame;

    sput-boolean v3, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    invoke-static {p4}, Lcom/deepalhome/launcher/map/MapController;->applyCornerInsetSafely(Lcom/deepalhome/launcher/map/MapController$MapFrame;)Lcom/deepalhome/launcher/map/MapController$MapFrame;

    move-result-object p0

    if-nez p0, :cond_3

    goto/16 :goto_7

    :cond_3
    invoke-static {p0}, Lcom/deepalhome/launcher/map/MapController;->applyDpiTopOffset(Lcom/deepalhome/launcher/map/MapController$MapFrame;)Lcom/deepalhome/launcher/map/MapController$MapFrame;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.autonavi.plus.showmap"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "x"

    iget p3, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "y"

    iget p3, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "w"

    iget p3, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    iget p4, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->width:I

    add-int/2addr p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "h"

    iget p3, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    iget p0, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->height:I

    add-int/2addr p3, p0

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "r"

    invoke-virtual {p1, p0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1}, Lcom/deepalhome/launcher/map/MapController;->sendBroadcastSafely(Landroid/content/Intent;)V

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    invoke-static {v1}, Lcom/deepalhome/launcher/map/MapController;->setTheme(I)V

    goto/16 :goto_7

    :goto_1
    monitor-exit p0

    throw p1

    :cond_5
    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->isAmapPlusMode()Z

    move-result v0

    if-eqz v0, :cond_b

    sub-int/2addr p1, p4

    new-instance p4, Lcom/deepalhome/launcher/map/MapController$MapFrame;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/deepalhome/launcher/map/MapController$MapFrame;-><init>(IIII)V

    invoke-virtual {p4}, Lcom/deepalhome/launcher/map/MapController$MapFrame;->isValid()Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_7

    :cond_6
    sget-object p0, Lcom/deepalhome/launcher/map/MapController;->lock:Ljava/lang/Object;

    monitor-enter p0

    if-nez p5, :cond_7

    :try_start_2
    sget-boolean p1, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    if-eqz p1, :cond_7

    sget-object p1, Lcom/deepalhome/launcher/map/MapController;->lastFrame:Lcom/deepalhome/launcher/map/MapController$MapFrame;

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_7

    monitor-exit p0

    goto/16 :goto_7

    :catchall_1
    move-exception p1

    goto/16 :goto_5

    :cond_7
    :try_start_3
    sput-object p4, Lcom/deepalhome/launcher/map/MapController;->lastFrame:Lcom/deepalhome/launcher/map/MapController$MapFrame;

    sput-boolean v3, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    invoke-static {p4}, Lcom/deepalhome/launcher/map/MapController;->applyCornerInsetSafely(Lcom/deepalhome/launcher/map/MapController$MapFrame;)Lcom/deepalhome/launcher/map/MapController$MapFrame;

    move-result-object p0

    if-nez p0, :cond_8

    goto :goto_2

    :cond_8
    move-object p4, p0

    :goto_2
    invoke-static {p4}, Lcom/deepalhome/launcher/map/MapController;->applyDpiTopOffset(Lcom/deepalhome/launcher/map/MapController$MapFrame;)Lcom/deepalhome/launcher/map/MapController$MapFrame;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.autonavi.plus.showmap"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "x"

    iget p4, p1, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "y"

    iget p4, p1, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "w"

    iget p4, p1, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    iget p5, p1, Lcom/deepalhome/launcher/map/MapController$MapFrame;->width:I

    add-int/2addr p4, p5

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "h"

    iget p4, p1, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    iget p1, p1, Lcom/deepalhome/launcher/map/MapController$MapFrame;->height:I

    add-int/2addr p4, p1

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "r"

    if-eqz p0, :cond_9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_3

    :cond_9
    sget-object p0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/map/MapController;->cornerRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_3
    invoke-virtual {p2, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-static {p2}, Lcom/deepalhome/launcher/map/MapController;->sendBroadcastSafely(Landroid/content/Intent;)V

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_4

    :cond_a
    move v1, v3

    :goto_4
    invoke-static {v1}, Lcom/deepalhome/launcher/map/MapController;->setTheme(I)V

    goto/16 :goto_7

    :goto_5
    monitor-exit p0

    throw p1

    :cond_b
    sub-int/2addr p1, p4

    new-instance p4, Lcom/deepalhome/launcher/map/MapController$MapFrame;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/deepalhome/launcher/map/MapController$MapFrame;-><init>(IIII)V

    invoke-virtual {p4}, Lcom/deepalhome/launcher/map/MapController$MapFrame;->isValid()Z

    move-result p0

    if-nez p0, :cond_c

    goto/16 :goto_7

    :cond_c
    sget-object p0, Lcom/deepalhome/launcher/map/MapController;->lock:Ljava/lang/Object;

    monitor-enter p0

    if-nez p5, :cond_d

    :try_start_4
    sget-boolean p1, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    if-eqz p1, :cond_d

    sget-object p1, Lcom/deepalhome/launcher/map/MapController;->lastFrame:Lcom/deepalhome/launcher/map/MapController$MapFrame;

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz p1, :cond_d

    monitor-exit p0

    goto :goto_7

    :catchall_2
    move-exception p1

    goto :goto_8

    :cond_d
    :try_start_5
    sput-object p4, Lcom/deepalhome/launcher/map/MapController;->lastFrame:Lcom/deepalhome/launcher/map/MapController$MapFrame;

    sput-boolean v3, Lcom/deepalhome/launcher/map/MapController;->isShowing:Z

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    invoke-static {p4}, Lcom/deepalhome/launcher/map/MapController;->applyDpiTopOffset(Lcom/deepalhome/launcher/map/MapController$MapFrame;)Lcom/deepalhome/launcher/map/MapController$MapFrame;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "club.deepal.floatmap"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "KEY_CMD"

    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "KEY_X"

    iget p3, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->x:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "KEY_Y"

    iget p3, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->y:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "KEY_WIDTH"

    iget p3, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->width:I

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "KEY_HEIGHT"

    iget p0, p0, Lcom/deepalhome/launcher/map/MapController$MapFrame;->height:I

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p0, "KEY_RADIUS"

    sget-object p2, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p2, Lcom/deepalhome/launcher/map/MapController;->cornerRadius$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    invoke-static {p1}, Lcom/deepalhome/launcher/map/MapController;->sendBroadcastSafely(Landroid/content/Intent;)V

    new-instance p0, Landroid/content/Intent;

    const-string p1, "club.deepal.floatmap"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "KEY_CMD"

    const/4 p2, 0x3

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Lcom/deepalhome/launcher/map/MapController;->sendBroadcastSafely(Landroid/content/Intent;)V

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p0

    if-eqz p0, :cond_e

    goto :goto_6

    :cond_e
    move v1, v3

    :goto_6
    invoke-static {v1}, Lcom/deepalhome/launcher/map/MapController;->setTheme(I)V

    :goto_7
    return-void

    :goto_8
    monitor-exit p0

    throw p1
.end method

.method public static startNaviByCoord(Ljava/lang/String;DD)V
    .locals 3

    const-string v0, "name"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "KEY_TYPE"

    const/16 v2, 0x2736

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "POINAME"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "LAT"

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "LON"

    invoke-virtual {v0, p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "ENTRY_LAT"

    invoke-virtual {v0, p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "ENTRY_LON"

    invoke-virtual {v0, p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    const-string p0, "DEV"

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getAmapNaviStrategyStyle()I

    move-result p0

    const-string p1, "STYLE"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/deepalhome/launcher/map/MapController;->sendBroadcastSafely(Landroid/content/Intent;)V

    return-void
.end method
