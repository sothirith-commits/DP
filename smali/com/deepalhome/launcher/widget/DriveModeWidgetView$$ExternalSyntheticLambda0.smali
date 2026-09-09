.class public final synthetic Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;->f$1:I

    const-string p1, "Forced Pure EV"

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;->f$1:I

    iput-object p2, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/deepalhome/launcher/widget/BaseWidgetView;II)V
    .locals 0

    iput p3, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 18

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x1

    const-string v4, "this$0"

    iget v5, v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;->f$1:I

    iget-object v6, v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget v0, v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez v5, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    sget-object v1, Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskAction$PureElectricMode;

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/TaskExecutor;->executeSingle(Lcom/deepalhome/launcher/task/model/TaskAction;)V

    goto :goto_0

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->pendingActionIndex:Ljava/lang/Integer;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->refreshModeStates$2()V

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v1, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    sget-object v11, Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;

    iget-object v2, v6, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView;->modes:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;

    iget-object v2, v2, Lcom/deepalhome/launcher/widget/EnergyModeWidgetView$ModeItem;->action:Lcom/deepalhome/launcher/task/model/TaskAction;

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    const/16 v16, 0xe5

    const/16 v17, 0x0

    const/4 v8, 0x0

    const-string v9, "Energy mode switch"

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v17}, Lcom/deepalhome/launcher/task/model/ScheduledTask;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/task/TaskExecutor;->execute(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V

    :goto_0
    return-void

    :pswitch_0
    check-cast v6, Ljava/lang/String;

    const-string v0, "$contentDescription"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;->INSTANCE:Lcom/deepalhome/launcher/task/SceneLegoActionFeedbackMonitor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/blankj/utilcode/util/ActivityUtils;->getTopActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v4, v4

    const v7, 0x3f6b851f    # 0.92f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v8, Landroid/widget/FrameLayout;

    invoke-direct {v8, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x1

    invoke-direct {v9, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v9, "#CC000000"

    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundColor(I)V

    new-instance v9, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$$ExternalSyntheticLambda2;

    const/4 v11, 0x3

    invoke-direct {v9, v11, v7}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v8, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v9, Landroid/widget/ImageView;

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v12, -0x2

    invoke-direct {v11, v4, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x11

    iput v4, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {v9, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    new-instance v4, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, v7}, Lcom/deepalhome/launcher/settings/S05AppUpdateManager$$ExternalSyntheticLambda2;-><init>(ILkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v9, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v2, v8}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string v2, "dialog"

    if-eqz v0, :cond_7

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v10, v10}, Landroid/view/Window;->setLayout(II)V

    :cond_3
    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    iget-object v4, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v4, :cond_6

    check-cast v4, Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyTransparentSystemBars(Landroid/view/Window;)V

    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_5

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    iget-object v0, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v0, :cond_4

    check-cast v0, Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_1
    return-void

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_7
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    sget v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x6

    if-ne v5, v0, :cond_a

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v2, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v2, :cond_8

    move-object v1, v0

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    :cond_8
    if-nez v1, :cond_9

    goto :goto_3

    :cond_9
    sget-object v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->Companion:Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;-><init>()V

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicProgressCustomIconPath()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/deepalhome/launcher/settings/LayoutSettingsView$openIconLibraryForCustomStyle$1;

    invoke-direct {v4, v6}, Lcom/deepalhome/launcher/settings/LayoutSettingsView$openIconLibraryForCustomStyle$1;-><init>(Lcom/deepalhome/launcher/settings/LayoutSettingsView;)V

    iput-boolean v3, v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->selectOnlyMode:Z

    iput-object v2, v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->selectOnlyCurrentPath:Ljava/lang/String;

    iput-object v4, v0, Lcom/deepalhome/launcher/floating/IconLibraryDialogFragment;->onIconSelected:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManagerImpl;

    move-result-object v1

    const-string v2, "ProgressIconLibrary"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget v0, v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->currentSelectedStyle:I

    if-eq v0, v5, :cond_d

    iput v5, v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->currentSelectedStyle:I

    invoke-virtual {v6, v5}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->updateStyleSelection(I)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/deepalhome/launcher/config/UserConfig;->setMusicProgressStyle(I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicProgressStyleEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->stylePreviews:Ljava/util/List;

    if-eqz v0, :cond_c

    if-ltz v5, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_c

    iget-object v0, v6, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->stylePreviews:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->startAnimation()V

    goto :goto_2

    :cond_b
    const-string v0, "stylePreviews"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_c
    :goto_2
    sget-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicSettingsManager;->notifyChanged()V

    :cond_d
    :goto_3
    return-void

    :pswitch_2
    sget v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->$r8$clinit:I

    check-cast v6, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_4

    :cond_e
    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    iget-object v1, v6, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->modes:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    iget v0, v0, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->actionMode:I

    if-ne v0, v2, :cond_f

    goto :goto_4

    :cond_f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, v6, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->pendingModeIndex:Ljava/lang/Integer;

    invoke-virtual {v6}, Lcom/deepalhome/launcher/widget/DriveModeWidgetView;->refreshModeStates$1()V

    sget-object v0, Lcom/deepalhome/launcher/task/TaskExecutor;->INSTANCE:Lcom/deepalhome/launcher/task/TaskExecutor;

    new-instance v2, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    sget-object v10, Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;->INSTANCE:Lcom/deepalhome/launcher/task/model/TaskTrigger$Invalid;

    new-instance v3, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;

    iget v1, v1, Lcom/deepalhome/launcher/widget/DriveModeWidgetView$ModeItem;->actionMode:I

    invoke-direct {v3, v1}, Lcom/deepalhome/launcher/task/model/TaskAction$SetDriveMode;-><init>(I)V

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v7, 0x0

    const-string v8, "Drive mode switch"

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/16 v15, 0xe5

    const/16 v16, 0x0

    move-object v6, v2

    invoke-direct/range {v6 .. v16}, Lcom/deepalhome/launcher/task/model/ScheduledTask;-><init>(Ljava/lang/String;Ljava/lang/String;ZLcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/task/TaskExecutor;->execute(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
