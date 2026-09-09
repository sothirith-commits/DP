.class public final synthetic Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILandroid/view/View;)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 13

    const-string v1, "getContext(...)"

    const-string v2, "$userConfig"

    const/16 v4, 0x8

    const-string v5, "this$0"

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;->f$1:Landroid/view/View;

    iget-object v9, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iget v0, p0, Lcom/deepalhome/launcher/settings/MuyuSettingsView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/deepalhome/launcher/settings/ScheduledTaskSettingsView;->$r8$clinit:I

    const-string v0, "$task"

    move-object v1, v9

    check-cast v1, Lcom/deepalhome/launcher/task/model/ScheduledTask;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v11, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->INSTANCE:Lcom/deepalhome/launcher/task/ScheduledTaskManager;

    invoke-virtual {v11, v1}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->isTriggerlessTask(Lcom/deepalhome/launcher/task/model/ScheduledTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast v8, Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v8, v6}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13046f

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :cond_0
    const/16 v9, 0xfb

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v0, v1

    move-object v1, v2

    move-object v2, v4

    move v3, p2

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v12

    invoke-static/range {v0 .. v10}, Lcom/deepalhome/launcher/task/model/ScheduledTask;->copy$default(Lcom/deepalhome/launcher/task/model/ScheduledTask;Ljava/lang/String;Ljava/lang/String;ZLcom/deepalhome/launcher/task/model/TaskTrigger;Ljava/util/List;Ljava/util/List;Lcom/deepalhome/launcher/task/model/ConditionLogic;Ljava/lang/String;ILjava/lang/Object;)Lcom/deepalhome/launcher/task/model/ScheduledTask;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/deepalhome/launcher/task/ScheduledTaskManager;->updateTask(Lcom/deepalhome/launcher/task/model/ScheduledTask;)V

    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    const-string v0, "$config"

    check-cast v9, Lcom/deepalhome/launcher/config/UserConfig;

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setBottomNavBackgroundEnabled(Z)V

    invoke-virtual {v8}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavBlurContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_1

    move v1, v7

    goto :goto_1

    :cond_1
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v8}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavCardModeBgContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_2

    move v4, v7

    :cond_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_1
    sget v0, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;->$r8$clinit:I

    check-cast v9, Lcom/deepalhome/launcher/config/UserConfig;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Lcom/deepalhome/launcher/settings/FloatingBallSettingsView;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallEnabled(Z)V

    invoke-virtual {v8}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/FloatingBallSettingsViewBinding;->floatingBallDetailsContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_3

    move v4, v7

    :cond_3
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_4

    sget-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallEnabled(Z)V

    invoke-static {v2, v6}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->ensureVisible(Landroid/content/Context;Z)V

    goto :goto_2

    :cond_4
    sget-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallEnabled(Z)V

    sget-object v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->gifView:Lcom/deepalhome/launcher/floating/GifTextureView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/deepalhome/launcher/floating/GifTextureView;->stopRendering()V

    :cond_5
    sget-object v0, Lcom/petterp/floatingx/FloatingX;->fxs:Ljava/util/HashMap;

    const-string v1, "floating_ball"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->hide()V

    :cond_6
    :goto_2
    return-void

    :pswitch_2
    sget v0, Lcom/deepalhome/launcher/settings/MuyuSettingsView;->$r8$clinit:I

    check-cast v9, Lcom/deepalhome/launcher/config/UserConfig;

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v8, Lcom/deepalhome/launcher/settings/MuyuSettingsView;

    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuEnabled(Z)V

    invoke-virtual {v8}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MuyuSettingsViewBinding;->muyuDetailsContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_7

    move v4, v7

    :cond_7
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    if-eqz p2, :cond_8

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuEnabled(Z)V

    invoke-static {v2, v6}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->ensureVisible(Landroid/content/Context;Z)V

    goto :goto_4

    :cond_8
    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuEnabled(Z)V

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->hideDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sget-object v1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_9

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_9
    const/4 v0, 0x0

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->hideDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sget-object v2, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->showDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    if-eqz v2, :cond_a

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_a
    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->showDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sput-boolean v7, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isHiddenBySpeed:Z

    sget-boolean v1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isCarInfoListenerRegistered:Z

    if-nez v1, :cond_b

    goto :goto_3

    :cond_b
    sput-boolean v7, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isCarInfoListenerRegistered:Z

    sget-object v1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    sget-object v2, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->carInfoListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$carInfoListener$1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/CarInfoUtil;->removeOnCarInfoChangedListener(Lkotlin/jvm/functions/Function1;)V

    :goto_3
    sget-object v1, Lcom/deepalhome/launcher/floating/MuyuCore;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuCore;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/floating/MuyuCore;->soundPool:Landroid/media/SoundPool;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/media/SoundPool;->release()V

    :cond_c
    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuCore;->soundPool:Landroid/media/SoundPool;

    sput v7, Lcom/deepalhome/launcher/floating/MuyuCore;->soundId:I

    sput-boolean v7, Lcom/deepalhome/launcher/floating/MuyuCore;->isLoaded:Z

    sget-object v1, Lcom/petterp/floatingx/FloatingX;->fxs:Ljava/util/HashMap;

    const-string v2, "floating_muyu"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->cancel()V

    :cond_d
    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->rootView:Landroid/view/View;

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->iconView:Landroid/widget/ImageView;

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritView:Landroid/widget/TextView;

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritPlusView:Landroid/widget/TextView;

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->gestureHelper:Lcom/deepalhome/launcher/util/GestureHelper;

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
