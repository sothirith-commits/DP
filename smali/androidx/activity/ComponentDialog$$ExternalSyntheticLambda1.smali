.class public final synthetic Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 27

    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x8

    const/16 v3, 0x11

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget v8, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v8, :pswitch_data_0

    sget-object v1, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->INSTANCE:Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/task/SceneLegoMissingSceneDialog;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    const v2, 0x3e8f5c29    # 0.28f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x438c0000    # 280.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    if-le v1, v2, :cond_1

    move v1, v2

    :cond_1
    const/high16 v2, 0x43340000    # 180.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    if-ge v1, v2, :cond_2

    move v1, v2

    :cond_2
    new-instance v12, Landroid/widget/FrameLayout;

    invoke-direct {v12, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v2, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const v0, 0x7f080243

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v1, "Force Pure Electric"

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v12, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/16 v24, 0x0

    const v26, 0x7ffe4

    const-string v9, "Force Pure Electric Usage Notice"

    const-string v10, "Need to create a building block in \"Scene Blocks\" by referring to the image first"

    const/4 v11, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    invoke-static/range {v8 .. v26}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    return-void

    :pswitch_0
    const-string v1, "$dialog"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/app/Dialog;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_1
    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->binding:Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v1, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->customNavigationBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavSettingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_2
    sget v1, Lcom/deepalhome/launcher/settings/BleSettingsView;->$r8$clinit:I

    const-string v1, "this$0"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/settings/BleSettingsView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/deepalhome/launcher/settings/BleSettingsView;->deviceListObserverJob:Lkotlinx/coroutines/Job;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lkotlinx/coroutines/Job;->isActive()Z

    move-result v1

    if-ne v1, v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/BleSettingsView;->observeDeviceState()V

    :cond_4
    :goto_0
    return-void

    :pswitch_3
    sget v1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    const-string v0, "this$0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "com.wt.mahjong"

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "activity"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Landroid/app/ActivityManager;

    if-eqz v4, :cond_5

    move-object v6, v0

    check-cast v6, Landroid/app/ActivityManager;

    :cond_5
    const v4, 0x7f1302f0

    const v8, 0x7f1302f1

    const-string v9, "getString(...)"

    if-nez v6, :cond_6

    new-instance v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "ActivityManager unavailable"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v2, v4}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_6
    :try_start_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    invoke-static {v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->isPackageProcessRunning(Landroid/app/ActivityManager;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f1302f5

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1302f4

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v2, v5}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_4

    :cond_7
    :try_start_1
    sget v0, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v6, v2}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    :try_start_3
    const-class v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v0

    const-class v5, Landroid/app/ActivityManager;

    const-string v10, "forceStopPackage"

    invoke-virtual {v5, v10, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    sget v5, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    :try_start_5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v5, "am"

    const-string v7, "force-stop"

    filled-new-array {v5, v7, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_6
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_3
    const-wide/16 v10, 0x12c

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->isPackageProcessRunning(Landroid/app/ActivityManager;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f1302f3

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1302f2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v2, v5}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    new-instance v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f1302f7

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f1302f6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v0, v2, v5}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_5

    :goto_4
    new-instance v2, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_9

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    :cond_9
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v2, v5, v0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$PackageActionResult;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    :goto_5
    new-instance v2, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v3, v1, v0}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :pswitch_4
    sget v1, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->$r8$clinit:I

    const-string v1, "this$0"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupVisible:Z

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    iget-object v0, v0, Lcom/deepalhome/launcher/navigation/view/NavDragDeleteOverlayView;->popupView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x3f6b851f    # 0.92f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    :goto_6
    return-void

    :pswitch_5
    const-string v1, "this$0"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->pendingMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->windDirectionPopup:Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    if-eqz v1, :cond_b

    iget-boolean v1, v1, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->isShowing:Z

    if-ne v1, v7, :cond_b

    goto :goto_7

    :cond_b
    iput-object v6, v0, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->pendingMode:Lcom/deepalhome/launcher/navigation/WindDirectionMode;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/WindDirectionQuickActionController;->render()V

    :cond_c
    :goto_7
    return-void

    :pswitch_6
    const-string v1, "this$0"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->pendingWindLevel:Ljava/lang/Integer;

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->fanSpeedPopup:Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    if-eqz v1, :cond_d

    iget-boolean v1, v1, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->isShowing:Z

    if-ne v1, v7, :cond_d

    goto :goto_8

    :cond_d
    iput-object v6, v0, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->pendingWindLevel:Ljava/lang/Integer;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/section/FanSpeedQuickActionController;->render()V

    :cond_e
    :goto_8
    return-void

    :pswitch_7
    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;

    invoke-static {v0}, Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;->$r8$lambda$EbXsa3lo3ZD1j2oqChTPBy3KgsI(Lcom/deepalhome/launcher/navigation/section/ClimateQuickActionController;)V

    return-void

    :pswitch_8
    const-string v1, "this$0"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/WindDirectionPopupWindow;->dismiss()V

    return-void

    :pswitch_9
    const-string v1, "this$0"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/TemperaturePopupWindow;->dismiss()V

    return-void

    :pswitch_a
    const-string v1, "this$0"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/SeatVentPopupWindow;->dismiss()V

    return-void

    :pswitch_b
    const-string v1, "this$0"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/SeatClimatePopupWindow;->dismiss()V

    return-void

    :pswitch_c
    const-string v1, "this$0"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/navigation/FanSpeedPopupWindow;->dismiss()V

    return-void

    :pswitch_d
    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/music/Music;

    const-string v1, "$music"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v9, "toLowerCase(...)"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getSinger()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getDuration()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentMusicKey:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    sget-object v3, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentLyricRequestKey:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    move v5, v7

    :cond_f
    sput-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentMusic:Lcom/deepalhome/launcher/music/Music;

    if-eqz v5, :cond_10

    goto :goto_9

    :cond_10
    sput-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentMusicKey:Ljava/lang/String;

    sput-object v2, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentLyricRequestKey:Ljava/lang/String;

    sput-object v6, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentPayload:Lcom/deepalhome/launcher/music/ttml/LyricPayload;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    sput-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentTimeline:Ljava/util/List;

    sget-wide v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->lyricRequestToken:J

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    sput-wide v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->lyricRequestToken:J

    new-instance v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {v1, v2, v3, v3}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->dispatchBroadcast(Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;)V

    sget-wide v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->lyricRequestToken:J

    sget-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    new-instance v5, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;

    invoke-direct {v5, v4, v1, v2, v0}, Lcom/deepalhome/launcher/wallpaper/WallpaperCenterFragment$loadData$1;-><init>(IJLjava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v5}, Lcom/deepalhome/launcher/music/MusicInfoUtil;->loadMusicInfoPayload(Lcom/deepalhome/launcher/music/Music;Lcom/deepalhome/launcher/music/MusicInfoUtil$PayloadCallback;)V

    :goto_9
    return-void

    :pswitch_e
    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/media/session/PlaybackState;

    const-string v1, "$state"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sput-object v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->lastPlaybackState:Landroid/media/session/PlaybackState;

    sget-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->INSTANCE:Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->currentMusic:Lcom/deepalhome/launcher/music/Music;

    if-nez v1, :cond_11

    goto :goto_a

    :cond_11
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    if-eqz v0, :cond_12

    if-eq v0, v7, :cond_12

    invoke-static {}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->dispatchCurrentSnapshot()V

    goto :goto_a

    :cond_12
    new-instance v0, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/music/Music;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-direct {v0, v1, v2, v2}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastDispatcher;->dispatchBroadcast(Lcom/deepalhome/launcher/music/broadcast/LyricBroadcastState;)V

    :goto_a
    return-void

    :pswitch_f
    const-string v1, "$this_run"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->startSettingsPreviewIfNeeded()V

    return-void

    :pswitch_10
    const-string v1, "$view"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_11
    const-string v2, "$view"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_12
    sget-object v1, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->Companion:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/floating/FloatingBallIconLibrary;->listIcons()Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v0, v1}, Lcom/deepalhome/launcher/MainActivity$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v2}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_13
    const-string v1, "this$0"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/carinfo/sr/CarSRCardHost;->attach()V

    return-void

    :pswitch_14
    sget-object v1, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v7}, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->setMenuExpanded(ZZ)V

    return-void

    :pswitch_15
    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;

    const-string v1, "$radialMenu"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->entranceRunning:Z

    if-nez v1, :cond_16

    iget-object v1, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_d

    :cond_13
    iput-boolean v7, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->entranceRunning:Z

    iget-object v1, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->entranceAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_b

    :cond_15
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/deepalhome/launcher/ble/menu/RadialMenuView;->items:Ljava/util/List;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v2

    invoke-virtual {v2}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v2

    :goto_c
    iget-boolean v3, v2, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v3, :cond_16

    invoke-virtual {v2}, Lkotlin/collections/IntIterator;->nextInt()I

    move-result v3

    int-to-long v5, v3

    const-wide/16 v7, 0x1e

    mul-long/2addr v5, v7

    new-array v7, v4, [F

    fill-array-data v7, :array_0

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v7

    const-wide/16 v8, 0x190

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v7, v5, v6}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v5, Landroid/view/animation/OvershootInterpolator;

    const v6, 0x3f99999a    # 1.2f

    invoke-direct {v5, v6}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v7, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;

    invoke-direct {v5, v0, v3, v4}, Lcom/deepalhome/launcher/ble/menu/RadialMenuView$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/ble/menu/RadialMenuView;II)V

    invoke-virtual {v7, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    :goto_d
    return-void

    :pswitch_16
    sget-object v1, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->Companion:Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService$Companion;

    const-string v1, "this$0"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->getEnabledServicesString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->doDaemon(Ljava/lang/String;)V

    return-void

    :pswitch_17
    const-string v1, "this$0"

    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v5, v0, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->mDelayNextLoadFlag:Z

    invoke-virtual {v0}, Lcom/chad/library/adapter4/loadState/trailing/TrailingLoadStateAdapter;->invokeLoadMore()V

    return-void

    :pswitch_18
    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/lifecycle/ProcessLifecycleOwner;

    const-string v1, "this$0"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->resumedCounter:I

    iget-object v2, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->registry:Landroidx/lifecycle/LifecycleRegistry;

    if-nez v1, :cond_17

    iput-boolean v7, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_17
    iget v1, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->startedCounter:I

    if-nez v1, :cond_18

    iget-boolean v1, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->pauseSent:Z

    if-eqz v1, :cond_18

    sget-object v1, Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;

    invoke-virtual {v2, v1}, Landroidx/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroidx/lifecycle/Lifecycle$Event;)V

    iput-boolean v7, v0, Landroidx/lifecycle/ProcessLifecycleOwner;->stopSent:Z

    :cond_18
    return-void

    :pswitch_19
    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;

    const-string v0, "fetchFonts result is not OK. ("

    iget-object v2, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_7
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    if-nez v3, :cond_19

    monitor-exit v2

    goto/16 :goto_13

    :catchall_3
    move-exception v0

    goto/16 :goto_15

    :cond_19
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->retrieveFontInfo()Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v2

    iget v3, v2, Landroidx/core/provider/FontsContractCompat$FontInfo;->mResultCode:I

    if-ne v3, v4, :cond_1a

    iget-object v4, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    monitor-exit v4

    goto :goto_e

    :catchall_4
    move-exception v0

    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :catchall_5
    move-exception v0

    goto/16 :goto_11

    :cond_1a
    :goto_e
    if-nez v3, :cond_1d

    :try_start_b
    const-string v0, "EmojiCompat.FontRequestEmojiCompatConfig.buildTypeface"

    invoke-static {v0}, Landroidx/core/os/TraceCompat$Api18Impl;->beginSection(Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mFontProviderHelper:Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontProviderHelper;

    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    filled-new-array {v2}, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    move-result-object v0

    invoke-static {v3, v0, v5}, Landroidx/core/graphics/TypefaceCompat;->createFromFontInfo(Landroid/content/Context;[Landroidx/core/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mContext:Landroid/content/Context;

    iget-object v2, v2, Landroidx/core/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    invoke-static {v3, v2}, Landroidx/core/graphics/TypefaceCompatUtil;->mmap(Landroid/content/Context;Landroid/net/Uri;)Ljava/nio/MappedByteBuffer;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    if-eqz v2, :cond_1c

    if-eqz v0, :cond_1c

    :try_start_c
    const-string v3, "EmojiCompat.MetadataRepo.create"

    invoke-static {v3}, Landroidx/core/os/TraceCompat$Api18Impl;->beginSection(Ljava/lang/String;)V

    new-instance v3, Landroidx/emoji2/text/MetadataRepo;

    invoke-static {v2}, Landroidx/emoji2/text/MetadataListReader;->read(Ljava/nio/MappedByteBuffer;)Landroidx/emoji2/text/flatbuffer/MetadataList;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Landroidx/emoji2/text/MetadataRepo;-><init>(Landroid/graphics/Typeface;Landroidx/emoji2/text/flatbuffer/MetadataList;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    :try_start_d
    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    :try_start_e
    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V

    iget-object v2, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    :try_start_f
    iget-object v0, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v3}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;->onLoaded(Landroidx/emoji2/text/MetadataRepo;)V

    goto :goto_f

    :catchall_6
    move-exception v0

    goto :goto_10

    :cond_1b
    :goto_f
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :try_start_10
    invoke-virtual {v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->cleanUp()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_5

    goto :goto_13

    :goto_10
    :try_start_11
    monitor-exit v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :try_start_12
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    :catchall_7
    move-exception v0

    :try_start_13
    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V

    throw v0

    :cond_1c
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Unable to open file."

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8

    :catchall_8
    move-exception v0

    :try_start_14
    invoke-static {}, Landroidx/core/os/TraceCompat$Api18Impl;->endSection()V

    throw v0

    :cond_1d
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    :goto_11
    iget-object v3, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_15
    iget-object v2, v1, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->mCallback:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;

    if-eqz v2, :cond_1e

    invoke-virtual {v2, v0}, Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;->onFailed(Ljava/lang/Throwable;)V

    goto :goto_12

    :catchall_9
    move-exception v0

    goto :goto_14

    :cond_1e
    :goto_12
    monitor-exit v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    invoke-virtual {v1}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader;->cleanUp()V

    :goto_13
    return-void

    :goto_14
    :try_start_16
    monitor-exit v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    throw v0

    :goto_15
    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    throw v0

    :pswitch_1a
    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iget-object v0, v0, Landroidx/appcompat/widget/Toolbar;->mExpandedMenuPresenter:Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v0, :cond_1f

    goto :goto_16

    :cond_1f
    iget-object v6, v0, Landroidx/appcompat/widget/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Landroidx/appcompat/view/menu/MenuItemImpl;

    :goto_16
    if-eqz v6, :cond_20

    invoke-virtual {v6}, Landroidx/appcompat/view/menu/MenuItemImpl;->collapseActionView()Z

    :cond_20
    return-void

    :pswitch_1b
    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;

    iget-object v1, v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_21

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-object v6, v0, Landroidx/activity/ComponentActivity$ReportFullyDrawnExecutorApi16Impl;->mRunnable:Ljava/lang/Runnable;

    :cond_21
    return-void

    :pswitch_1c
    iget-object v0, v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/app/AppCompatDialog;

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDialog;->$r8$lambda$qrzmfDOyDuplJFtpJLozn3P9EZI(Landroidx/appcompat/app/AppCompatDialog;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
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

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
