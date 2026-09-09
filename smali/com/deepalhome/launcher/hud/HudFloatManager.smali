.class public final Lcom/deepalhome/launcher/hud/HudFloatManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

.field public static cachedLrcBackground:Landroid/graphics/drawable/Drawable;

.field public static currentMusicKey:Ljava/lang/String;

.field public static hudView:Landroid/view/View;

.field public static isAwaitingLyric:Z

.field public static isBorderShown:Z

.field public static lastViewHeight:I

.field public static final lineRenderInfoListener:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

.field public static lrcView:Lme/wcy/lrcview/LrcView;

.field public static lyricContainer:Landroid/view/View;

.field public static final lyricLoadingHandler:Landroid/os/Handler;

.field public static lyricLoadingRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;

.field public static final lyricPayloadAvailableListener:Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1;

.field public static lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

.field public static lyricRequestToken:J

.field public static final musicChangedListener:Lcom/deepalhome/launcher/hud/HudFloatManager$musicChangedListener$1;

.field public static final ttmlLineRenderInfoListener:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

.field public static ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

.field public static final uiModeListener:Lcom/deepalhome/launcher/hud/HudFloatManager$uiModeListener$1;

.field public static windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/hud/HudFloatManager;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/HudFloatManager;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v0, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricPayloadAvailableListener:Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1;

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager$uiModeListener$1;->INSTANCE:Lcom/deepalhome/launcher/hud/HudFloatManager$uiModeListener$1;

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->uiModeListener:Lcom/deepalhome/launcher/hud/HudFloatManager$uiModeListener$1;

    new-instance v0, Lcom/deepalhome/launcher/hud/HudFloatManager$musicChangedListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/hud/HudFloatManager$musicChangedListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->musicChangedListener:Lcom/deepalhome/launcher/hud/HudFloatManager$musicChangedListener$1;

    new-instance v0, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lineRenderInfoListener:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    new-instance v0, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->ttmlLineRenderInfoListener:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applySettingsToView()V
    .locals 11

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-nez v4, :cond_0

    return-void

    :cond_0
    sget-object v5, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v5

    sput v3, Lcom/deepalhome/launcher/hud/HudFloatManager;->lastViewHeight:I

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsTextSize()I

    move-result v6

    int-to-float v7, v6

    invoke-static {v7}, Lcom/blankj/utilcode/util/SizeUtils;->sp2px(F)I

    move-result v7

    int-to-float v7, v7

    add-int/lit8 v6, v6, -0x4

    int-to-float v6, v6

    invoke-static {v6}, Lcom/blankj/utilcode/util/SizeUtils;->sp2px(F)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v7, v6}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setTextSize(FF)V

    iget-object v8, v4, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v8, :cond_1

    invoke-virtual {v8, v2}, Lme/wcy/lrcview/LrcView;->setBoldEnabled(Z)V

    :cond_1
    iget-object v8, v4, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v8, :cond_2

    invoke-virtual {v8, v2}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setBoldEnabled(Z)V

    :cond_2
    invoke-virtual {v4, v3}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setAnchorLine(I)V

    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsLineCount()I

    move-result v8

    const/16 v9, 0x8

    const/high16 v10, 0x3fc00000    # 1.5f

    if-ne v8, v2, :cond_3

    mul-float/2addr v7, v10

    int-to-float v6, v9

    add-float/2addr v7, v6

    float-to-int v6, v7

    goto :goto_0

    :cond_3
    const v8, 0x3f19999a    # 0.6f

    mul-float/2addr v8, v7

    float-to-int v8, v8

    mul-float/2addr v7, v10

    mul-float/2addr v6, v10

    add-float/2addr v6, v7

    int-to-float v7, v8

    add-float/2addr v6, v7

    int-to-float v7, v9

    add-float/2addr v6, v7

    float-to-int v6, v6

    :goto_0
    new-array v7, v1, [Landroid/view/View;

    sget-object v8, Lcom/deepalhome/launcher/hud/HudFloatManager;->lrcView:Lme/wcy/lrcview/LrcView;

    aput-object v8, v7, v3

    sget-object v8, Lcom/deepalhome/launcher/hud/HudFloatManager;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    aput-object v8, v7, v2

    invoke-static {v7}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v8, "<this>"

    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    const/16 v10, 0x1c2

    if-nez v9, :cond_6

    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v10, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :cond_6
    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v6, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_7
    sget-object v6, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v6, :cond_8

    const/high16 v6, 0x3f400000    # 0.75f

    goto :goto_3

    :cond_8
    move v6, v7

    :goto_3
    invoke-virtual {v5}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsColor()I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_9

    mul-float/2addr v7, v6

    const/4 v5, 0x0

    new-array v8, v0, [F

    aput v5, v8, v3

    aput v5, v8, v2

    aput v7, v8, v1

    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setCurrentColor(I)V

    const v7, 0x3f2ac083    # 0.667f

    mul-float/2addr v6, v7

    new-array v0, v0, [F

    aput v5, v0, v3

    aput v5, v0, v2

    aput v6, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setNormalColor(I)V

    goto :goto_4

    :cond_9
    new-array v0, v0, [F

    invoke-static {v5, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v3, v0, v1

    mul-float/2addr v3, v6

    aput v3, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setCurrentColor(I)V

    aget v3, v0, v2

    const v5, 0x3f266666    # 0.65f

    mul-float/2addr v3, v5

    aput v3, v0, v2

    aget v2, v0, v1

    const v3, 0x3f333333    # 0.7f

    mul-float/2addr v2, v3

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setNormalColor(I)V

    :goto_4
    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->hudView:Landroid/view/View;

    if-nez v0, :cond_a

    return-void

    :cond_a
    sget-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->windowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_c

    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_c
    :goto_5
    invoke-virtual {v4}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->forceNotifyLineHeight()V

    return-void
.end method

.method public static finishLyricRequest()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->isAwaitingLyric:Z

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricLoadingRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricLoadingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricLoadingRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;

    return-void
.end method

.method public static hideFloat()V
    .locals 6

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->musicChangedListener:Lcom/deepalhome/launcher/hud/HudFloatManager$musicChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->removeOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->uiModeListener:Lcom/deepalhome/launcher/hud/HudFloatManager$uiModeListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/theme/UIModeManager;->removeOnUIModeChangedListener(Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "listener"

    sget-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricPayloadAvailableListener:Lcom/deepalhome/launcher/hud/HudFloatManager$lyricPayloadAvailableListener$1;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricLoadingRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricLoadingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricLoadingRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->isAwaitingLyric:Z

    sget-wide v2, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRequestToken:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRequestToken:J

    sput v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->lastViewHeight:I

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->currentMusicKey:Ljava/lang/String;

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->cachedLrcBackground:Landroid/graphics/drawable/Drawable;

    sput-boolean v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->isBorderShown:Z

    sget-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->hudView:Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/deepalhome/launcher/hud/HudFloatManager;->windowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_2

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_2
    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->hudView:Landroid/view/View;

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->windowManager:Landroid/view/WindowManager;

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricContainer:Landroid/view/View;

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lrcView:Lme/wcy/lrcview/LrcView;

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    sput-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    return-void
.end method

.method public static isShowing()Z
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->hudView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method public static showBorder()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->lyricContainer:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->isBorderShown:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sput-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->cachedLrcBackground:Landroid/graphics/drawable/Drawable;

    :cond_1
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x2

    const/high16 v3, -0x10000

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->isBorderShown:Z

    return-void
.end method

.method public static updateHudHeight(Landroid/view/View;IIIIIII)V
    .locals 5

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsLineCount()I

    move-result v1

    sub-int/2addr p7, p1

    const/4 v2, 0x0

    if-gez p7, :cond_2

    move p7, v2

    :cond_2
    const/4 v3, 0x1

    if-ge p2, v3, :cond_3

    move p2, v3

    :cond_3
    const/4 v4, 0x2

    if-le p2, v4, :cond_4

    move p2, v4

    :cond_4
    if-lt p2, v4, :cond_5

    if-lez p3, :cond_5

    move p1, p3

    :cond_5
    if-gt v1, v3, :cond_6

    :goto_0
    add-int/2addr p1, p7

    goto :goto_5

    :cond_6
    sub-int/2addr v4, p2

    if-gez v4, :cond_7

    goto :goto_1

    :cond_7
    if-lez v4, :cond_8

    if-lez p4, :cond_8

    move p2, v3

    goto :goto_2

    :cond_8
    :goto_1
    move p2, v2

    :goto_2
    if-eqz p2, :cond_9

    if-lez p5, :cond_a

    move p4, p5

    goto :goto_3

    :cond_9
    move p4, v2

    :cond_a
    :goto_3
    if-eqz p2, :cond_b

    if-lez p4, :cond_b

    goto :goto_4

    :cond_b
    move p6, v2

    :goto_4
    add-int/2addr p1, p4

    add-int/2addr p1, p6

    goto :goto_0

    :goto_5
    const/16 p2, 0x8c

    invoke-static {p1, v3, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    sget p2, Lcom/deepalhome/launcher/hud/HudFloatManager;->lastViewHeight:I

    if-ne p1, p2, :cond_c

    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne p1, p2, :cond_c

    return-void

    :cond_c
    sput p1, Lcom/deepalhome/launcher/hud/HudFloatManager;->lastViewHeight:I

    iget p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p2, p1, :cond_f

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    instance-of p2, p0, Lme/wcy/lrcview/LrcView;

    if-eqz p2, :cond_d

    move-object p2, p0

    check-cast p2, Lme/wcy/lrcview/LrcView;

    invoke-virtual {p2, p1}, Lme/wcy/lrcview/LrcView;->setDrawHeight(I)V

    goto :goto_6

    :cond_d
    instance-of p2, p0, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p2, :cond_e

    move-object p2, p0

    check-cast p2, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    invoke-virtual {p2, p1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setDrawHeight(I)V

    :cond_e
    :goto_6
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_f
    sget-object p0, Lcom/deepalhome/launcher/hud/HudFloatManager;->hudView:Landroid/view/View;

    sget-object p1, Lcom/deepalhome/launcher/hud/HudFloatManager;->windowManager:Landroid/view/WindowManager;

    if-eqz p0, :cond_10

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p2

    if-eqz p2, :cond_10

    :try_start_0
    sget p2, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-interface {p1, p0, p2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception p0

    sget p1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {p0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :cond_10
    :goto_7
    return-void
.end method

.method public static updatePosition()V
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/hud/HudFloatManager;->hudView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/hud/HudFloatManager;->windowManager:Landroid/view/WindowManager;

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    :try_start_0
    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    instance-of v4, v3, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_2

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_3

    return-void

    :cond_3
    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsX()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsY()I

    move-result v2

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-interface {v1, v0, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_2
    return-void
.end method
