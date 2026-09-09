.class public final Lcom/deepalhome/launcher/MainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# static fields
.field public static final Companion:Lcom/deepalhome/launcher/MainActivity$Companion;

.field public static isHomeScreenVisible:Z


# instance fields
.field public binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

.field public final fragmentLifecycleCallbacks:Lcom/deepalhome/launcher/MainActivity$fragmentLifecycleCallbacks$1;

.field public lastAppliedIsNight:Ljava/lang/Boolean;

.field public lastAppliedRootUiMode:Lcom/deepalhome/launcher/MainActivity$RootUiMode;

.field public pendingRootUiSync:Z

.field public startupRootCheckScheduled:Z

.field public final uiModeChangedListener:Lcom/deepalhome/launcher/MainActivity$uiModeChangedListener$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/MainActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/MainActivity$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/MainActivity;->Companion:Lcom/deepalhome/launcher/MainActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/deepalhome/launcher/MainActivity$uiModeChangedListener$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/MainActivity$uiModeChangedListener$1;-><init>(Lcom/deepalhome/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/MainActivity;->uiModeChangedListener:Lcom/deepalhome/launcher/MainActivity$uiModeChangedListener$1;

    new-instance v0, Lcom/deepalhome/launcher/MainActivity$fragmentLifecycleCallbacks$1;

    invoke-direct {v0, p0}, Lcom/deepalhome/launcher/MainActivity$fragmentLifecycleCallbacks$1;-><init>(Lcom/deepalhome/launcher/MainActivity;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/MainActivity;->fragmentLifecycleCallbacks:Lcom/deepalhome/launcher/MainActivity$fragmentLifecycleCallbacks$1;

    return-void
.end method


# virtual methods
.method public final applyLauncherUi()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/MainActivity;->lastAppliedRootUiMode:Lcom/deepalhome/launcher/MainActivity$RootUiMode;

    sget-object v1, Lcom/deepalhome/launcher/MainActivity$RootUiMode;->Launcher:Lcom/deepalhome/launcher/MainActivity$RootUiMode;

    const/16 v2, 0x8

    const-string v3, "binding"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityMainBinding;->splashLogoIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    return-void

    :cond_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/launcher/MainActivity;->lastAppliedRootUiMode:Lcom/deepalhome/launcher/MainActivity$RootUiMode;

    iput-object v4, p0, Lcom/deepalhome/launcher/MainActivity;->lastAppliedIsNight:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityMainBinding;->splashLogoIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-eqz p0, :cond_2

    const v0, 0x7f06038f

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_2
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4
.end method

.method public final applySplashUi()V
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/MainActivity;->lastAppliedRootUiMode:Lcom/deepalhome/launcher/MainActivity$RootUiMode;

    sget-object v2, Lcom/deepalhome/launcher/MainActivity$RootUiMode;->Splash:Lcom/deepalhome/launcher/MainActivity$RootUiMode;

    const/4 v3, 0x0

    const-string v4, "binding"

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/MainActivity;->lastAppliedIsNight:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityMainBinding;->splashLogoIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_0
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_1
    iput-object v2, p0, Lcom/deepalhome/launcher/MainActivity;->lastAppliedRootUiMode:Lcom/deepalhome/launcher/MainActivity$RootUiMode;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/deepalhome/launcher/MainActivity;->lastAppliedIsNight:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-eqz v1, :cond_7

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/ActivityMainBinding;->splashLogoIv:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityMainBinding;->splashLogoIv:Landroid/widget/ImageView;

    const v1, 0x7f10002c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-eqz p0, :cond_2

    const v0, 0x7f06037c

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_4
    iget-object v0, p0, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/ActivityMainBinding;->splashLogoIv:Landroid/widget/ImageView;

    const v1, 0x7f10002b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p0, p0, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-eqz p0, :cond_5

    const v0, 0x7f06037b

    iget-object p0, p0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void

    :cond_5
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3

    :cond_7
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v3
.end method

.method public final ensureRootFragment(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const v1, 0x7f0b0239

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "ensureRootFragment("

    const-string v2, "MainActivity"

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): missing fragment, recovering"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/deepalhome/launcher/App;->Companion:Lcom/deepalhome/launcher/App$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/App;->hasPassedSplash:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/MainActivity;->showSplash()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/MainActivity;->showLauncher()V

    goto :goto_0

    :cond_3
    instance-of v0, v0, Lcom/deepalhome/launcher/splash/SplashFragment;

    if-eqz v0, :cond_4

    sget-object v0, Lcom/deepalhome/launcher/App;->Companion:Lcom/deepalhome/launcher/App$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/App;->hasPassedSplash:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "): splash stale, switching to launcher"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/MainActivity;->showLauncher()V

    :cond_4
    :goto_0
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/LauncherUtil;->Companion:Lcom/deepalhome/launcher/util/LauncherUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LauncherUtil$Companion;->getSystemLauncherIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    sget p0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lcom/blankj/utilcode/util/ActivityUtils;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "config"

    invoke-static {p1, p0}, Lcom/deepalhome/launcher/theme/UIModeManager;->applyNightMode(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v1, p0

    const/4 v2, 0x1

    invoke-super/range {p0 .. p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyAllBarVisibility(Landroid/app/Activity;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p0 .. p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/app/Activity;)V

    const v0, 0x7f0e0022

    invoke-static {v1, v0}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    const-string v3, "setContentView(...)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    iput-object v0, v1, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    iget-object v3, v1, Lcom/deepalhome/launcher/MainActivity;->fragmentLifecycleCallbacks:Lcom/deepalhome/launcher/MainActivity$fragmentLifecycleCallbacks$1;

    iget-object v0, v0, Landroidx/fragment/app/FragmentManager;->mLifecycleCallbacksDispatcher:Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;

    iget-object v0, v0, Landroidx/fragment/app/FragmentAnim$AnimationOrAnimator;->animation:Ljava/lang/Cloneable;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v4, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;

    invoke-direct {v4, v3, v2}, Landroidx/fragment/app/FragmentLifecycleCallbacksDispatcher$FragmentLifecycleCallbacksHolder;-><init>(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V

    invoke-virtual {v0, v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    iget-object v3, v1, Lcom/deepalhome/launcher/MainActivity;->uiModeChangedListener:Lcom/deepalhome/launcher/MainActivity$uiModeChangedListener$1;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Lcom/deepalhome/launcher/theme/UIModeManager;->addOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/ble/BleModule;->INSTANCE:Lcom/deepalhome/launcher/ble/BleModule;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    new-instance v3, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v3, Lcom/deepalhome/tuotuotie/BleLogger;->sink:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    sget-object v3, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/deepalhome/tuotuotie/Tuotuotie;->appContext:Landroid/content/Context;

    sget-boolean v3, Lcom/deepalhome/tuotuotie/Tuotuotie;->initialized:Z

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v3, :cond_0

    const-string v3, "Tuotuotie"

    const-string v6, "Ignore duplicate initialization"

    invoke-static {v0, v3, v6}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_0
    sget-object v3, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceStorage;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "BleDeviceStorage"

    const-string v6, "Load device JSON: "

    :try_start_0
    sget-object v7, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->file$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v7}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    sget-object v8, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v7, v8}, Lkotlin/io/FilesKt__FileReadWriteKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "BleDeviceStorage"

    const/16 v9, 0xc8

    invoke-static {v9, v7}, Lkotlin/text/StringsKt___StringsKt;->take(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "..."

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v8, v6}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/google/gson/JsonParser;->parseString(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v0, Lcom/google/gson/JsonArray;->elements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object v8, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceStorage;

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->parseDevice(Lcom/google/gson/JsonObject;)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->sanitizeDevice(Lcom/deepalhome/tuotuotie/BleDevice;)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v8, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Parse device failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v9, v0}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v4

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_2
    invoke-static {v6}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->devices:Ljava/util/ArrayList;

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v6, "BleDeviceStorage"

    sget-object v7, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->devices:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Loaded "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " \u4e2a\u8bbe\u5907"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v6, v7}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->devices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/tuotuotie/BleDevice;

    sget-object v7, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v8, "BleDeviceStorage"

    iget-object v9, v6, Lcom/deepalhome/tuotuotie/BleDevice;->address:Ljava/lang/String;

    iget-object v6, v6, Lcom/deepalhome/tuotuotie/BleDevice;->eventActions:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "  \u8bbe\u5907 "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": eventActions="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " \u4e2a"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v8, v6}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->devices:Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :goto_3
    sget-object v6, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v7, "Failed to load device list"

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v7, v0}, Lcom/deepalhome/tuotuotie/BleLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->devices:Ljava/util/ArrayList;

    :cond_4
    :goto_4
    sget-object v3, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/tuotuotie/Tuotuotie;->INSTANCE:Lcom/deepalhome/tuotuotie/Tuotuotie;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v0

    const-string v6, "bluetooth"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v6, "null cannot be cast to non-null type android.bluetooth.BluetoothManager"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    sget-object v6, Lcom/deepalhome/tuotuotie/BleDeviceManager;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v6

    if-ne v6, v2, :cond_5

    move v7, v2

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "BLE \u7ba1\u7406\u5668\u521d\u59cb\u5316: adapterEnabled="

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "BleDeviceManager"

    invoke-static {v0, v7, v6}, Lcom/deepalhome/tuotuotie/BleLogger;->d$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->emitDeviceSnapshot()V

    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceStorage;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/tuotuotie/BleDeviceStorage;->getAllDevices()Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v3

    :try_start_3
    sget-object v6, Lcom/deepalhome/tuotuotie/BleDeviceManager;->devices:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/deepalhome/tuotuotie/BleDevice;

    sget-object v14, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    const/4 v13, 0x0

    const/16 v15, 0x1f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v15}, Lcom/deepalhome/tuotuotie/BleDevice;->copy$default(Lcom/deepalhome/tuotuotie/BleDevice;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;Lcom/deepalhome/tuotuotie/BleConnectionState;I)Lcom/deepalhome/tuotuotie/BleDevice;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_10

    :cond_6
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v3}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->emitDeviceSnapshot()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v3

    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->currentAdapterState()I

    move-result v0

    sput v0, Lcom/deepalhome/tuotuotie/Tuotuotie;->lastObservedAdapterState:I

    sget-boolean v0, Lcom/deepalhome/tuotuotie/Tuotuotie;->receiverRegistered:Z

    if-eqz v0, :cond_7

    goto :goto_7

    :cond_7
    invoke-static {}, Lcom/deepalhome/tuotuotie/Tuotuotie;->getContext$tuotuotie_release()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v7, Lcom/deepalhome/tuotuotie/Tuotuotie;->systemReceiver:Lcom/deepalhome/tuotuotie/Tuotuotie$systemReceiver$1;

    const/16 v8, 0x21

    if-lt v6, v8, :cond_8

    const/4 v6, 0x4

    invoke-virtual {v0, v7, v3, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_6

    :cond_8
    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_6
    sput-boolean v2, Lcom/deepalhome/tuotuotie/Tuotuotie;->receiverRegistered:Z

    sget-object v0, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    const-string v3, "Tuotuotie"

    const-string v6, "Registered system BLE reconnect listener"

    invoke-static {v0, v3, v6}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "register"

    invoke-static {v0}, Lcom/deepalhome/tuotuotie/Tuotuotie;->logSnapshot(Ljava/lang/String;)V

    :goto_7
    sget-object v0, Lcom/deepalhome/tuotuotie/Tuotuotie;->adapterStateMonitorJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-ne v0, v2, :cond_9

    goto :goto_8

    :cond_9
    new-instance v9, Lcom/deepalhome/tuotuotie/Tuotuotie$startAdapterStateMonitor$1;

    invoke-direct {v9, v5, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    sget-object v6, Lcom/deepalhome/tuotuotie/Tuotuotie;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/tuotuotie/Tuotuotie;->adapterStateMonitorJob:Lkotlinx/coroutines/Job;

    :goto_8
    sget-object v0, Lcom/deepalhome/tuotuotie/BleDeviceManager;->INSTANCE:Lcom/deepalhome/tuotuotie/BleDeviceManager;

    invoke-virtual {v0}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->getDevices$tuotuotie_release()Ljava/util/List;

    move-result-object v3

    sget-object v6, Lcom/deepalhome/tuotuotie/BleLogger;->INSTANCE:Lcom/deepalhome/tuotuotie/BleLogger;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Managed reconnect device count: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "BleDeviceManager"

    invoke-static {v6, v8, v7}, Lcom/deepalhome/tuotuotie/BleLogger;->i$default(Lcom/deepalhome/tuotuotie/BleLogger;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_9

    :cond_a
    const-string v3, "startup"

    const-string v6, "init managed reconnect"

    invoke-virtual {v0, v3, v6}, Lcom/deepalhome/tuotuotie/BleDeviceManager;->requestAutoReconnect$tuotuotie_release(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    sput-boolean v2, Lcom/deepalhome/tuotuotie/Tuotuotie;->initialized:Z

    :goto_a
    sget-object v3, Lcom/deepalhome/mitemp/MiTemp;->INSTANCE:Lcom/deepalhome/mitemp/MiTemp;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->repository:Lcom/deepalhome/mitemp/MiThermometerRepository;

    if-eqz v0, :cond_b

    goto :goto_b

    :cond_b
    monitor-enter v3

    :try_start_4
    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->repository:Lcom/deepalhome/mitemp/MiThermometerRepository;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v0, :cond_c

    monitor-exit v3

    goto :goto_b

    :cond_c
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->appContext:Landroid/content/Context;

    new-instance v6, Lcom/deepalhome/mitemp/MiTempDeviceStorage;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {v6, v0}, Lcom/deepalhome/mitemp/MiTempDeviceStorage;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/deepalhome/mitemp/MiTemp;->storage:Lcom/deepalhome/mitemp/MiTempDeviceStorage;

    new-instance v6, Lcom/deepalhome/mitemp/MiThermometerRepository;

    invoke-direct {v6, v0}, Lcom/deepalhome/mitemp/MiThermometerRepository;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/deepalhome/mitemp/MiTemp;->repository:Lcom/deepalhome/mitemp/MiThermometerRepository;

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->_deviceFlow:Lkotlinx/coroutines/flow/MutableStateFlow;

    sget-object v6, Lcom/deepalhome/mitemp/MiTemp;->storage:Lcom/deepalhome/mitemp/MiTempDeviceStorage;

    if-eqz v6, :cond_13

    invoke-virtual {v6}, Lcom/deepalhome/mitemp/MiTempDeviceStorage;->getAllDevices()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcom/deepalhome/mitemp/MiTemp;->sortedDevices(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v0, v6}, Lkotlinx/coroutines/flow/MutableStateFlow;->setValue(Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/mitemp/MiTemp;->stateObserverJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_d

    invoke-static {v0, v4, v2, v4}, Lkotlinx/coroutines/Job$DefaultImpls;->cancel$default(Lkotlinx/coroutines/Job;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_d
    new-instance v9, Lcom/deepalhome/mitemp/MiTemp$observeRepositoryState$1;

    invoke-direct {v9, v5, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    sget-object v6, Lcom/deepalhome/mitemp/MiTemp;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/mitemp/MiTemp;->stateObserverJob:Lkotlinx/coroutines/Job;

    invoke-static {v4}, Lcom/deepalhome/mitemp/MiTemp;->requestAutoReconnect(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit v3

    :goto_b
    sget-object v0, Lcom/deepalhome/launcher/ble/BleEventHandler;->INSTANCE:Lcom/deepalhome/launcher/ble/BleEventHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/ble/BleEventHandler;->collectJob:Lkotlinx/coroutines/Job;

    if-eqz v0, :cond_e

    invoke-interface {v0}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v0

    if-ne v0, v2, :cond_e

    goto :goto_c

    :cond_e
    new-instance v9, Lcom/deepalhome/launcher/ble/BleEventHandler$init$1;

    invoke-direct {v9, v5, v4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    sget-object v6, Lcom/deepalhome/launcher/ble/BleEventHandler;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/ble/BleEventHandler;->collectJob:Lkotlinx/coroutines/Job;

    :goto_c
    sget-object v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;->INSTANCE:Lcom/deepalhome/launcher/ble/menu/RadialMenuManager;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v5, "null cannot be cast to non-null type android.app.Application"

    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v3, Landroid/app/Application;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$registerLifecycle$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/ble/menu/RadialMenuManager$registerLifecycle$1;-><init>()V

    invoke-virtual {v3, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/MainActivity;->applySplashUi()V

    iget-boolean v0, v1, Lcom/deepalhome/launcher/MainActivity;->startupRootCheckScheduled:Z

    if-eqz v0, :cond_f

    goto :goto_d

    :cond_f
    iput-boolean v2, v1, Lcom/deepalhome/launcher/MainActivity;->startupRootCheckScheduled:Z

    iget-object v0, v1, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-eqz v0, :cond_12

    const-string v3, "getRoot(...)"

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/umeng/commonsdk/internal/c$2;

    const/16 v4, 0x9

    invoke-direct {v3, v4, v0, v1}, Lcom/umeng/commonsdk/internal/c$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v3}, Landroidx/core/view/OneShotPreDrawListener;->add(Landroid/view/View;Ljava/lang/Runnable;)V

    :goto_d
    sget-object v0, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->dismiss()V

    if-nez p1, :cond_11

    sget-object v0, Lcom/deepalhome/launcher/App;->Companion:Lcom/deepalhome/launcher/App$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/App;->hasPassedSplash:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/MainActivity;->showSplash()V

    goto :goto_e

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/MainActivity;->showLauncher()V

    goto :goto_e

    :cond_11
    const-string v0, "onCreate:restore"

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/MainActivity;->ensureRootFragment(Ljava/lang/String;)V

    const-string v0, "onCreate:restore"

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/MainActivity;->requestRootUiSync(Ljava/lang/String;)V

    :goto_e
    return-void

    :cond_12
    const-string v0, "binding"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v4

    :catchall_1
    move-exception v0

    goto :goto_f

    :cond_13
    :try_start_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MiTemp.init() \u672a\u8c03\u7528"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_f
    monitor-exit v3

    throw v0

    :goto_10
    monitor-exit v3

    throw v0
.end method

.method public final onDestroy()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/MainActivity;->uiModeChangedListener:Lcom/deepalhome/launcher/MainActivity$uiModeChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/theme/UIModeManager;->removeOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/deepalhome/launcher/MainActivity;->fragmentLifecycleCallbacks:Lcom/deepalhome/launcher/MainActivity$fragmentLifecycleCallbacks$1;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->unregisterFragmentLifecycleCallbacks(Landroidx/fragment/app/FragmentManager$FragmentLifecycleCallbacks;)V

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    sget-object p0, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->dismiss()V

    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    sget-object p1, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/util/AppUtil;->appCenterHost:Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/deepalhome/launcher/launcher/LauncherFragment$onViewCreated$5;->this$0:Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/deepalhome/launcher/launcher/LauncherFragment;->access$dismissAppCenter(Lcom/deepalhome/launcher/launcher/LauncherFragment;)V

    :cond_1
    :goto_0
    const-string p1, "onNewIntent"

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/MainActivity;->ensureRootFragment(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/MainActivity;->requestRootUiSync(Ljava/lang/String;)V

    return-void
.end method

.method public final onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    sget-object p0, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;

    sget-object v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/OverlayConditions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->LAUNCHER_FOCUS:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    iget-object v0, v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;->tag:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->setOverlayShowing(Ljava/lang/String;Z)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/deepalhome/launcher/MainActivity;->isHomeScreenVisible:Z

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const-string v0, "onResume"

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/MainActivity;->ensureRootFragment(Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    const-string v1, "resources"

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/theme/UIModeManager;->applyNightMode(Ljava/lang/String;Z)V

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyAllBarVisibility(Landroid/app/Activity;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/app/Activity;)V

    sget-object v0, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;

    sget-object v1, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/OverlayConditions;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->LAUNCHER_FOCUS:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    iget-object v1, v1, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;->tag:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->hasWindowFocus()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->setOverlayShowing(Ljava/lang/String;Z)V

    sput-boolean v3, Lcom/deepalhome/launcher/MainActivity;->isHomeScreenVisible:Z

    sget-object v0, Lcom/deepalhome/launcher/analytics/UmengInitializer;->INSTANCE:Lcom/deepalhome/launcher/analytics/UmengInitializer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/analytics/UmengInitializer;->requestInit(Landroid/content/Context;)V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    sget-object p0, Lcom/deepalhome/launcher/map/MapUtil;->Companion:Lcom/deepalhome/launcher/map/MapUtil$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    xor-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_0

    sget-boolean p1, Lcom/deepalhome/launcher/MainActivity;->isHomeScreenVisible:Z

    if-eqz p1, :cond_0

    const-string p1, "com.baidu.naviauto.deepal"

    const-string v0, "com.baidu.naviauto"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMapAppPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;

    sget-object v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->INSTANCE:Lcom/deepalhome/launcher/system/overlay/OverlayConditions;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions;->LAUNCHER_FOCUS:Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;

    iget-object v0, v0, Lcom/deepalhome/launcher/system/overlay/OverlayConditions$OverlayCondition;->tag:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/deepalhome/launcher/system/overlay/SystemOverlayDetector;->setOverlayShowing(Ljava/lang/String;Z)V

    return-void
.end method

.method public final requestRootUiSync(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/MainActivity;->binding:Lcom/deepalhome/launcher/databinding/ActivityMainBinding;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/deepalhome/launcher/MainActivity;->pendingRootUiSync:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/MainActivity;->pendingRootUiSync:Z

    if-eqz v0, :cond_2

    new-instance v1, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    const-string p0, "binding"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final showLauncher()V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/MainActivity;->applyLauncherUi()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v0, p0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance p0, Lcom/deepalhome/launcher/launcher/LauncherFragment;

    invoke-direct {p0}, Lcom/deepalhome/launcher/launcher/LauncherFragment;-><init>()V

    const/4 v1, 0x0

    const v2, 0x7f0b0239

    invoke-virtual {v0, v2, p0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void
.end method

.method public final showSplash()V
    .locals 4

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroidx/fragment/app/BackStackRecord;

    invoke-direct {v1, v0}, Landroidx/fragment/app/BackStackRecord;-><init>(Landroidx/fragment/app/FragmentManager;)V

    new-instance v0, Lcom/deepalhome/launcher/splash/SplashFragment;

    invoke-direct {v0}, Lcom/deepalhome/launcher/splash/SplashFragment;-><init>()V

    new-instance v2, Lcom/deepalhome/launcher/MainActivity$showSplash$1$1;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/MainActivity$showSplash$1$1;-><init>(Lcom/deepalhome/launcher/MainActivity;)V

    iput-object v2, v0, Lcom/deepalhome/launcher/splash/SplashFragment;->onAgreeToUseListener:Lkotlin/jvm/functions/Function0;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const p0, 0x7f0b0239

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v0, v2, v3}, Landroidx/fragment/app/BackStackRecord;->doAddOp(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Landroidx/fragment/app/BackStackRecord;->commitInternal(Z)I

    return-void
.end method
