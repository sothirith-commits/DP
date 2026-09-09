.class public final synthetic Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

.field public final synthetic f$1:Lkotlin/jvm/internal/Ref$FloatRef;

.field public final synthetic f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$3:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic f$4:Lkotlin/jvm/internal/Ref$FloatRef;


# direct methods
.method public synthetic constructor <init>(Lcom/deepalhome/launcher/music/MusicAppWindow;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$FloatRef;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    iput-object p3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;->f$3:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p5, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;->f$4:Lkotlin/jvm/internal/Ref$FloatRef;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    const/4 p1, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    sget v3, Lcom/deepalhome/launcher/music/MusicAppWindow;->$r8$clinit:I

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;->f$0:Lcom/deepalhome/launcher/music/MusicAppWindow;

    const-string v4, "this$0"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;->f$1:Lkotlin/jvm/internal/Ref$FloatRef;

    const-string v5, "$initialTouchX"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;->f$2:Lkotlin/jvm/internal/Ref$BooleanRef;

    const-string v6, "$isDragging"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;->f$3:Lkotlin/jvm/internal/Ref$BooleanRef;

    const-string v7, "$isLongPress"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;->f$4:Lkotlin/jvm/internal/Ref$FloatRef;

    const-string v7, "$initialHue"

    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    iget-object v8, v3, Lcom/deepalhome/launcher/music/MusicAppWindow;->longPressHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    if-eqz v7, :cond_6

    const/4 v10, 0x0

    if-eq v7, v0, :cond_4

    if-eq v7, p1, :cond_0

    if-eq v7, v2, :cond_4

    move v0, v1

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iget v4, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float/2addr p2, v4

    iget-boolean v4, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v4, :cond_2

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v7, 0x41a00000    # 20.0f

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2

    iput-boolean v0, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iget-object v4, v3, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricColorLongPressRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    if-eqz v4, :cond_1

    invoke-virtual {v8, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v10, v3, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricColorLongPressRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    :cond_2
    iget-boolean v4, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v4, :cond_8

    iget-boolean v4, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v4, :cond_8

    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr p2, v4

    add-float/2addr p2, p0

    const/high16 p0, 0x43b40000    # 360.0f

    rem-float/2addr p2, p0

    cmpg-float v4, p2, v9

    if-gez v4, :cond_3

    add-float/2addr p2, p0

    :cond_3
    new-array p0, v2, [F

    aput p2, p0, v1

    const p2, 0x3f333333    # 0.7f

    aput p2, p0, v0

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, p0, p1

    invoke-static {p0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p0

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicWindowLyricColor()I

    move-result p2

    if-eq p0, p2, :cond_8

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setMusicWindowLyricColor(I)V

    sget-object p0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p0

    invoke-virtual {v3, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricColor(Z)V

    goto :goto_1

    :cond_4
    iget-object p0, v3, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricColorLongPressRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    if-eqz p0, :cond_5

    invoke-virtual {v8, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_5
    iput-object v10, v3, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricColorLongPressRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/music/MusicAppWindow;->scheduleFontMenuAutoCollapse()V

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Lcom/deepalhome/launcher/music/MusicAppWindow;->cancelFontMenuAutoCollapse()V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, v4, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iput-boolean v1, v5, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    iput-boolean v1, v6, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicWindowLyricColor()I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_7

    goto :goto_0

    :cond_7
    new-array p2, v2, [F

    invoke-static {p1, p2}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v9, p2, v1

    :goto_0
    iput v9, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p1, 0x7f130206

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    const/4 p1, 0x7

    invoke-direct {p0, v5, v6, v3, p1}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    const-wide/16 p1, 0x4b0

    invoke-virtual {v8, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object p0, v3, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricColorLongPressRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    :cond_8
    :goto_1
    return v0
.end method
