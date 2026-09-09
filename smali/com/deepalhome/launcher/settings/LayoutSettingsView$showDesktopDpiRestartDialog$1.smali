.class public final Lcom/deepalhome/launcher/settings/LayoutSettingsView$showDesktopDpiRestartDialog$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $selectedDpi:I

.field final synthetic this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;


# direct methods
.method public constructor <init>(ILcom/deepalhome/launcher/settings/LayoutSettingsView;)V
    .locals 0

    iput p1, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$showDesktopDpiRestartDialog$1;->$selectedDpi:I

    iput-object p2, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$showDesktopDpiRestartDialog$1;->this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

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

    iget v2, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$showDesktopDpiRestartDialog$1;->$selectedDpi:I

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setAppDensityDpi(I)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->saveUserConfigImmediately()V

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$showDesktopDpiRestartDialog$1;->this$0:Lcom/deepalhome/launcher/settings/LayoutSettingsView;

    iget p0, p0, Lcom/deepalhome/launcher/settings/LayoutSettingsView$showDesktopDpiRestartDialog$1;->$selectedDpi:I

    iput p0, v0, Lcom/deepalhome/launcher/settings/LayoutSettingsView;->appliedDesktopDpi:I

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->relaunchApp()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
