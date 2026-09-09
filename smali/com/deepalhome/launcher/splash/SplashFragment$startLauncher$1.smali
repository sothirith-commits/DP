.class public final Lcom/deepalhome/launcher/splash/SplashFragment$startLauncher$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/splash/SplashFragment;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/splash/SplashFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/splash/SplashFragment$startLauncher$1;->this$0:Lcom/deepalhome/launcher/splash/SplashFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/deepalhome/launcher/splash/SplashFragment$startLauncher$1;->this$0:Lcom/deepalhome/launcher/splash/SplashFragment;

    iget-boolean v0, v6, Lcom/deepalhome/launcher/splash/SplashFragment;->hasLaunched:Z

    if-nez v0, :cond_f

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/deepalhome/launcher/splash/SplashFragment;->hasLaunched:Z

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isDynamicSplashEnabled()Z

    move-result v0

    const/4 v8, 0x0

    const-string v1, "inflate(...)"

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v10

    if-nez v10, :cond_1

    goto/16 :goto_8

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v10}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->findHudDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    const-wide/16 v11, 0x1770

    if-nez v0, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v10}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v7}, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->setHudVideoAreaEnabled(Z)V

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->dismissPresentation()V

    sget-object v5, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$setSuppressedByStartupVideo$1;

    invoke-direct {v5, v7}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager$setSuppressedByStartupVideo$1;-><init>(Z)V

    invoke-static {v5}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    new-instance v5, Landroid/view/SurfaceView;

    invoke-direct {v5, v4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v9, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 v13, 0xe

    invoke-direct {v9, v13}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object v9, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->dismissRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    invoke-virtual {v5}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v13

    new-instance v14, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1;

    invoke-direct {v14, v4, v9}, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager$show$1;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;)V

    invoke-interface {v13, v14}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    new-instance v4, Lcom/deepalhome/launcher/hud/s05utils/HudPresentation;

    invoke-direct {v4, v10, v0}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    iget-object v0, v4, Lcom/deepalhome/launcher/hud/s05utils/HudPresentation;->container:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    instance-of v14, v13, Landroid/view/ViewGroup;

    if-eqz v14, :cond_4

    check-cast v13, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_4
    move-object v13, v8

    :goto_0
    if-eqz v13, :cond_5

    invoke-virtual {v13, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    sput-object v4, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->presentation:Lcom/deepalhome/launcher/hud/s05utils/HudPresentation;

    sget-object v0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_1
    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_6
    :goto_3
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :goto_4
    sget v4, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_5
    sget-object v0, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05utils/HudStartupVideoManager;->dismiss()V

    :cond_7
    :goto_6
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/deepalhome/launcher/databinding/SplashVideoWindowBinding;->$r8$clinit:I

    sget-object v4, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v4, 0x7f0e00ff

    invoke-static {v0, v4, v8, v2, v8}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/SplashVideoWindowBinding;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v15, v0, Lcom/deepalhome/launcher/databinding/SplashVideoWindowBinding;->splashTextureView:Landroid/view/TextureView;

    const-string v1, "splashTextureView"

    invoke-static {v1, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/hjq/window/EasyWindow;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/hjq/window/EasyWindow;

    move-result-object v4

    iget-object v14, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v4, v14}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v4}, Lcom/hjq/window/EasyWindow;->setWindowType()V

    invoke-virtual {v4, v3}, Lcom/hjq/window/EasyWindow;->setWidth(I)V

    invoke-virtual {v4, v3}, Lcom/hjq/window/EasyWindow;->setHeight(I)V

    iget-object v0, v4, Lcom/hjq/window/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x300

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v4}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    invoke-virtual {v4}, Lcom/hjq/window/EasyWindow;->show()V

    iget-object v0, v4, Lcom/hjq/window/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v4}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v16, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct/range {v16 .. v16}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v9, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;

    const/4 v5, 0x0

    move-object v0, v9

    move-object/from16 v1, v16

    move-object v2, v13

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v15, v9, v11, v12}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v0, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;

    move-object v1, v9

    move-object v9, v0

    move-object v11, v13

    move-object v12, v1

    move-object/from16 v13, v16

    move-object v2, v14

    move-object v14, v15

    invoke-direct/range {v9 .. v14}, Lcom/deepalhome/launcher/splash/SplashFragment$showVideoSplashWindow$1;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda2;Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/view/TextureView;)V

    invoke-virtual {v15, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    new-instance v0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/16 v3, 0xa

    invoke-direct {v0, v3, v15, v1}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_8

    :cond_8
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v4, Lcom/deepalhome/launcher/databinding/SplashWindowBinding;->$r8$clinit:I

    sget-object v4, Landroidx/databinding/DataBindingUtil;->sMapper:Landroidx/databinding/DataBinderMapperImpl;

    const v4, 0x7f0e0100

    invoke-static {v0, v4, v8, v2, v8}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/deepalhome/launcher/databinding/SplashWindowBinding;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    iget-object v1, v2, Lcom/deepalhome/launcher/databinding/SplashWindowBinding;->splashLogoIv:Landroid/widget/ImageView;

    iget-object v9, v2, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    if-eqz v0, :cond_9

    const v0, 0x7f10002c

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f06037c

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_7

    :cond_9
    const v0, 0x7f10002b

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const v0, 0x7f06037b

    invoke-virtual {v9, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_7
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/hjq/window/EasyWindow;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/hjq/window/EasyWindow;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/hjq/window/EasyWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {v4}, Lcom/hjq/window/EasyWindow;->setWindowType()V

    invoke-virtual {v4, v3}, Lcom/hjq/window/EasyWindow;->setWidth(I)V

    invoke-virtual {v4, v3}, Lcom/hjq/window/EasyWindow;->setHeight(I)V

    invoke-virtual {v4}, Lcom/hjq/window/EasyWindow;->show()V

    iget-object v0, v4, Lcom/hjq/window/EasyWindow;->mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual {v4}, Lcom/hjq/window/EasyWindow;->postUpdate()V

    new-instance v3, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/16 v0, 0x19

    invoke-direct {v3, v0, v6, v4}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v9, v3, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance v10, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;

    const/4 v5, 0x0

    move-object v0, v10

    move-object v1, v2

    move-object v2, v3

    move-object v3, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/splash/SplashFragment$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_8
    iget-object v0, v6, Lcom/deepalhome/launcher/splash/SplashFragment;->onAgreeToUseListener:Lkotlin/jvm/functions/Function0;

    if-eqz v0, :cond_a

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_9

    :cond_a
    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/deepalhome/launcher/MainActivity;

    if-eqz v1, :cond_b

    move-object v8, v0

    check-cast v8, Lcom/deepalhome/launcher/MainActivity;

    :cond_b
    if-eqz v8, :cond_d

    invoke-virtual {v8}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v0

    const v1, 0x7f0b0239

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/deepalhome/launcher/launcher/LauncherFragment;

    if-eqz v0, :cond_c

    invoke-virtual {v8}, Lcom/deepalhome/launcher/MainActivity;->applyLauncherUi()V

    goto :goto_9

    :cond_c
    invoke-virtual {v8}, Lcom/deepalhome/launcher/MainActivity;->showLauncher()V

    :cond_d
    :goto_9
    sget-object v0, Lcom/deepalhome/launcher/App;->Companion:Lcom/deepalhome/launcher/App$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/App;->hasPassedSplash:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LogcatUtil;->isRunning()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/LogcatUtil;->start()V

    :cond_e
    sget-object v0, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;->INSTANCE:Lcom/deepalhome/launcher/util/CoreServiceCoordinator;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const-string v2, "getApp(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;->lastForegroundAt:J

    invoke-static {v1}, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;->ensureServices(Landroid/content/Context;)V

    sget-object v0, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "splash"

    invoke-static {v1, v0}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->scheduleAutoNaviServiceCheck(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f
    :goto_a
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
