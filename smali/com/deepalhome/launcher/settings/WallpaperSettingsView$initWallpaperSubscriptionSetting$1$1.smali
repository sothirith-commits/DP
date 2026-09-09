.class public final Lcom/deepalhome/launcher/settings/WallpaperSettingsView$initWallpaperSubscriptionSetting$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/settings/WallpaperSettingsView;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/settings/WallpaperSettingsView;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$initWallpaperSubscriptionSetting$1$1;->this$0:Lcom/deepalhome/launcher/settings/WallpaperSettingsView;

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

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperSubscribeBingEnabled(Z)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperSubscribeUnsplashEnabled(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$initWallpaperSubscriptionSetting$1$1;->this$0:Lcom/deepalhome/launcher/settings/WallpaperSettingsView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperSubscribeUnsplashSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {p0, v1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->onSubscriptionConfigChanged(Z)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
