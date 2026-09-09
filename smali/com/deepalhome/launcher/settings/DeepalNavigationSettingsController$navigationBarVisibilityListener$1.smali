.class public final Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$navigationBarVisibilityListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$navigationBarVisibilityListener$1;->this$0:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController$navigationBarVisibilityListener$1;->this$0:Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isCustomNavigationBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getCustomNavigationBarStyle()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setCustomNavigationBarEnabled(Z)V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setCustomNavigationBarStyle(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->syncNavigationModeRadioButton()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->updateBottomNavSettingsVisibility()V

    iget-object p1, p0, Lcom/deepalhome/launcher/settings/DeepalNavigationSettingsController;->binding:Lcom/deepalhome/launcher/databinding/LayoutSettingViewBinding;

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    new-instance v0, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v1, 0x1b

    invoke-direct {v0, v1, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
