.class public final Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    sget v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricSize()V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricBlur()V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyProgressThumbStyle()V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    sget-object v1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateUIMode(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateLyricChineseModeButton()V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$getLyricRenderDelegate(Lcom/deepalhome/launcher/music/MusicAppWindow;)Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->renderCurrentPayload(Z)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicDynamicColorEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-object v2, v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$extractColorsFromBitmap(Lcom/deepalhome/launcher/music/MusicAppWindow;Landroid/graphics/Bitmap;)V

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setupBackgroundBlur()V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-object v2, v1, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    invoke-static {v1, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->access$updateBackgroundImage(Lcom/deepalhome/launcher/music/MusicAppWindow;Landroid/graphics/Bitmap;)V

    :cond_1
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicDynamicEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-boolean v1, v0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isPlaying:Z

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->resumeBackgroundFloat()V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;->this$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorX:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorX:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorY:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_4
    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorY:Landroid/animation/ValueAnimator;

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
