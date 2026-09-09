.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$onInit$16$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$onInit$16$2;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$onInit$16$2;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/AdvancedSettingViewBinding;->voiceAutoNaviSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$onInit$16$2;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->updateAmapRouteStrategyVisibility()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
