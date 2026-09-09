.class public final synthetic Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 26

    move-object/from16 v0, p0

    move/from16 v1, p2

    const-string v2, "getContext(...)"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "this$0"

    iget-object v6, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget v0, v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    sget v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v1, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getHasShownVoiceAutoNaviGuide()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v7, Lcom/deepalhome/launcher/util/DialogUtil;->INSTANCE:Lcom/deepalhome/launcher/util/DialogUtil;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1300c0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1300bf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13021b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$onInit$16$1;

    move-object/from16 v16, v0

    invoke-direct {v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$onInit$16$1;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;)V

    new-instance v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$onInit$16$2;

    move-object/from16 v17, v0

    invoke-direct {v0, v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$onInit$16$2;-><init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;)V

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const v25, 0x7fc88

    invoke-static/range {v7 .. v25}, Lcom/deepalhome/launcher/util/DialogUtil;->showDialog$default(Lcom/deepalhome/launcher/util/DialogUtil;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;ZLjava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroid/app/Activity;ILjava/lang/Integer;Ljava/lang/Integer;ZZZI)Landroid/app/Dialog;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/deepalhome/launcher/config/UserConfig;->setVoiceAutoNavi(Z)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->updateAmapRouteStrategyVisibility()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setVoiceAutoNavi(Z)V

    invoke-virtual {v6}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->updateAmapRouteStrategyVisibility()V

    :goto_0
    return-void

    :pswitch_0
    sget v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setAccessibilityDaemonEnabled(Z)V

    if-eqz v1, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->syncDaemonServicesFromSettings(Landroid/content/Context;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->startDaemonServiceIfNeeded(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;->Companion:Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService$Companion;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/deepalhome/launcher/accessibility/AccessibilityDaemonService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_1
    return-void

    :pswitch_1
    sget v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;->APP:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;

    invoke-virtual {v6, v0, v1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->handleLogSwitchChanged(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;Z)V

    return-void

    :pswitch_2
    sget v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/util/LauncherBootManager;->INSTANCE:Lcom/deepalhome/launcher/util/LauncherBootManager;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v1}, Lcom/deepalhome/launcher/util/LauncherBootManager;->updateReceiverEnabled(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->autoStartSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13004b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setLauncherBootEnabled(Z)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    :goto_2
    return-void

    :pswitch_3
    sget v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;->BLE:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;

    invoke-virtual {v6, v0, v1}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->handleLogSwitchChanged(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
