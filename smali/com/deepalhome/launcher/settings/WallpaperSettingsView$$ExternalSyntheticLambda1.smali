.class public final synthetic Lcom/deepalhome/launcher/settings/WallpaperSettingsView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/settings/WallpaperSettingsView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/settings/WallpaperSettingsView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/WallpaperSettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const/4 p1, 0x0

    const-string v0, "this$0"

    iget-object v1, p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$$ExternalSyntheticLambda1;->f$0:Lcom/deepalhome/launcher/settings/WallpaperSettingsView;

    iget p0, p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-class p0, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;

    if-eqz p2, :cond_1

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperDownloadStore;->listDownloads()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselSwitch:Lcom/kyleduo/switchbutton/SwitchButton;

    invoke-virtual {p0, p1}, Lcom/kyleduo/switchbutton/SwitchButton;->setCheckedImmediatelyNoEvent(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f130484

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->showLong(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperCarouselEnabled(Z)V

    sget-object v0, Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService;->Companion:Lcom/deepalhome/launcher/wallpaper/WallpaperCarouselService$Companion;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperCarouselEnabled(Z)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :goto_0
    invoke-virtual {v1}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/WallpaperSettingsViewBinding;->wallpaperCarouselIntervalContainer:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    new-instance p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$initWallpaperSubscriptionSetting$2$1;

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$initWallpaperSubscriptionSetting$2$1;-><init>(Lcom/deepalhome/launcher/settings/WallpaperSettingsView;)V

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;->showSubscribeGuideIfNeeded(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperSubscribeUnsplashEnabled(Z)V

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->onSubscriptionConfigChanged(Z)V

    :goto_3
    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;->$r8$clinit:I

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_4

    new-instance p0, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$initWallpaperSubscriptionSetting$1$1;

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/settings/WallpaperSettingsView$initWallpaperSubscriptionSetting$1$1;-><init>(Lcom/deepalhome/launcher/settings/WallpaperSettingsView;)V

    invoke-virtual {v1, p0}, Lcom/deepalhome/launcher/settings/WallpaperSettingsView;->showSubscribeGuideIfNeeded(Lkotlin/jvm/functions/Function0;)V

    goto :goto_4

    :cond_4
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperSubscribeBingEnabled(Z)V

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperSubscriptionManager;->onSubscriptionConfigChanged(Z)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
