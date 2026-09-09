.class public final Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showDebugLogEnableDialog$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $channel:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/AdvancedSettingsView;Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showDebugLogEnableDialog$2;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showDebugLogEnableDialog$2;->$channel:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showDebugLogEnableDialog$2;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showDebugLogEnableDialog$2;->$channel:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;

    sget v2, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->setLoggerEnabled(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;ZZ)V

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showDebugLogEnableDialog$2;->this$0:Lcom/deepalhome/launcher/settings/AdvancedSettingsView;

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/AdvancedSettingsView$showDebugLogEnableDialog$2;->$channel:Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;

    invoke-virtual {v1, p0, v0}, Lcom/deepalhome/launcher/settings/AdvancedSettingsView;->setLogSwitchChecked(Lcom/deepalhome/launcher/settings/AdvancedSettingsView$LogChannel;Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
