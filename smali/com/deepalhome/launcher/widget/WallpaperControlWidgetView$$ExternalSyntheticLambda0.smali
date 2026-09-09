.class public final synthetic Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "this$0"

    iget-object v0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;->f$0:Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;

    iget p0, p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView$$ExternalSyntheticLambda0;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->$r8$clinit:I

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperManager;->getWallpaper()Lcom/deepalhome/launcher/wallpaper/Wallpaper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/Wallpaper;->getType()Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperType;->VIDEO_FILE:Lcom/deepalhome/launcher/wallpaper/WallpaperType;

    if-ne p0, p1, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperVideoAudioEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->ensureMusicStateListenerRegistered()V

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->isWallpaperVideoAudioEnabled()Z

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setWallpaperVideoAudioEnabled(Z)V

    invoke-static {}, Lcom/deepalhome/launcher/wallpaper/WallpaperVideoAudioManager;->notifyListeners()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    sget p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->$r8$clinit:I

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperActionExecutor;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperActionExecutor;

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperAction;->NEXT:Lcom/deepalhome/launcher/wallpaper/WallpaperAction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperActionExecutor;->execute(Lcom/deepalhome/launcher/wallpaper/WallpaperAction;)V

    :goto_1
    return-void

    :pswitch_1
    sget p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->$r8$clinit:I

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperActionExecutor;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperActionExecutor;

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperAction;->PREVIOUS:Lcom/deepalhome/launcher/wallpaper/WallpaperAction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperActionExecutor;->execute(Lcom/deepalhome/launcher/wallpaper/WallpaperAction;)V

    :goto_2
    return-void

    :pswitch_2
    sget p0, Lcom/deepalhome/launcher/widget/WallpaperControlWidgetView;->$r8$clinit:I

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/widget/BaseWidgetView;->isPreview()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    sget-object p0, Lcom/deepalhome/launcher/wallpaper/WallpaperActionExecutor;->INSTANCE:Lcom/deepalhome/launcher/wallpaper/WallpaperActionExecutor;

    sget-object p1, Lcom/deepalhome/launcher/wallpaper/WallpaperAction;->RANDOM:Lcom/deepalhome/launcher/wallpaper/WallpaperAction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/deepalhome/launcher/wallpaper/WallpaperActionExecutor;->execute(Lcom/deepalhome/launcher/wallpaper/WallpaperAction;)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
