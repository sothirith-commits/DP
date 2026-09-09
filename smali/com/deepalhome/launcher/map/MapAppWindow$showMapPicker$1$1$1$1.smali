.class public final Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$1$1$1;->$packageName:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    const/4 v0, 0x3

    sget-object v1, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    iget-object p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$1$1$1;->$packageName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/AppUtil;->resolveMapLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    move-object v2, v3

    :cond_0
    if-eqz v2, :cond_1

    sget-object v3, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMapAppPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setSelectedMapAppPackageName(Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;)V

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/deepalhome/launcher/util/AppUtil;->recordRecentAppLaunch(Ljava/lang/String;)V

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/util/AppUtil;->mainHandler:Landroid/os/Handler;

    sget-object v2, Lcom/deepalhome/launcher/util/AppUtil;->refreshFloatingMapToken:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-array v5, v0, [J

    fill-array-data v5, :array_0

    move v6, v1

    :goto_0
    if-ge v6, v0, :cond_3

    aget-wide v7, v5, v6

    new-instance v9, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 v10, 0x16

    invoke-direct {v9, v10}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    add-long/2addr v7, v3

    invoke-virtual {p0, v9, v2, v7, v8}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :cond_4
    if-nez v2, :cond_5

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p0

    const v0, 0x7f130391

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    sget-object p0, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->notifyMapCardOpenMap()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :array_0
    .array-data 8
        0x7d0
        0x1388
        0x2710
    .end array-data
.end method
