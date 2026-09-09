.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$onInit$16$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$onInit$16$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setHasShownVoiceAutoNaviGuide(Z)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setVoiceAutoNavi(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$onInit$16$1;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    sget v0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->updateAmapRouteStrategyVisibility()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
