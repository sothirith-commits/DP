.class public final synthetic Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    iget-object v0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    iget-object v1, p0, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    const-string v2, "this$0"

    iget p0, p0, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->Companion:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;

    check-cast v1, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "$icon"

    check-cast v0, Lcom/deepalhome/launcher/floating/CachedIcon;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p0, -0x2

    invoke-static {p0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/16 p2, 0xb

    invoke-direct {p1, p2, v0, v1}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_0
    check-cast v1, Ljava/util/List;

    const-string p0, "$mapApps"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lcom/deepalhome/launcher/map/MapAppWindow;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/app/App;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/app/App;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sget-object p2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMapAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setSelectedMapAppPackageName(Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    sget-object p1, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_3

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    sget p1, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$clinit:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v2, p1, Landroid/app/ActivityManager;

    if-eqz v2, :cond_1

    check-cast p1, Landroid/app/ActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    move-object p1, p2

    :goto_0
    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    :try_start_1
    const-class v2, Landroid/app/ActivityManager;

    const-string v3, "forceStopPackage"

    const-class v4, Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    :try_start_2
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    const-string v2, "Failed to stop map app: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MapAppWindow"

    invoke-static {v2, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    sget p1, Lcom/deepalhome/launcher/map/MapAppWindow;->$r8$clinit:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_4

    goto/16 :goto_b

    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-virtual {p1, v1, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_5

    move p1, v2

    goto :goto_3

    :cond_5
    move p1, v1

    :goto_3
    xor-int/2addr p1, v2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "appops"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Landroid/app/AppOpsManager;

    if-eqz v4, :cond_6

    check-cast v3, Landroid/app/AppOpsManager;

    goto :goto_4

    :cond_6
    move-object v3, p2

    :goto_4
    if-nez v3, :cond_8

    :cond_7
    :goto_5
    move p2, v1

    goto :goto_a

    :cond_8
    :try_start_3
    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception v4

    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v4}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v4

    :goto_6
    instance-of v5, v4, Lkotlin/Result$Failure;

    if-eqz v5, :cond_9

    goto :goto_7

    :cond_9
    move-object p2, v4

    :goto_7
    check-cast p2, Landroid/content/pm/ApplicationInfo;

    if-nez p2, :cond_a

    goto :goto_5

    :cond_a
    const-string v4, "android:system_alert_window"

    :try_start_4
    iget v5, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, v5, p0}, Landroid/app/AppOpsManager;->unsafeCheckOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v5

    sget v6, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v5

    :goto_8
    invoke-static {v5}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_b

    goto :goto_9

    :cond_b
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, p2, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_9
    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-nez p2, :cond_7

    move p2, v2

    :goto_a
    xor-int/2addr p2, v2

    if-nez p1, :cond_c

    if-nez p2, :cond_c

    goto :goto_b

    :cond_c
    const-string v2, "Auto-granting map permissions"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1, v0, p2, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$$ExternalSyntheticLambda7;-><init>(ZLcom/deepalhome/launcher/map/MapAppWindow;ZLjava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_b
    invoke-virtual {v0}, Lcom/deepalhome/launcher/map/MapAppWindow;->initOverlayDetector()V

    sget-object p1, Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;->INSTANCE:Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;

    new-instance p2, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$1$1$1;

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$1$1$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getAmapCompatibilityDismissed()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-virtual {p2}, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$1$1$1;->invoke()Ljava/lang/Object;

    goto :goto_d

    :cond_d
    invoke-static {p0}, Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;->isAmapPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {p0}, Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;->isCompatible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    goto :goto_c

    :cond_e
    invoke-static {p0, p2}, Lcom/deepalhome/launcher/map/AmapCompatibilityChecker;->showCompatibilityDialog(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    goto :goto_d

    :cond_f
    :goto_c
    invoke-virtual {p2}, Lcom/deepalhome/launcher/map/MapAppWindow$showMapPicker$1$1$1$1;->invoke()Ljava/lang/Object;

    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
