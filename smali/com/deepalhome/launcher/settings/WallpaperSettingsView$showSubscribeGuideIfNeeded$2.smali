.class public final Lcom/deepalhome/launcher/settings/WallpaperSettingsView$showSubscribeGuideIfNeeded$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/WallpaperSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/WallpaperSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$showSubscribeGuideIfNeeded$2;->this$0:Lcom/deepalhome/launcher/settings/WallpaperSettingsView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$showSubscribeGuideIfNeeded$2;->this$0:Lcom/deepalhome/launcher/settings/WallpaperSettingsView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperSubscribeBingSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperSubscribeBingEnabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$showSubscribeGuideIfNeeded$2;->this$0:Lcom/deepalhome/launcher/settings/WallpaperSettingsView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperSubscribeUnsplashSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperSubscribeUnsplashEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
