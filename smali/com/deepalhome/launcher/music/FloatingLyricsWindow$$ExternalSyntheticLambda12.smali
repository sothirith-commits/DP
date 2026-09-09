.class public final synthetic Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;I)V
    .locals 0

    iput p2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;->$r8$classId:I

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->playButtonClickAnimation(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resetHideTimer()V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isPinned:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isPinned:Z

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isPinned:Z

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsPinned(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updatePinIcon()V

    iget-boolean p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isPinned:Z

    if-nez p1, :cond_1

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->dismissInternal()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->playButtonClickAnimation(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resetHideTimer()V

    iget p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricTextGravity:I

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    :goto_1
    iput v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricTextGravity:I

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    iget v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricTextGravity:I

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsTextGravity(I)V

    iget-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p1, :cond_4

    iget v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricTextGravity:I

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setTextGravity(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updateLyricAlignIcon()V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->forceNotifyLineHeight()V

    :cond_5
    return-void

    :pswitch_1
    const-string v0, "this$0"

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda12;->f$0:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->playButtonClickAnimation(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resetHideTimer()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->toggleLock()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
