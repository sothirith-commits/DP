.class public final synthetic Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;


# direct methods
.method public synthetic constructor <init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 31

    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x1

    const v3, 0x7f130233

    const v4, 0x7f130234

    const v5, 0x7f130235

    const-string v6, "getContext(...)"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x8

    const-string v10, "this$0"

    iget-object v11, v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    iget v0, v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->startHudIfAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    sget-object v12, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    move-object v8, v0

    check-cast v8, Landroid/app/Activity;

    :cond_0
    move-object/from16 v23, v8

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v30, 0x7fbc8

    invoke-static/range {v12 .. v30}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudDvrEnabled(Z)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrSettingsContainer:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v9

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPreviewCard:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    move v9, v7

    :cond_3
    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudDvrPreviewStartBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-boolean v7, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->isSettingsPreviewEnabled:Z

    new-instance v0, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$setSettingsPreviewEnabled$1;

    invoke-direct {v0, v7}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager$setSettingsPreviewEnabled$1;-><init>(Z)V

    invoke-static {v0}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05dvr/HudDvrManager;->onSettingChanged()V

    :goto_1
    return-void

    :pswitch_0
    sget v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_5

    sget-object v0, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->startHudIfAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    sget-object v12, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_4

    move-object v8, v0

    check-cast v8, Landroid/app/Activity;

    :cond_4
    move-object/from16 v23, v8

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v30, 0x7fbc8

    invoke-static/range {v12 .. v30}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    goto :goto_3

    :cond_5
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setHudNaviAssistEnabled(Z)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudNaviAssistSettingsContainer:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v2

    if-eqz v2, :cond_6

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    move v7, v9

    :goto_2
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->onSettingChanged(Landroid/content/Context;)V

    :goto_3
    return-void

    :pswitch_1
    sget v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_8

    sget-object v0, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->startHudIfAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrTargetSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    sget-object v12, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_7

    move-object v8, v0

    check-cast v8, Landroid/app/Activity;

    :cond_7
    move-object/from16 v23, v8

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v30, 0x7fbc8

    invoke-static/range {v12 .. v30}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    goto :goto_6

    :cond_8
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setCarS05SrShowOnHud(Z)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudSrSettingsContainer:Landroid/widget/LinearLayout;

    sget-object v2, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    goto :goto_4

    :cond_9
    move v7, v9

    :goto_4
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    sget-object v0, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/s05sr/HudSRManager;->onSettingChanged()V

    sget-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->Companion:Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/carinfo/CarS05InfoAppWindow;->srSettingChangedListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_5

    :cond_a
    :goto_6
    return-void

    :pswitch_2
    sget v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_e

    sget-object v0, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->INSTANCE:Lcom/deepalhome/launcher/hud/HudDisplayHelper;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/hud/HudDisplayHelper;->startHudIfAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLyricsSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v0, v7}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    sget-object v12, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_b

    move-object v8, v0

    check-cast v8, Landroid/app/Activity;

    :cond_b
    move-object/from16 v23, v8

    invoke-static/range {v18 .. v18}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const v30, 0x7fbc8

    invoke-static/range {v12 .. v30}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    goto :goto_7

    :cond_c
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setHudLyricsEnabled(Z)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_7

    :cond_d
    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLyricsSettingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->syncHudColorPreview()V

    goto :goto_7

    :cond_e
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/deepalhome/launcher/config/UserConfig;->setHudLyricsEnabled(Z)V

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudFloatManager;->hideFloat()V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->hudLyricsSettingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    return-void

    :pswitch_3
    sget v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setMusicProgressStyleEnabled(Z)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->progressStyleContainer:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_f

    goto :goto_8

    :cond_f
    move v7, v9

    :goto_8
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v11, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->stylePreviews:Ljava/util/List;

    if-eqz v0, :cond_11

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    if-eqz v1, :cond_10

    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->startAnimation()V

    goto :goto_9

    :cond_10
    invoke-virtual {v2}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->stopAnimation()V

    goto :goto_9

    :cond_11
    sget-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicSettingsManager;->notifyChanged()V

    return-void

    :pswitch_4
    sget v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p2 .. p2}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->setCarNavigationBarVisible(Z)V

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_12

    move-object v8, v0

    check-cast v8, Landroid/app/Activity;

    :cond_12
    invoke-static {v8}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyNavigationBarVisibility(Landroid/app/Activity;)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->customNavigationBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavSettingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_5
    sget v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {p2 .. p2}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->setCarStatusBarVisible(Z)V

    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_13

    move-object v8, v0

    check-cast v8, Landroid/app/Activity;

    :cond_13
    invoke-static {v8}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyStatusBarVisibility(Landroid/app/Activity;)V

    return-void

    :pswitch_6
    sget v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->$r8$clinit:I

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setCustomNavigationBarEnabled(Z)V

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setCustomNavigationBarStyle(I)V

    :cond_14
    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->customNavigationBarContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v11}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->bottomNavSettingsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
