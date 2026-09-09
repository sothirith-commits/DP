.class public final Lcom/deepalhome/launcher/music/FloatingLyricsWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BOUND_MARGIN_H:I

.field public static final Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

.field public static volatile instance:Lcom/deepalhome/launcher/music/FloatingLyricsWindow;


# instance fields
.field public final actionPopup:Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;

.field public baseLyricContainerHeight:I

.field public baseWindowHeight:I

.field public baseWindowY:I

.field public blurView:Leightbitlab/com/blurview/BlurView;

.field public closeBtn:Landroid/widget/ImageView;

.field public colorBtn:Landroid/widget/ImageView;

.field public contentContainer:Landroid/view/View;

.field public final context:Landroid/content/Context;

.field public currentLyricRequestKey:Ljava/lang/String;

.field public currentMusicAppPackageName:Ljava/lang/String;

.field public currentMusicKey:Ljava/lang/String;

.field public currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

.field public final floatingLyricBlurStrategy:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

.field public fontDecreaseBtn:Landroid/widget/ImageView;

.field public fontIncreaseBtn:Landroid/widget/ImageView;

.field public final hideUiRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

.field public isActionPopupVisible:Z

.field public isAwaitingLyric:Z

.field public isInteracting:Z

.field public isLocked:Z

.field public isNightMode:Z

.field public isPinned:Z

.field public final lineRenderInfoListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;

.field public listenersRegistered:Z

.field public lockBtn:Landroid/widget/ImageView;

.field public final lockOverlay:Lcom/deepalhome/launcher/music/FloatingLockOverlay;

.field public final longPressHandler:Landroid/os/Handler;

.field public longPressRunnable:Ljava/lang/Runnable;

.field public lrcView:Lme/wcy/lrcview/LrcView;

.field public lyricAlignBtn:Landroid/widget/ImageView;

.field public lyricContainer:Landroid/view/View;

.field public final lyricLoadingHandler:Landroid/os/Handler;

.field public lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

.field public final lyricPayloadAvailableListener:Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;

.field public lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

.field public lyricRequestToken:J

.field public lyricTextGravity:I

.field public final musicChangedListener:Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

.field public final musicSettingsChangedListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;

.field public opacityBtn:Landroid/widget/ImageView;

.field public pendingResizeHeight:I

.field public pendingResizeWidth:I

.field public pendingWindowUpdateMask:I

.field public pinBtn:Landroid/widget/ImageView;

.field public resizeHandle:Landroid/widget/ImageView;

.field public final resizePreviewOverlay:Lcom/umeng/analytics/filter/d;

.field public rootView:Landroid/view/View;

.field public separatorTv:Landroid/widget/TextView;

.field public final showLockOverlayRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

.field public singerTv:Landroid/widget/TextView;

.field public titleContainer:Landroid/view/View;

.field public titleTv:Landroid/widget/TextView;

.field public final ttmlLineRenderInfoListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;

.field public ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

.field public final uiModeChangedListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$uiModeChangedListener$1;

.field public windowHeight:I

.field public windowUpdatePosted:Z

.field public final windowUpdateRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

.field public windowWidth:I

.field public windowX:I

.field public windowY:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    const/high16 v0, 0x42000000    # 32.0f

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v0

    sput v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->BOUND_MARGIN_H:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    new-instance v0, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;

    invoke-direct {v0, p1}, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->actionPopup:Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsLocked()Z

    move-result v1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    new-instance v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;I)V

    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->hideUiRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;I)V

    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->showLockOverlayRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    new-instance v1, Lcom/deepalhome/launcher/music/FloatingLockOverlay;

    new-instance v2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$lockOverlay$1;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$lockOverlay$1;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;)V

    invoke-direct {v1, p1, v2}, Lcom/deepalhome/launcher/music/FloatingLockOverlay;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/music/FloatingLyricsWindow$lockOverlay$1;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lockOverlay:Lcom/deepalhome/launcher/music/FloatingLockOverlay;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingHandler:Landroid/os/Handler;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricPayloadAvailableListener:Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsTextGravity()I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricTextGravity:I

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsPinned()Z

    move-result v1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isPinned:Z

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsX()I

    move-result v1

    iput v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsY()I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    iget v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iput v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    iput v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    new-instance v0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;I)V

    iput-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowUpdateRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/umeng/analytics/filter/d;

    const/4 v1, 0x4

    invoke-direct {v0, p1, v1}, Lcom/umeng/analytics/filter/d;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resizePreviewOverlay:Lcom/umeng/analytics/filter/d;

    new-instance p1, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;-><init>(I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->floatingLyricBlurStrategy:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    new-instance p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lineRenderInfoListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;

    new-instance p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->ttmlLineRenderInfoListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;

    new-instance p1, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->musicChangedListener:Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->musicSettingsChangedListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$musicSettingsChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$uiModeChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$uiModeChangedListener$1;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->uiModeChangedListener:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$uiModeChangedListener$1;

    return-void
.end method


# virtual methods
.method public final adjustFontSize(I)V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsTextSize()I

    move-result v1

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const/16 v3, 0x40

    add-int/2addr p1, v1

    invoke-static {p1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsTextSize(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->applyLyricSize()V

    :cond_0
    return-void
.end method

.method public final applyLyricBlur()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicLyricBlurEnabled()Z

    move-result v1

    iget-object v2, v0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lme/wcy/lrcview/LrcView;->setBlurEnabled(Z)V

    :cond_0
    iget-object v0, v0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setBlurEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v0, :cond_3

    const-string v1, "strategy"

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->floatingLyricBlurStrategy:Lme/wcy/lrcview/BlurStrategy$$ExternalSyntheticLambda0;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Lme/wcy/lrcview/LrcView;->setBlurStrategy(Lme/wcy/lrcview/BlurStrategy;)V

    :cond_2
    iget-object v0, v0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setBlurStrategy(Lme/wcy/lrcview/BlurStrategy;)V

    :cond_3
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->forceNotifyLineHeight()V

    :cond_4
    return-void
.end method

.method public final applyLyricColor()V
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsColor()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f06038c

    goto :goto_0

    :cond_0
    const v0, 0x7f06038b

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-boolean v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f060083

    goto :goto_1

    :cond_1
    const v2, 0x7f060082

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setCurrentColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setNormalColor(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v0, :cond_4

    const v0, 0x7f060087

    goto :goto_2

    :cond_4
    const v0, 0x7f060086

    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-boolean v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v2, :cond_5

    const v2, 0x7f060085

    goto :goto_3

    :cond_5
    const v2, 0x7f060084

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->titleTv:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_6
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->singerTv:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->separatorTv:Landroid/widget/TextView;

    if-eqz p0, :cond_d

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_8
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setCurrentColor(I)V

    :cond_9
    const/4 v1, 0x3

    new-array v1, v1, [F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x1

    aget v3, v1, v2

    const v4, 0x3f266666    # 0.65f

    mul-float/2addr v3, v4

    aput v3, v1, v2

    const/4 v2, 0x2

    aget v3, v1, v2

    const v4, 0x3f333333    # 0.7f

    mul-float/2addr v3, v4

    aput v3, v1, v2

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v1

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setNormalColor(I)V

    :cond_a
    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->titleTv:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->singerTv:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->separatorTv:Landroid/widget/TextView;

    if-eqz p0, :cond_d

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_d
    :goto_4
    return-void
.end method

.method public final applyLyricSize()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsTextSize()I

    move-result v0

    int-to-float v1, v0

    invoke-static {v1}, Lcom/blankj/utilcode/util/SizeUtils;->sp2px(F)I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/deepalhome/launcher/music/MusicSettingsManager;->normalOffset$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    sub-int/2addr v0, v2

    int-to-float v0, v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/SizeUtils;->sp2px(F)I

    move-result v0

    int-to-float v0, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    new-instance v2, Lkotlin/Pair;

    invoke-direct {v2, v1, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    invoke-virtual {v2}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v0, v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setTextSize(FF)V

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iget-object v2, v0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Lme/wcy/lrcview/LrcView;->setBoldEnabled(Z)V

    :cond_1
    iget-object v0, v0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setBoldEnabled(Z)V

    :cond_2
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->forceNotifyLineHeight()V

    :cond_3
    return-void
.end method

.method public final applyOpacity()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0066

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0065

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sget-object v3, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsOpacity()I

    move-result v3

    invoke-static {v3, v1, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v1

    if-nez v1, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->blurView:Leightbitlab/com/blurview/BlurView;

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->blurView:Leightbitlab/com/blurview/BlurView;

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-boolean v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v2, :cond_3

    const v2, 0x7f06007f

    goto :goto_1

    :cond_3
    const v2, 0x7f06007e

    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    mul-int/lit16 v1, v1, 0xff

    div-int/lit8 v1, v1, 0x64

    const v2, 0xffffff

    and-int/2addr v0, v2

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->blurView:Leightbitlab/com/blurview/BlurView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Leightbitlab/com/blurview/BlurView;->setOverlayColor(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final applyTheme()V
    .locals 6

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v0, :cond_0

    const v0, 0x7f06038c

    goto :goto_0

    :cond_0
    const v0, 0x7f06038b

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-boolean v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v2, :cond_1

    const v2, 0x7f060083

    goto :goto_1

    :cond_1
    const v2, 0x7f060082

    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v3, :cond_2

    invoke-virtual {v3, v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setCurrentColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setNormalColor(I)V

    :cond_3
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v0, :cond_4

    const v0, 0x7f08015f

    goto :goto_2

    :cond_4
    const v0, 0x7f08015e

    :goto_2
    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resizeHandle:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v0, :cond_6

    const v0, 0x7f060081

    goto :goto_3

    :cond_6
    const v0, 0x7f060080

    :goto_3
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->closeBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_7

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_7
    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->fontIncreaseBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_8
    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->fontDecreaseBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_9
    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->opacityBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_a
    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->colorBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_b

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_b
    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricAlignBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_c

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_c
    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pinBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_d

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_d
    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lockBtn:Landroid/widget/ImageView;

    if-eqz v2, :cond_e

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_e
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->actionPopup:Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_f

    const v3, 0x7f060027

    goto :goto_4

    :cond_f
    const v3, 0x7f060024

    :goto_4
    iget-object v4, v2, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->appContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    if-eqz v0, :cond_10

    const v0, 0x7f060075

    goto :goto_5

    :cond_10
    const v0, 0x7f060074

    :goto_5
    invoke-virtual {v4, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    new-instance v4, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v4}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget v5, v2, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->cornerRadiusPx:F

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget v3, v2, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupStrokeWidthPx:I

    invoke-virtual {v4, v3, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    iget-object v0, v2, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isActionPopupVisible:Z

    if-nez v0, :cond_12

    sget-object v0, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->showLockOverlayRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_11
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz v0, :cond_12

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_12
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v0, :cond_13

    const v0, 0x7f060087

    goto :goto_6

    :cond_13
    const v0, 0x7f060086

    :goto_6
    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-boolean v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v2, :cond_14

    const v2, 0x7f060085

    goto :goto_7

    :cond_14
    const v2, 0x7f060084

    :goto_7
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->titleTv:Landroid/widget/TextView;

    if-eqz v2, :cond_15

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_15
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->singerTv:Landroid/widget/TextView;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_16
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->separatorTv:Landroid/widget/TextView;

    if-eqz p0, :cond_17

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_17
    return-void
.end method

.method public final beginInteraction()V
    .locals 3

    sget-object v0, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isInteracting:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isInteracting:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v1, :cond_3

    iget-object v2, v1, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v0}, Lme/wcy/lrcview/LrcView;->setLayoutFrozen(Z)V

    :cond_2
    iget-object v1, v1, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setLayoutFrozen(Z)V

    :cond_3
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->blurView:Leightbitlab/com/blurview/BlurView;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    :cond_4
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->contentContainer:Landroid/view/View;

    if-eqz p0, :cond_5

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_5
    return-void
.end method

.method public final buildLyricRequestKey(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/util/s05/music/MusicSource;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "toLowerCase(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->BLUETOOTH:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-ne p5, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentMusicAppPackageName:Ljava/lang/String;

    const-string p5, "com.android.bluetooth"

    invoke-static {p0, p5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    return-object p2
.end method

.method public final captureBaseLyricContainerHeight()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricContainer:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iget v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseLyricContainerHeight:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final dismissInternal()V
    .locals 7

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->endInteraction(Z)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resizePreviewOverlay:Lcom/umeng/analytics/filter/d;

    invoke-virtual {v1}, Lcom/umeng/analytics/filter/d;->dismiss()V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lockOverlay:Lcom/deepalhome/launcher/music/FloatingLockOverlay;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->dismiss()V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->longPressRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isAwaitingLyric:Z

    iget-wide v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRequestToken:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRequestToken:J

    iput-boolean v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isActionPopupVisible:Z

    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentMusicKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->currentLyricRequestKey:Ljava/lang/String;

    iget v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    iput v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iget v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    iput v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->hideUiRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->showLockOverlayRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->actionPopup:Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->dismiss()V

    new-instance v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$dismissInternal$3;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$dismissInternal$3;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->contentContainer:Landroid/view/View;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0001

    invoke-virtual {v2, v3, v0, v0}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070095

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroidx/transition/Transition$2;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p0, v1}, Landroidx/transition/Transition$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$dismissInternal$3;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final endInteraction(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isInteracting:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isInteracting:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lme/wcy/lrcview/LrcView;->setLayoutFrozen(Z)V

    :cond_1
    iget-object v1, v1, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setLayoutFrozen(Z)V

    :cond_2
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->blurView:Leightbitlab/com/blurview/BlurView;

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    :cond_3
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->contentContainer:Landroid/view/View;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_4
    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->forceNotifyLineHeight()V

    :cond_5
    return-void
.end method

.method public final finishLyricRequest()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isAwaitingLyric:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    return-void
.end method

.method public final getBoundMarginTop()I
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->INSTANCE:Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/StatusBarVisibilityManager;->getTopInsetPx(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public final getMaxWindowY(II)I
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getBoundMarginTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getBoundMarginTop()I

    move-result p0

    neg-int p0, p0

    if-ge p1, p0, :cond_0

    move p1, p0

    :cond_0
    return p1
.end method

.method public final getMinWindowHeight()I
    .locals 1

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700a1

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getWindowBoundsOnScreen()Landroid/graphics/Rect;
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    iget v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    iget v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    iget p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p0

    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public final hideActionButtons()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isActionPopupVisible:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->hideUiRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->showLockOverlayRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->actionPopup:Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->dismiss()V

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    iget-object v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resizePreviewOverlay:Lcom/umeng/analytics/filter/d;

    if-eqz v1, :cond_3

    invoke-virtual {v3}, Lcom/umeng/analytics/filter/d;->dismiss()V

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->setWindowTouchable(Z)V

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v3}, Lcom/umeng/analytics/filter/d;->dismiss()V

    return-void
.end method

.method public final playButtonClickAnimation(Landroid/view/View;)V
    .locals 4

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0c0024

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda29;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda29;-><init>(Landroid/view/View;JI)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final resetHideTimer()V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->hideUiRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0c001a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public final resetLyricViewportHeight(Landroid/view/View;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsJVMKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lrcView:Lme/wcy/lrcview/LrcView;

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    aput-object p1, v1, v0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    invoke-static {v1}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    instance-of v1, p1, Lme/wcy/lrcview/LrcView;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lme/wcy/lrcview/LrcView;

    invoke-virtual {v1, v0}, Lme/wcy/lrcview/LrcView;->setDrawHeight(I)V

    goto :goto_2

    :cond_1
    instance-of v1, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setDrawHeight(I)V

    :cond_2
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    if-eqz v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_3

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_3

    :cond_4
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v1, v2

    :goto_3
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v4, 0x30

    if-ne v2, v3, :cond_5

    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v2, v4, :cond_5

    goto :goto_1

    :cond_5
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final scheduleWindowUpdate(I)V
    .locals 1

    iget v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingWindowUpdateMask:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pendingWindowUpdateMask:I

    iget-boolean p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowUpdatePosted:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowUpdatePosted:Z

    iget-object p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowUpdateRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final setWindowTouchable(Z)V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Landroid/view/WindowManager;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p0, Landroid/view/WindowManager;

    goto :goto_0

    :cond_1
    move-object p0, v2

    :goto_0
    if-nez p0, :cond_2

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    instance-of v3, v1, Landroid/view/WindowManager$LayoutParams;

    if-eqz v3, :cond_3

    move-object v2, v1

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    :cond_3
    if-nez v2, :cond_4

    return-void

    :cond_4
    if-eqz p1, :cond_5

    iget p1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 p1, p1, -0x11

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_5
    iget p1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x10

    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    invoke-interface {p0, v0, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final show(Z)V
    .locals 8

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsEnabled(Z)V

    if-nez p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/window/AppWindowsManager;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsPinned()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-object p1, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result p1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    iget p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    iput p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iget p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    iput p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenHeight()I

    move-result v0

    sget v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->BOUND_MARGIN_H:I

    sub-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getBoundMarginTop()I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    sub-int v5, p1, v1

    if-le v4, v5, :cond_2

    move v4, v5

    :cond_2
    iput v4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    iget-object v4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070055

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sub-int v4, v0, v4

    const/4 v5, 0x0

    if-gez v4, :cond_3

    move v4, v5

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getMinWindowHeight()I

    move-result v6

    if-le v6, v4, :cond_4

    move v6, v4

    :cond_4
    iget v7, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    invoke-static {v7, v6, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v4

    iput v4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    iget v4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    iget v6, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    sub-int/2addr p1, v6

    invoke-static {v4, v1, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    iget p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    iget v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getMaxWindowY(II)I

    move-result v0

    invoke-static {p1, v3, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    iget v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    iput v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iput p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    new-instance p1, Lcom/koushikdutta/async/FilteredDataEmitter$1;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Lcom/koushikdutta/async/FilteredDataEmitter$1;-><init>(ILjava/lang/Object;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "getApp(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_5

    new-instance v1, Landroidx/cardview/widget/CardView$1;

    invoke-direct {v1, v0}, Landroidx/cardview/widget/CardView$1;-><init>(Landroid/content/Context;)V

    goto :goto_2

    :cond_5
    new-instance v1, Landroidx/cardview/widget/CardView$1;

    sget-object v3, Lcom/lzf/easyfloat/utils/LifecycleUtils;->INSTANCE:Lcom/lzf/easyfloat/utils/LifecycleUtils;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Lcom/lzf/easyfloat/utils/LifecycleUtils;->mTopActivity:Ljava/lang/ref/WeakReference;

    if-nez v3, :cond_6

    const/4 v3, 0x0

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    :goto_0
    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    move-object v0, v3

    :goto_1
    invoke-direct {v1, v0}, Landroidx/cardview/widget/CardView$1;-><init>(Landroid/content/Context;)V

    :goto_2
    iget-object v0, v1, Landroidx/cardview/widget/CardView$1;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/lzf/easyfloat/data/FloatConfig;

    const-string v3, "FloatingLyricsWindow"

    invoke-virtual {v0, v3}, Lcom/lzf/easyfloat/data/FloatConfig;->setFloatTag(Ljava/lang/String;)V

    sget-object v3, Lcom/lzf/easyfloat/enums/ShowPattern;->ALL_TIME:Lcom/lzf/easyfloat/enums/ShowPattern;

    invoke-virtual {v0, v3}, Lcom/lzf/easyfloat/data/FloatConfig;->setShowPattern(Lcom/lzf/easyfloat/enums/ShowPattern;)V

    invoke-virtual {v0, v5}, Lcom/lzf/easyfloat/data/FloatConfig;->setDragEnable(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getBoundMarginTop()I

    move-result v3

    if-lez v3, :cond_8

    goto :goto_3

    :cond_8
    move v2, v5

    :goto_3
    invoke-virtual {v0, v2}, Lcom/lzf/easyfloat/data/FloatConfig;->setImmersionStatusBar(Z)V

    iget v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    iget v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    const v4, 0x800033

    invoke-virtual {v0, v4}, Lcom/lzf/easyfloat/data/FloatConfig;->setGravity(I)V

    new-instance v4, Lkotlin/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Lcom/lzf/easyfloat/data/FloatConfig;->setOffsetPair(Lkotlin/Pair;)V

    new-instance v2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/music/FloatingLyricsWindow;)V

    const p0, 0x7f0e0062

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lzf/easyfloat/data/FloatConfig;->setLayoutId(Ljava/lang/Integer;)V

    invoke-virtual {v0, v2}, Lcom/lzf/easyfloat/data/FloatConfig;->setInvokeView(Lcom/lzf/easyfloat/interfaces/OnInvokeView;)V

    invoke-virtual {v0, p1}, Lcom/lzf/easyfloat/data/FloatConfig;->setCallbacks(Lcom/lzf/easyfloat/interfaces/OnFloatCallbacks;)V

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getLayoutId()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_9

    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getLayoutView()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_9

    const-string p0, "No layout exception. You need to set up the layout file."

    invoke-virtual {v1, p0}, Landroidx/cardview/widget/CardView$1;->callbackCreateFailed(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/lzf/easyfloat/data/FloatConfig;->getShowPattern()Lcom/lzf/easyfloat/enums/ShowPattern;

    move-result-object p0

    sget-object p1, Lcom/lzf/easyfloat/enums/ShowPattern;->CURRENT_ACTIVITY:Lcom/lzf/easyfloat/enums/ShowPattern;

    if-ne p0, p1, :cond_a

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView$1;->createFloat()V

    goto :goto_4

    :cond_a
    iget-object p0, v1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/lzf/easyfloat/permission/PermissionUtils;->checkPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {v1}, Landroidx/cardview/widget/CardView$1;->createFloat()V

    goto :goto_4

    :cond_b
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_c

    check-cast p0, Landroid/app/Activity;

    sget-object p1, Lcom/lzf/easyfloat/permission/PermissionFragment;->Companion:Lcom/lzf/easyfloat/permission/PermissionFragment$Companion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object v1, Lcom/lzf/easyfloat/permission/PermissionFragment;->onPermissionResult:Landroidx/cardview/widget/CardView$1;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    new-instance v0, Lcom/lzf/easyfloat/permission/PermissionFragment;

    invoke-direct {v0}, Lcom/lzf/easyfloat/permission/PermissionFragment;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_4

    :cond_c
    const-string p0, "Context exception. Request Permission need to pass in a activity context."

    invoke-virtual {v1, p0}, Landroidx/cardview/widget/CardView$1;->callbackCreateFailed(Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public final showActionButtons()V
    .locals 8

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getWindowBoundsOnScreen()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isActionPopupVisible:Z

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    iget-object v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->hideUiRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->showLockOverlayRunnable:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$$ExternalSyntheticLambda0;

    invoke-virtual {v2, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->setWindowTouchable(Z)V

    iget-object v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lockOverlay:Lcom/deepalhome/launcher/music/FloatingLockOverlay;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->dismiss()V

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v6, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->actionPopup:Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;

    iget-object v7, v6, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupView:Landroid/view/View;

    invoke-virtual {v6, v2, v4, v5, v0}, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->updateAnchor(IIII)V

    iget-object v0, v6, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->anchorRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v6}, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->calculatePopupRect()Landroid/graphics/Rect;

    move-result-object v0

    iget-boolean v2, v6, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->isAdded:Z

    if-eqz v2, :cond_5

    invoke-virtual {v6}, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->updateLayout()V

    goto/16 :goto_1

    :cond_5
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, -0x3

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    const v4, 0x800033

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v0, 0x7f6

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v0, 0x208

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    iget-object v0, v6, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v0, v7, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-boolean v1, v6, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->isAdded:Z

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    iget v1, v6, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->popupEnterTranslationPx:F

    neg-float v1, v1

    invoke-virtual {v7, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v7}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, v6, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Lcom/deepalhome/launcher/music/FloatingLyricsActionPopup;->dismiss()V

    :cond_6
    :goto_1
    iget v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowX:I

    iget v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    iget v2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowWidth:I

    iget v4, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iget-object v5, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resizePreviewOverlay:Lcom/umeng/analytics/filter/d;

    invoke-virtual {v5, v0, v1, v2, v4}, Lcom/umeng/analytics/filter/d;->show(IIII)V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->rootView:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0c001a

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    return-void
.end method

.method public final toggleLock()V
    .locals 2

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingLyricsLocked(Z)V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lockBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    if-eqz v1, :cond_0

    const v1, 0x7f08013c

    goto :goto_0

    :cond_0
    const v1, 0x7f08013d

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isLocked:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->hideActionButtons()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lockOverlay:Lcom/deepalhome/launcher/music/FloatingLockOverlay;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/music/FloatingLockOverlay;->dismiss()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->showActionButtons()V

    :goto_1
    return-void
.end method

.method public final updateDynamicLyricWindowHeight(Landroid/view/View;IIII)V
    .locals 7

    sget-object v0, Lcom/lzf/easyfloat/EasyFloat;->Companion:Lcom/lzf/easyfloat/EasyFloat$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/lzf/easyfloat/EasyFloat$Companion;->isShow()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isInteracting:Z

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricContainer:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseLyricContainerHeight:I

    const/4 v2, 0x0

    if-lez v1, :cond_2

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iget v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    if-ne v1, v3, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iget v3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    move v1, v0

    goto :goto_1

    :cond_5
    :goto_0
    move v1, v2

    :goto_1
    if-gtz v1, :cond_6

    return-void

    :cond_6
    sub-int v0, p5, p2

    if-gez v0, :cond_7

    move v0, v2

    :cond_7
    const/4 v3, 0x1

    if-ge p3, v3, :cond_8

    move p3, v3

    :cond_8
    const/4 v4, 0x2

    if-le p3, v4, :cond_9

    move p3, v4

    :cond_9
    if-lt p3, v4, :cond_a

    if-lez p4, :cond_a

    add-int p5, p4, v0

    :cond_a
    iget v5, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getMinWindowHeight()I

    move-result v6

    add-int/2addr v6, v3

    if-gt v5, v6, :cond_c

    if-lt p3, v4, :cond_b

    if-lez p4, :cond_b

    move p2, p4

    :cond_b
    add-int/2addr p2, v0

    goto :goto_3

    :cond_c
    if-ge v1, p5, :cond_d

    goto :goto_2

    :cond_d
    move p5, v1

    :goto_2
    move p2, p5

    :goto_3
    iget p3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getMinWindowHeight()I

    move-result p4

    add-int/2addr p4, v3

    if-gt p3, p4, :cond_15

    if-nez p1, :cond_e

    goto :goto_7

    :cond_e
    if-ge p2, v3, :cond_f

    goto :goto_4

    :cond_f
    move v3, p2

    :goto_4
    instance-of p3, p1, Lme/wcy/lrcview/LrcView;

    if-eqz p3, :cond_10

    move-object p3, p1

    check-cast p3, Lme/wcy/lrcview/LrcView;

    invoke-virtual {p3, v3}, Lme/wcy/lrcview/LrcView;->setDrawHeight(I)V

    goto :goto_5

    :cond_10
    instance-of p3, p1, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p3, :cond_11

    move-object p3, p1

    check-cast p3, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    invoke-virtual {p3, v3}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setDrawHeight(I)V

    :cond_11
    :goto_5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    instance-of p4, p3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p4, :cond_12

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p3, Landroid/widget/FrameLayout$LayoutParams;

    goto :goto_6

    :cond_12
    if-nez p3, :cond_13

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p4, -0x1

    invoke-direct {p3, p4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_6

    :cond_13
    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p4, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    move-object p3, p4

    :goto_6
    iget p4, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 p5, 0x30

    if-ne p4, v3, :cond_14

    iget p4, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne p4, p5, :cond_14

    goto :goto_7

    :cond_14
    iput v3, p3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iput p5, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_7

    :cond_15
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->resetLyricViewportHeight(Landroid/view/View;)V

    :goto_7
    sub-int/2addr p2, v1

    if-gez p2, :cond_16

    move p2, v2

    :cond_16
    invoke-static {}, Lcom/blankj/utilcode/util/ScreenUtils;->getAppScreenHeight()I

    move-result p1

    iget-object p3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const p4, 0x7f070055

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    sub-int p3, p1, p3

    if-gez p3, :cond_17

    goto :goto_8

    :cond_17
    move v2, p3

    :goto_8
    iget p3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    add-int/2addr p3, p2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getMinWindowHeight()I

    move-result p2

    if-le p2, v2, :cond_18

    move p2, v2

    :cond_18
    invoke-static {p3, p2, v2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p2

    iget p3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowY:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getBoundMarginTop()I

    move-result p4

    neg-int p4, p4

    invoke-virtual {p0, p1, p2}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getMaxWindowY(II)I

    move-result p1

    invoke-static {p3, p4, p1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updateLyricAnchorLine()V

    iget p3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    if-ne p2, p3, :cond_19

    iget p3, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    if-ne p1, p3, :cond_19

    return-void

    :cond_19
    iput p2, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowHeight:I

    iput p1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->windowY:I

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->scheduleWindowUpdate(I)V

    :cond_1a
    :goto_9
    return-void
.end method

.method public final updateLyricAlignIcon()V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricTextGravity:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const v0, 0x7f080163

    goto :goto_0

    :cond_0
    const v0, 0x7f080162

    goto :goto_0

    :cond_1
    const v0, 0x7f080164

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricAlignBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_2
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v0, :cond_3

    const v0, 0x7f060081

    goto :goto_1

    :cond_3
    const v0, 0x7f060080

    :goto_1
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricAlignBtn:Landroid/widget/ImageView;

    if-eqz p0, :cond_4

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_4
    return-void
.end method

.method public final updateLyricAnchorLine()V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getMinWindowHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->lyricRenderDelegate:Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setAnchorLine(I)V

    :cond_1
    return-void
.end method

.method public final updatePinIcon()V
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getFloatingLyricsPinned()Z

    move-result v0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isPinned:Z

    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pinBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    const v0, 0x7f080142

    goto :goto_0

    :cond_0
    const v0, 0x7f080143

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->isNightMode:Z

    if-eqz v0, :cond_2

    const v0, 0x7f060081

    goto :goto_1

    :cond_2
    const v0, 0x7f060080

    :goto_1
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->pinBtn:Landroid/widget/ImageView;

    if-eqz p0, :cond_3

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    return-void
.end method

.method public final updateTitleVisibility()V
    .locals 3

    iget v0, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->baseWindowHeight:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->getMinWindowHeight()I

    move-result v1

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->titleContainer:Landroid/view/View;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->updateLyricAnchorLine()V

    return-void
.end method
