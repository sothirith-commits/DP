.class public final Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$1;->this$0:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$1;->this$0:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setCustomNavigationBarEnabled(Z)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setCustomNavigationBarStyle(I)V

    sget-object v1, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->isCarNavigationBarVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->setCarNavigationBarVisible(Z)V

    iget-object v2, v0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->binding:Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;->showCarNavigationBarBtn:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v2, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    iget-object v0, v0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->context:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->applyNavigationBarVisibility(Landroid/app/Activity;)V

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$1;->this$0:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->syncNavigationModeRadioButton()V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$showBottomNavigationModeDialog$1;->this$0:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->updateBottomNavSettingsVisibility()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
