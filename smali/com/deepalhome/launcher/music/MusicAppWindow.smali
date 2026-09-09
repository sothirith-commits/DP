.class public final Lcom/deepalhome/launcher/music/MusicAppWindow;
.super Lcom/deepalhome/launcher/window/BaseAppWindow;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepalhome/launcher/window/BaseAppWindow<",
        "Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final argbEvaluator:Landroid/animation/ArgbEvaluator;

.field public backgroundAnimatorX:Landroid/animation/ValueAnimator;

.field public backgroundAnimatorY:Landroid/animation/ValueAnimator;

.field public colorAnimator:Landroid/animation/ValueAnimator;

.field public coverAnimator:Landroid/animation/ValueAnimator;

.field public coverInfoRequestToken:J

.field public coverLayoutToken:J

.field public coverRequestId:J

.field public coverScaleAnimator:Landroid/animation/ValueAnimator;

.field public coverTarget:Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;

.field public currentBodyColor:I

.field public currentCoverBitmap:Landroid/graphics/Bitmap;

.field public currentCoverSource:Ljava/lang/Object;

.field public currentIconColor:I

.field public currentLyricRequestKey:Ljava/lang/String;

.field public currentMusicAppPackageName:Ljava/lang/String;

.field public currentMusicKey:Ljava/lang/String;

.field public currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

.field public displayedCoverTarget:Lcom/bumptech/glide/request/target/CustomTarget;

.field public final favChangedListener:Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1;

.field public final fontMenuAutoCollapseHandler:Landroid/os/Handler;

.field public fontMenuAutoCollapseRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

.field public fontSizeLongPressRunnable:Landroidx/core/provider/CallbackWithHandler$2;

.field public isAwaitingLyric:Z

.field public isFontSizeMenuExpanded:Z

.field public isMusicListenerRegistered:Z

.field public isMusicSettingsListenerRegistered:Z

.field public isPlaying:Z

.field public isUserSeeking:Z

.field public isWindowsListenerRegistered:Z

.field public lastCoverSize:I

.field public lastExpandedMode:Ljava/lang/Boolean;

.field public lastLyricUpdateTime:J

.field public final layoutChangeListener:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;

.field public final longPressHandler:Landroid/os/Handler;

.field public lyricAnchorLine:I

.field public lyricColorLongPressRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

.field public final lyricLoadingHandler:Landroid/os/Handler;

.field public lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

.field public final lyricPayloadAvailableListener:Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;

.field public final lyricRenderDelegate$delegate:Lkotlin/Lazy;

.field public lyricRequestToken:J

.field public lyricTextGravity:I

.field public final minWindowWidth$delegate:Lkotlin/SynchronizedLazyImpl;

.field public final musicChangedListener:Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

.field public final musicSettingsChangedListener:Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;

.field public progressCustomIconRequestId:J

.field public final progressLayoutChangeListener:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;

.field public final showLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

.field public translationYRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

.field public final windowsChangedListener:Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;


# direct methods
.method public static $r8$lambda$EULsGwhNJlUODnQOPLrIzS5tmyQ(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/String;J)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "$key"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicKey:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricRequestToken:J

    cmp-long p1, v0, p2

    if-eqz p1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isAwaitingLyric:Z

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->finishLyricRequest()V

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const p2, 0x7f1302b4

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string p2, "getString(...)"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->showEmpty(Ljava/lang/String;)V

    sget-object p0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsEnabled()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->shouldSuppressHUDLyric()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-object p0, Lcom/deepalhome/launcher/hud/HudLyricManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudLyricManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudLyricManager;->clearLyric()V

    goto :goto_0

    :cond_4
    sget-object p0, Lcom/deepalhome/launcher/hud/HudLyricManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudLyricManager;

    sget-boolean p1, Lcom/deepalhome/launcher/hud/HudLyricManager;->isConnected:Z

    if-nez p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/hud/HudLyricManager;->ignoredHudPackages:Ljava/util/Set;

    sget-object p1, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPackageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Current music source ignored HUD no-lyrics status sending: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "HUDLyricManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    sget-object p0, Lcom/deepalhome/launcher/hud/HudLyricManager;->mainHandler:Landroid/os/Handler;

    new-instance p1, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 p2, 0x9

    invoke-direct {p1, p2}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public static synthetic $r8$lambda$i3X9st624pkIqTryPq-Exectows(Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setFontSizeMenuExpanded$lambda$67(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method public static $r8$lambda$wKCfKAloVugcunqZ00O2njmu-40(Lcom/deepalhome/launcher/music/MusicAppWindow;IIII)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sub-int/2addr p2, p1

    sub-int/2addr p4, p3

    if-eq p2, p4, :cond_3

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicAppWindow;->isLyricShow()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->isExpandedMode()Z

    move-result p1

    iget-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lastExpandedMode:Ljava/lang/Boolean;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lastExpandedMode:Ljava/lang/Boolean;

    iget-wide p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverLayoutToken:J

    const-wide/16 p3, 0x1

    add-long/2addr p1, p3

    iput-wide p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverLayoutToken:J

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricLayout(JZ)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getExpandedCoverSize()I

    move-result p1

    iget p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lastCoverSize:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lastCoverSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700ad

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p3, p1

    int-to-float p2, p2

    div-float/2addr p3, p2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p2

    check-cast p2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p2, p2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0700b3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p2, p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    const-string p1, "coverAndTitleContainer"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iput p2, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/deepalhome/launcher/view/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->longPressHandler:Landroid/os/Handler;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingHandler:Landroid/os/Handler;

    sget-object p2, Lkotlin/LazyThreadSafetyMode;->$VALUES:[Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricRenderDelegate$2;

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricRenderDelegate$2;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricRenderDelegate$delegate:Lkotlin/Lazy;

    new-instance p2, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;

    invoke-direct {p2, v1, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;-><init>(ILjava/lang/Object;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricPayloadAvailableListener:Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;

    new-instance p2, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1;

    invoke-direct {p2, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    iput-object p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->favChangedListener:Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1;

    const p2, 0x7f060397

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentBodyColor:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentIconColor:I

    new-instance p1, Landroid/animation/ArgbEvaluator;

    invoke-direct {p1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    sget-object p1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicWindowLyricTextGravity()I

    move-result p2

    iput p2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricTextGravity:I

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicWindowLyricAnchorLine()I

    move-result p1

    iput p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricAnchorLine:I

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->fontMenuAutoCollapseHandler:Landroid/os/Handler;

    new-instance p1, Lcom/deepalhome/launcher/music/MusicAppWindow$minWindowWidth$2;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$minWindowWidth$2;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->minWindowWidth$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance p1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v1}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->layoutChangeListener:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;

    new-instance p1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->progressLayoutChangeListener:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;

    new-instance p1, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;

    invoke-direct {p1, p0, v0}, Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;-><init>(Lcom/deepalhome/launcher/window/BaseAppWindow;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->windowsChangedListener:Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;

    new-instance p1, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->musicSettingsChangedListener:Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->musicChangedListener:Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

    new-instance p1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v1}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->showLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    return-void
.end method

.method public static final access$animateProgressDrag(Lcom/deepalhome/launcher/music/MusicAppWindow;Z)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0007

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0a0008

    invoke-virtual {v1, v3, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f0c0011

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressBarDisplay:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressBarDisplay:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressBarDisplay:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p1, v4}, Landroid/view/View;->setPivotY(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressBarDisplay:Landroid/widget/ProgressBar;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->positionTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->positionTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->durationTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->durationTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public static final access$extractColorsFromBitmap(Lcom/deepalhome/launcher/music/MusicAppWindow;Landroid/graphics/Bitmap;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/palette/graphics/Palette;->DEFAULT_FILTER:Landroidx/palette/graphics/Palette$1;

    new-instance v0, Landroidx/palette/graphics/Palette$Builder;

    invoke-direct {v0, p1}, Landroidx/palette/graphics/Palette$Builder;-><init>(Landroid/graphics/Bitmap;)V

    new-instance p1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;

    invoke-direct {p1, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    new-instance p0, Lme/wcy/lrcview/LrcView$2;

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, p1}, Lme/wcy/lrcview/LrcView$2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v0, v0, Landroidx/palette/graphics/Palette$Builder;->mBitmap:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    filled-new-array {v0}, [Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static final synthetic access$getLyricRenderDelegate(Lcom/deepalhome/launcher/music/MusicAppWindow;)Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;
    .locals 0

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object p0

    return-object p0
.end method

.method public static final access$showCover(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverSource:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getCoverTargetSize()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->loadCover(ILjava/lang/Object;)V

    return-void
.end method

.method public static final access$startLyricRequest(Lcom/deepalhome/launcher/music/MusicAppWindow;Ljava/lang/String;)J
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isAwaitingLyric:Z

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricRequestToken:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricRequestToken:J

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f1302b5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(...)"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2, v4}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->showLoading(Ljava/lang/String;)V

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    const/4 v9, 0x0

    move-object v4, v2

    move-object v5, p0

    move-object v6, p1

    move-wide v7, v0

    invoke-direct/range {v4 .. v9}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;-><init>(Ljava/lang/Object;Ljava/lang/String;JI)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v4, 0x7f0c0016

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long v4, p1

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    return-wide v0
.end method

.method public static final access$toggleLyricAlignment(Lcom/deepalhome/launcher/music/MusicAppWindow;)V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricTextGravity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iput v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricTextGravity:I

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    iget v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricTextGravity:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setMusicWindowLyricTextGravity(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v0

    iget v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricTextGravity:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setTextGravity(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateLyricAlignIcon()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateLyricPanelMargin()V

    return-void
.end method

.method public static final access$toggleLyricAnchor(Lcom/deepalhome/launcher/music/MusicAppWindow;)V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricAnchorLine:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricAnchorLine:I

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    iget v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricAnchorLine:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setMusicWindowLyricAnchorLine(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v0

    iget v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricAnchorLine:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setAnchorLine(I)V

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricAnchorLine:I

    if-ltz v0, :cond_1

    const v0, 0x7f080172

    goto :goto_1

    :cond_1
    const v0, 0x7f080173

    :goto_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricAnchorBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static final access$updateBackgroundImage(Lcom/deepalhome/launcher/music/MusicAppWindow;Landroid/graphics/Bitmap;)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicDynamicEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    if-ge v2, v1, :cond_2

    move v2, v1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-ne v2, v3, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/View;

    invoke-direct {v2, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const-string v3, "Blurry"

    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v2, Ljp/wasabeef/blurry/BlurFactor;

    invoke-direct {v2}, Ljp/wasabeef/blurry/BlurFactor;-><init>()V

    iput v0, v2, Ljp/wasabeef/blurry/BlurFactor;->radius:I

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, v2, Ljp/wasabeef/blurry/BlurFactor;->width:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, v2, Ljp/wasabeef/blurry/BlurFactor;->height:I

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, p1, v2}, Ljp/wasabeef/blurry/Blur;->of(Landroid/content/Context;Landroid/graphics/Bitmap;Ljp/wasabeef/blurry/BlurFactor;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method public static final access$updateMusicAppInfo(Lcom/deepalhome/launcher/music/MusicAppWindow;)V
    .locals 4

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentPrivateSource:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->getIconRes()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->getDisplayNameRes()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicAppPackageName:Ljava/lang/String;

    const v1, 0x7f10001f

    if-eqz v0, :cond_5

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_4

    :cond_1
    :try_start_0
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    sget v3, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v2

    :goto_0
    instance-of v3, v2, Lkotlin/Result$Failure;

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    :cond_2
    check-cast v2, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_1
    :try_start_1
    invoke-static {v0}, Lcom/blankj/utilcode/util/AppUtils;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v1

    :goto_2
    instance-of v2, v1, Lkotlin/Result$Failure;

    if-eqz v2, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    const-string v1, "getOrDefault(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    :cond_5
    :goto_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f13035e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_5
    return-void
.end method

.method public static buildMusicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "toLowerCase(...)"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getCoverTargetSize()I
    .locals 3

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicAppWindow;->isLyricShow()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->isExpandedMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0700ad

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_1

    const v2, 0x7f0700b2

    goto :goto_0

    :cond_1
    const v2, 0x7f0700ba

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_2

    iget p0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-lez p0, :cond_4

    if-eqz v0, :cond_3

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_2

    :cond_3
    invoke-static {p0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_4
    :goto_2
    return v1
.end method

.method private final getExpandedCoverSize()I
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ad

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070098

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p0, v2

    invoke-static {p0, v1, v0}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p0

    return p0
.end method

.method private final getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricRenderDelegate$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    return-object p0
.end method

.method private final getMinWindowWidth()I
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->minWindowWidth$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static isLyricShow()Z
    .locals 3

    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/blankj/utilcode/util/SPUtils;->sp:Landroid/content/SharedPreferences;

    const-string v1, "KEY_LYRIC_SHOW"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static normalizeCoverForCompare(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicCoverStore;->INSTANCE:Lcom/deepalhome/launcher/music/MusicCoverStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/music/MusicCoverStore;->normalizeCoverString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "file://"

    invoke-static {p0, v1, v0}, Lkotlin/text/StringsKt__StringsJVMKt;->startsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, v1}, Lkotlin/text/StringsKt__StringsKt;->removePrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static final setFontSizeMenuExpanded$lambda$67(Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "$container"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final setFontSizeMenuVisible(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontSizeMenuLayout:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->collapseFontSizeMenuImmediate()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->cancelFontMenuAutoCollapse()V

    :cond_1
    return-void
.end method

.method public static synthetic updateProgressThumbPosition$default(Lcom/deepalhome/launcher/music/MusicAppWindow;II)V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateProgressThumbPosition(IIZZF)V

    return-void
.end method


# virtual methods
.method public final adjustFontSize(I)V
    .locals 5

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicWindowLyricSize()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0029

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr p1, v1

    invoke-static {p1, v2, v3}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setMusicWindowLyricSize(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricSize()V

    :cond_0
    return-void
.end method

.method public final animateCoverSize(IIIJ)V
    .locals 7

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    filled-new-array {v0, p1}, [I

    move-result-object p1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda26;

    move-object v1, v0

    move-wide v2, p4

    move-object v4, p0

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda26;-><init>(JLcom/deepalhome/launcher/music/MusicAppWindow;II)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final applyLyricBlur()V
    .locals 2

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object p0

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicLyricBlurEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lme/wcy/lrcview/LrcView;->setBlurEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setBlurEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final applyLyricColor(Z)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicWindowLyricColor()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_0

    const p1, 0x7f06038c

    goto :goto_0

    :cond_0
    const p1, 0x7f06038b

    :goto_0
    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setCurrentColor(I)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object p0

    invoke-static {p1, v0}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setNormalColor(I)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setCurrentColor(I)V

    const/4 p1, 0x3

    new-array p1, p1, [F

    invoke-static {v0, p1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v0, 0x1

    aget v1, p1, v0

    const v2, 0x3f266666    # 0.65f

    mul-float/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x2

    aget v1, p1, v0

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr v1, v2

    aput v1, p1, v0

    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setNormalColor(I)V

    :goto_1
    return-void
.end method

.method public final applyLyricLayout(JZ)V
    .locals 17

    move-object/from16 v6, p0

    const/4 v7, 0x0

    const/4 v0, 0x2

    const/4 v8, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->isExpandedMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->lastExpandedMode:Ljava/lang/Boolean;

    iget-object v2, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v2, 0x0

    iput-object v2, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverAnimator:Landroid/animation/ValueAnimator;

    iget-object v3, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-object v2, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const v9, 0x7f0700b3

    const-string v3, "coverIv"

    const-string v4, "lyricPanel"

    const-string v5, "singerTv"

    const-string v10, "titleTv"

    const-string v11, "titleContainer"

    const-string v14, "coverAndTitleContainer"

    const/4 v2, 0x0

    const-string v15, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    if-eqz v1, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getExpandedCoverSize()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0700ad

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    mul-int/2addr v13, v0

    add-int/2addr v13, v1

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->topContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->topContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    if-eqz v14, :cond_c

    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    iput v7, v14, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v13, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v13, -0x2

    iput v13, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/16 v13, 0x10

    iput v13, v14, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v9, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v9, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->translationYRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    if-eqz v9, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v13

    check-cast v13, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v13, v13, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v9}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    new-instance v9, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    invoke-direct {v9, v6, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    iput-object v9, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->translationYRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleContainer:Landroid/widget/LinearLayout;

    const/16 v9, 0x11

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleContainer:Landroid/widget/LinearLayout;

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    if-eqz v11, :cond_b

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v2, -0x1

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v13, 0x7f07009e

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v11, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_a

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0700ac

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v10, -0x1

    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    const/high16 v2, 0x41e00000    # 28.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_9

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f070097

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v8, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v5, -0x1

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    const/high16 v2, 0x41d00000    # 26.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    iget v0, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricTextGravity:I

    if-ne v0, v8, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700b3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_3
    move v0, v7

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricPanel:Landroid/widget/FrameLayout;

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    if-eqz v4, :cond_8

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0700b3

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f070097

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, -0x1

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->lastCoverSize:I

    int-to-float v0, v1

    int-to-float v1, v12

    div-float/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleY(F)V

    if-eqz p3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move-wide/from16 v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/deepalhome/launcher/music/MusicAppWindow;->animateCoverSize(IIIJ)V

    goto :goto_1

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_7

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v12, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v8, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    iget-object v0, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverSource:Ljava/lang/Object;

    if-nez v0, :cond_5

    goto/16 :goto_5

    :cond_5
    iget-object v1, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, v12, :cond_6

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v12, :cond_13

    :cond_6
    invoke-virtual {v6, v12, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->loadCover(ILjava/lang/Object;)V

    goto/16 :goto_5

    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x7f0700ba

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    if-lez v9, :cond_e

    goto :goto_2

    :cond_e
    const/4 v12, 0x0

    :goto_2
    if-eqz v12, :cond_f

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_3

    :cond_f
    move v9, v1

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v12

    check-cast v12, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v12, v12, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/view/View;->getScaleX()F

    move-result v12

    const v13, 0x3dcccccd    # 0.1f

    invoke-static {v12, v13}, Lkotlin/ranges/RangesKt___RangesKt;->coerceAtLeast(FF)F

    move-result v12

    int-to-float v9, v9

    mul-float/2addr v9, v12

    float-to-int v9, v9

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v12

    check-cast v12, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v12, v12, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_19

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v13, 0x800003

    iput v13, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v12, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_11

    int-to-float v3, v9

    int-to-float v9, v1

    const v12, 0x3f8ccccd    # 1.1f

    mul-float/2addr v12, v9

    cmpl-float v12, v3, v12

    if-lez v12, :cond_11

    div-float/2addr v3, v9

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v9

    check-cast v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v9, v9, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v9, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_10

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_10
    new-array v0, v0, [F

    aput v3, v0, v7

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v8

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0c0013

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    move-object v9, v14

    int-to-long v13, v3

    invoke-virtual {v0, v13, v14}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda27;

    move-wide/from16 v13, p1

    invoke-direct {v3, v13, v14, v6}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda27;-><init>(JLcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverScaleAnimator:Landroid/animation/ValueAnimator;

    goto :goto_4

    :cond_11
    move-object v9, v14

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    :goto_4
    iget-object v0, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->translationYRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    if-eqz v0, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_12
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->translationYRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->topContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->topContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    const/16 v3, 0x10

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_18

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f0700b1

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v2, -0x1

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    iput v2, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleContainer:Landroid/widget/LinearLayout;

    const v2, 0x800003

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleContainer:Landroid/widget/LinearLayout;

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_17

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0700a7

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_16

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const v3, 0x800003

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v9, -0x1

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    const/high16 v2, 0x41c00000    # 24.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_15

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v9, 0x7f0700b7

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const v5, 0x800003

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v9, -0x1

    iput v9, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricPanel:Landroid/widget/FrameLayout;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_14

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070097

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, -0x1

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v7, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iput v1, v6, Lcom/deepalhome/launcher/music/MusicAppWindow;->lastCoverSize:I

    :cond_13
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->placeHolder:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->selectMusicAppBtn:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {v6, v8}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setFontSizeMenuVisible(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;

    invoke-direct {v1, v6, v8}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lrcViewContainer:Lcom/deepalhome/launcher/view/FadingEdgeLayout;

    invoke-virtual {v1, v0, v0}, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->setFadeEdges(FF)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    const/4 v2, 0x3

    invoke-direct {v1, v6, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_14
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final applyLyricSize()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicWindowLyricSize()I

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

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setTextSize(FF)V

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object p0

    iget-object v0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->lrcView:Lme/wcy/lrcview/LrcView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lme/wcy/lrcview/LrcView;->setBoldEnabled(Z)V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->ttmlView:Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/deepalhome/launcher/music/ttml/TtmlLyricView;->setBoldEnabled(Z)V

    :cond_1
    return-void
.end method

.method public final applyProgressThumbStyle()V
    .locals 12

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicProgressStyleEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicProgressStyle()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setThumbStyle(I)V

    const/4 v2, 0x6

    const-wide/16 v3, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_2

    iget-wide v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->progressCustomIconRequestId:J

    add-long v10, v1, v3

    iput-wide v10, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->progressCustomIconRequestId:J

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicProgressCustomIconPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {v0, v5}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setCustomDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {p0, v5}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setCustomBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallIconStore;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v9}, Lcom/deepalhome/launcher/floating/FloatingBallIconStore;->isGif(Ljava/lang/String;)Z

    move-result v8

    const/4 v0, -0x2

    invoke-static {v0}, Lcom/blankj/utilcode/util/ThreadUtils;->getPoolByTypeAndPriority(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda25;

    move-object v6, v1

    move-object v7, p0

    invoke-direct/range {v6 .. v11}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda25;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;ZLjava/lang/String;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->progressCustomIconRequestId:J

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->progressCustomIconRequestId:J

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {v0, v5}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setCustomDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {p0, v5}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setCustomBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    return-void
.end method

.method public final buildLyricRequestKey(Ljava/lang/String;Ljava/lang/String;JLcom/deepalhome/launcher/util/s05/music/MusicSource;)Ljava/lang/String;
    .locals 0

    invoke-static {p1, p2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->buildMusicKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/deepalhome/launcher/util/s05/music/MusicSource;->BLUETOOTH:Lcom/deepalhome/launcher/util/s05/music/MusicSource;

    if-ne p5, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentMusicAppPackageName:Ljava/lang/String;

    const-string p2, "com.android.bluetooth"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public final cancelFontMenuAutoCollapse()V
    .locals 2

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->fontMenuAutoCollapseRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->fontMenuAutoCollapseHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->fontMenuAutoCollapseRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    return-void
.end method

.method public final collapseFontSizeMenuImmediate()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isFontSizeMenuExpanded:Z

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontSizeActionContainer:Landroid/widget/LinearLayout;

    const-string v0, "fontSizeActionContainer"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public final createMusicAppAdapter()Lcom/deepalhome/launcher/music/MusicAppWindow$createMusicAppAdapter$1;
    .locals 19

    sget-object v0, Lcom/deepalhome/launcher/util/AppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AppUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v17, "com.mega.media"

    const-string v18, "com.android.bluetooth"

    const-string v1, ""

    const-string v2, "com.tencent.wecarflow"

    const-string v3, "com.tencent.qqmusiccar"

    const-string v4, "com.netease.cloudmusic.iot"

    const-string v5, "com.kugou.android.auto"

    const-string v6, "cn.kuwo.kwmusiccar"

    const-string v7, "cn.kuwo.kwmusiccarclone"

    const-string v8, "com.kugou.android.lite"

    const-string v9, "com.maxmpz.audioplayer"

    const-string v10, "cn.toside.music.mobile"

    const-string v11, "com.luna.music"

    const-string v12, "com.arcvideo.car.luna.music"

    const-string v13, "com.spoti.plus"

    const-string v14, "com.apple.android.music"

    const-string v15, "com.aimp.player"

    const-string v16, "com.vvvdj.carapp"

    filled-new-array/range {v1 .. v18}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/blankj/utilcode/util/AppUtils;->isAppInstalled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, ""

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/deepalhome/launcher/music/MusicAppWindow$createMusicAppAdapter$1;

    invoke-direct {v0, v1}, Lcom/chad/library/adapter4/BaseQuickAdapter;-><init>(Ljava/util/List;)V

    new-instance v1, Lcom/koushikdutta/async/future/SimpleFuture$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    move-object/from16 v3, p0

    invoke-direct {v1, v2, v0, v3}, Lcom/koushikdutta/async/future/SimpleFuture$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/chad/library/adapter4/BaseQuickAdapter;->mOnItemClickListener:Lcom/chad/library/adapter4/BaseQuickAdapter$OnItemClickListener;

    return-object v0
.end method

.method public final endDrag()V
    .locals 2

    invoke-super {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->endDrag()V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicDynamicEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundBlurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isPlaying:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->resumeBackgroundFloat()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverSource:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getCoverTargetSize()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->loadCover(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final finishLyricRequest()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isAwaitingLyric:Z

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    return-void
.end method

.method public final formatDuration(I)Ljava/lang/String;
    .locals 2

    div-int/lit16 v0, p1, 0xe10

    rem-int/lit16 v1, p1, 0xe10

    div-int/lit8 v1, v1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f1301ab

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const v0, 0x7f1301ac

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object p0
.end method

.method public getLayoutId()I
    .locals 0

    const p0, 0x7f0e00b8

    return p0
.end method

.method public final glide()Lcom/bumptech/glide/RequestManager;
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/view/View;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    :goto_0
    return-object v0
.end method

.method public final interceptSeekWhenUnsupported(Lkotlin/jvm/functions/Function0;)Z
    .locals 2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->canSeekCurrentSource()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13036d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final isExpandedMode()Z
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getMinWindowWidth()I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final loadCover(ILjava/lang/Object;)V
    .locals 4

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverRequestId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverRequestId:J

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverTarget:Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->displayedCoverTarget:Lcom/bumptech/glide/request/target/CustomTarget;

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->glide()Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    :cond_0
    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;

    invoke-direct {v2, p1, v0, v1, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;-><init>(IJLcom/deepalhome/launcher/music/MusicAppWindow;)V

    iput-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverTarget:Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->glide()Lcom/bumptech/glide/RequestManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/RequestBuilder;->loadGeneric(Ljava/lang/Object;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p0

    new-instance p2, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;

    invoke-direct {p2}, Lcom/bumptech/glide/load/resource/bitmap/CenterCrop;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/bumptech/glide/request/BaseRequestOptions;->transform(Lcom/bumptech/glide/load/Transformation;Z)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0, p1, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->override(II)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    const/high16 p1, 0x7f100000

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/request/BaseRequestOptions;->placeholder(I)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/bumptech/glide/util/Executors;->MAIN_THREAD_EXECUTOR:Lcom/bumptech/glide/util/Executors$1;

    invoke-virtual {p0, v2, p0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;Lcom/bumptech/glide/request/BaseRequestOptions;Lcom/bumptech/glide/util/Executors$1;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isMusicListenerRegistered:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isMusicListenerRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->musicChangedListener:Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicManager;->addOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    :cond_0
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isMusicSettingsListenerRegistered:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isMusicSettingsListenerRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->musicSettingsChangedListener:Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;

    invoke-static {v0}, Lcom/deepalhome/launcher/music/MusicSettingsManager;->addOnMusicSettingsChangedListener(Lkotlin/jvm/functions/Function0;)V

    :cond_1
    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isWindowsListenerRegistered:Z

    const-string v2, "listener"

    if-nez v0, :cond_2

    iput-boolean v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isWindowsListenerRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->windowsChangedListener:Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    :cond_2
    sget-object v0, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricPayloadAvailableListener:Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->favChangedListener:Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->favChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->layoutChangeListener:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->progressLayoutChangeListener:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->isExpandedMode()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lastExpandedMode:Ljava/lang/Boolean;

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicWindowLyricTextGravity()I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricTextGravity:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v0

    iget v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricTextGravity:I

    invoke-virtual {v0, v1}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setTextGravity(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateLyricAlignIcon()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateLyricPanelMargin()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricSize()V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressBarDisplay:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_3

    const v0, 0x7f0801da

    goto :goto_0

    :cond_3
    const v0, 0x7f0801d9

    :goto_0
    invoke-static {v2, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyProgressThumbStyle()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lrcViewContainer:Lcom/deepalhome/launcher/view/FadingEdgeLayout;

    invoke-virtual {v1, v0, v0}, Lcom/deepalhome/launcher/view/FadingEdgeLayout;->setFadeEdges(FF)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->floatBtn:Landroid/widget/ImageView;

    sget-object v1, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->isShowing()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressContainer:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 5

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->layoutChangeListener:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->progressLayoutChangeListener:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->colorAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->colorAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorX:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorX:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorY:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorY:Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->showLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->isDragging()Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverTarget:Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->glide()Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    :cond_4
    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->displayedCoverTarget:Lcom/bumptech/glide/request/target/CustomTarget;

    if-eqz v3, :cond_5

    if-eq v3, v2, :cond_5

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->glide()Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    :cond_5
    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverTarget:Lcom/deepalhome/launcher/music/MusicAppWindow$loadCover$target$1;

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->displayedCoverTarget:Lcom/bumptech/glide/request/target/CustomTarget;

    :cond_6
    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->fontSizeLongPressRunnable:Landroidx/core/provider/CallbackWithHandler$2;

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->longPressHandler:Landroid/os/Handler;

    if-eqz v2, :cond_7

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->fontSizeLongPressRunnable:Landroidx/core/provider/CallbackWithHandler$2;

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricColorLongPressRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    if-eqz v2, :cond_8

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_8
    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricColorLongPressRunnable:Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->translationYRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    if-eqz v2, :cond_9

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_9
    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->translationYRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_a
    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->cancelFontMenuAutoCollapse()V

    iget-object v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    if-eqz v2, :cond_b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_b
    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricLoadingRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda21;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isAwaitingLyric:Z

    iget-wide v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricRequestToken:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricRequestToken:J

    iget-wide v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverInfoRequestToken:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverInfoRequestToken:J

    sget-object v1, Lcom/deepalhome/launcher/music/MusicInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/music/MusicInfoUtil;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricPayloadAvailableListener:Lcom/deepalhome/launcher/music/MusicAppWindow$lyricPayloadAvailableListener$1;

    const-string v2, "listener"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->lyricPayloadAvailableListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->favChangedListener:Lcom/deepalhome/launcher/music/MusicAppWindow$favChangedListener$1;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/music/MusicInfoUtil;->favChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isMusicListenerRegistered:Z

    if-eqz v1, :cond_c

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isMusicListenerRegistered:Z

    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->musicChangedListener:Lcom/deepalhome/launcher/music/LegacyMusicBar$musicChangedListener$1;

    invoke-static {v1}, Lcom/deepalhome/launcher/music/MusicManager;->removeOnMusicChangedListener(Lcom/deepalhome/launcher/music/MusicManager$OnMusicChangedListener;)V

    :cond_c
    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isMusicSettingsListenerRegistered:Z

    if-eqz v1, :cond_d

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isMusicSettingsListenerRegistered:Z

    sget-object v1, Lcom/deepalhome/launcher/music/MusicSettingsManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicSettingsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->musicSettingsChangedListener:Lcom/deepalhome/launcher/music/MusicAppWindow$musicSettingsChangedListener$1;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v3, Lcom/deepalhome/launcher/music/MusicSettingsManager;->listeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_d
    iget-boolean v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isWindowsListenerRegistered:Z

    if-eqz v1, :cond_e

    iput-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isWindowsListenerRegistered:Z

    sget-object v0, Lcom/deepalhome/launcher/window/AppWindowsManager;->INSTANCE:Lcom/deepalhome/launcher/window/AppWindowsManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->windowsChangedListener:Lcom/deepalhome/launcher/map/MapAppWindow$windowsListener$1;

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lcom/deepalhome/launcher/window/AppWindowsManager;->onWindowsChangedListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_e
    invoke-super {p0}, Lcom/deepalhome/launcher/view/BaseView;->onDetachedFromWindow()V

    return-void
.end method

.method public final onInit()V
    .locals 10

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setupBackgroundBlur()V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$1;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$1;-><init>(IF)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->likeBtn:Landroid/widget/ImageView;

    const-string v2, "likeBtn"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$2;->INSTANCE:Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$2;

    invoke-virtual {p0, v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setIconClick(Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateFavoriteAvailability()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->createMusicAppAdapter()Lcom/deepalhome/launcher/music/MusicAppWindow$createMusicAppAdapter$1;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->closeBtn:Landroid/widget/ImageView;

    const-string v2, "closeBtn"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$3;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$3;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-virtual {p0, v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setIconClick(Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    new-instance v0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->switchMusicBtn:Landroid/widget/ImageView;

    const-string v3, "switchMusicBtn"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$4;

    invoke-direct {v3, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$4;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;)V

    invoke-virtual {p0, v2, v3}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setIconClick(Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->nextSongBtn:Landroid/widget/ImageView;

    const-string v2, "nextSongBtn"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$5;->INSTANCE:Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$5;

    invoke-virtual {p0, v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setIconClick(Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->prevSongBtn:Landroid/widget/ImageView;

    const-string v2, "prevSongBtn"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$6;->INSTANCE:Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$6;

    invoke-virtual {p0, v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setIconClick(Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->playBtn:Landroid/widget/ImageView;

    const-string v2, "playBtn"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$7;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$7;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-virtual {p0, v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setIconClick(Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->seekBar:Landroid/widget/SeekBar;

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$8;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->floatBtn:Landroid/widget/ImageView;

    const-string v2, "floatBtn"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$9;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$9;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-virtual {p0, v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setIconClick(Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->floatBtn:Landroid/widget/ImageView;

    sget-object v2, Lcom/deepalhome/launcher/music/FloatingLyricsWindow;->Companion:Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/FloatingLyricsWindow$Companion;->isShowing()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontSizeMenuBtn:Landroid/widget/ImageView;

    const-string v2, "fontSizeMenuBtn"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$11;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$11;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-virtual {p0, v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setIconClick(Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontIncreaseBtn:Landroid/widget/ImageView;

    const-string v2, "fontIncreaseBtn"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v1, v3, p0}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontDecreaseBtn:Landroid/widget/ImageView;

    const-string v2, "fontDecreaseBtn"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;

    const/4 v3, -0x1

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, p0}, Lcom/deepalhome/launcher/window/WindowsView$$ExternalSyntheticLambda0;-><init>(IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricChineseModeBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateLyricChineseModeButton()V

    new-instance v6, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v9, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v8, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricColorBtn:Landroid/widget/ImageView;

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;

    move-object v4, v2

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda22;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricAlignBtn:Landroid/widget/ImageView;

    const-string v2, "lyricAlignBtn"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$12;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$12;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-virtual {p0, v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setIconClick(Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricAnchorBtn:Landroid/widget/ImageView;

    const-string v2, "lyricAnchorBtn"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v2, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$13;

    invoke-direct {v2, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$onInit$13;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-virtual {p0, v0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setIconClick(Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->outsideMusicBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v3, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f060099

    goto :goto_0

    :cond_1
    const v3, 0x7f060098

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->outsideMusicBtn:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateOutsideMusicIcon()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->outsideMusicBtn:Landroid/widget/ImageView;

    const-string v3, "outsideMusicBtn"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v3, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$setupOutsideMusicBtn$1;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-virtual {p0, v0, v3}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setIconClick(Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V

    :goto_1
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicWindowLyricTextGravity()I

    move-result v3

    iput v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricTextGravity:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v3

    iget v4, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricTextGravity:I

    invoke-virtual {v3, v4}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setTextGravity(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateLyricAlignIcon()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateLyricPanelMargin()V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicWindowLyricAnchorLine()I

    move-result v0

    iput v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricAnchorLine:I

    invoke-direct {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->getLyricRenderDelegate()Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;

    move-result-object v0

    iget v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricAnchorLine:I

    invoke-virtual {v0, v3}, Lcom/deepalhome/launcher/music/render/LyricRenderDelegate;->setAnchorLine(I)V

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricAnchorLine:I

    if-ltz v0, :cond_2

    const v0, 0x7f080172

    goto :goto_2

    :cond_2
    const v0, 0x7f080173

    :goto_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricAnchorBtn:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricSize()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricBlur()V

    sget-object v0, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricColor(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyProgressThumbStyle()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateSeekAvailability()V

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lrcView:Lme/wcy/lrcview/LrcView;

    new-instance v3, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    invoke-virtual {v0, v3}, Lme/wcy/lrcview/LrcView;->setOnLyricProgressListener(Lme/wcy/lrcview/LrcView$OnLyricProgressListener;)V

    :cond_3
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicAppWindow;->isLyricShow()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    const-string v3, "KEY_LYRIC_SHOW"

    invoke-virtual {v0, v3, v1}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Z)V

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverLayoutToken:J

    const-wide/16 v3, 0x1

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverLayoutToken:J

    invoke-virtual {p0, v0, v1, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricLayout(JZ)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->showCover(Z)V

    :goto_3
    return-void
.end method

.method public final playButtonClickAnimation(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0c0024

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance v0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda29;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda29;-><init>(Landroid/view/View;JI)V

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public final replaceDisplayedCoverTarget(Lcom/bumptech/glide/request/target/CustomTarget;Lcom/bumptech/glide/request/target/CustomTarget;)V
    .locals 1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->displayedCoverTarget:Lcom/bumptech/glide/request/target/CustomTarget;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    if-eq v0, p2, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->glide()Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestManager;->clear(Lcom/bumptech/glide/request/target/Target;)V

    :cond_0
    iput-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->displayedCoverTarget:Lcom/bumptech/glide/request/target/CustomTarget;

    return-void
.end method

.method public final resumeBackgroundFloat()V
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorX:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorY:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->resume()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->startBackgroundFloat()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->startBackgroundFloat()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final scheduleFontMenuAutoCollapse()V
    .locals 4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->cancelFontMenuAutoCollapse()V

    new-instance v0, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->fontMenuAutoCollapseHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->fontMenuAutoCollapseRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    return-void
.end method

.method public final sendLyricToHUD()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/util/CarUtil;->Companion:Lcom/deepalhome/launcher/util/CarUtil$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/CarUtil$Companion;->isS05()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->shouldSuppressHUDLyric()Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p0, Lcom/deepalhome/launcher/hud/HudLyricManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudLyricManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudLyricManager;->clearLyric()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lrcView:Lme/wcy/lrcview/LrcView;

    invoke-virtual {v1}, Lme/wcy/lrcview/LrcView;->getCurrentLyric()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isAwaitingLyric:Z

    if-nez v2, :cond_3

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    const-string v1, "Loading lyrics"

    :cond_4
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lrcView:Lme/wcy/lrcview/LrcView;

    invoke-virtual {v2}, Lme/wcy/lrcview/LrcView;->getNextLyric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lrcView:Lme/wcy/lrcview/LrcView;

    invoke-virtual {p0}, Lme/wcy/lrcview/LrcView;->getThirdLyric()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getHudLyricsEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->shouldSuppressHUDLyric()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object p0, Lcom/deepalhome/launcher/hud/HudLyricManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudLyricManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/hud/HudLyricManager;->clearLyric()V

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->INSTANCE:Lcom/deepalhome/launcher/hud/HudLyricManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->isConnected:Z

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->ignoredHudPackages:Ljava/util/Set;

    sget-object v3, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPackageName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Current music source ignored HUD lyrics sending: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->currentPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "HUDLyricManager"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/deepalhome/launcher/hud/HudLyricManager;->mainHandler:Landroid/os/Handler;

    new-instance v3, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;

    invoke-direct {v3, v1, v2, p0}, Lme/wcy/lrcview/LrcView$$ExternalSyntheticLambda11;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final setFontSizeMenuExpanded(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontSizeActionContainer:Landroid/widget/LinearLayout;

    const-string v1, "fontSizeActionContainer"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontSizeMenuLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isFontSizeMenuExpanded:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->collapseFontSizeMenuImmediate()V

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->cancelFontMenuAutoCollapse()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda15;-><init>(Lcom/deepalhome/launcher/window/BaseAppWindow;ZZI)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    iput-boolean p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isFontSizeMenuExpanded:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->scheduleFontMenuAutoCollapse()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->cancelFontMenuAutoCollapse()V

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_4

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0c0012

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    goto :goto_1

    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f0c000d

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda16;

    const/4 p2, 0x0

    invoke-direct {p1, v0, p2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda16;-><init>(Landroid/widget/LinearLayout;I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public final setIconClick(Landroid/widget/ImageView;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    new-instance v0, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0, p2}, Lcom/youth/banner/adapter/BannerAdapter$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setupBackgroundBlur()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicDynamicEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    new-instance v0, Leightbitlab/com/blurview/RenderEffectBlur;

    invoke-direct {v0}, Leightbitlab/com/blurview/RenderEffectBlur;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Leightbitlab/com/blurview/RenderScriptBlur;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Leightbitlab/com/blurview/RenderScriptBlur;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070054

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundBlurView:Leightbitlab/com/blurview/BlurView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v0}, Leightbitlab/com/blurview/BlurView;->setupWith(Landroid/view/ViewGroup;Leightbitlab/com/blurview/BlurAlgorithm;)Leightbitlab/com/blurview/PreDrawBlurController;

    move-result-object v0

    iput v1, v0, Leightbitlab/com/blurview/PreDrawBlurController;->blurRadius:F

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/PreDrawBlurController;->setBlurAutoUpdate(Z)Leightbitlab/com/blurview/BlurController;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundBlurView:Leightbitlab/com/blurview/BlurView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0004

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundBlurView:Leightbitlab/com/blurview/BlurView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    return-void
.end method

.method public final showCover(Z)V
    .locals 11

    const-string v0, ""

    invoke-static {v0}, Lcom/blankj/utilcode/util/SPUtils;->getInstance(Ljava/lang/String;)Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    const-string v1, "KEY_LYRIC_SHOW"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Z)V

    iget-wide v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverLayoutToken:J

    const-wide/16 v3, 0x1

    add-long v9, v0, v3

    iput-wide v9, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverLayoutToken:J

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->coverScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setScaleY(F)V

    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->translationYRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->translationYRunnable:Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda4;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->topContentContainer:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->topContentContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    const/16 v5, 0x11

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverAndTitleContainer:Landroid/widget/LinearLayout;

    const-string v6, "coverAndTitleContainer"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    const-string v7, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    if-eqz v6, :cond_b

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v3, -0x1

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->placeHolder:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->selectMusicAppBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricPanel:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow;->setFontSizeMenuVisible(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleContainer:Landroid/widget/LinearLayout;

    const-string v6, "titleContainer"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_a

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    iput v3, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "titleTv"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_9

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0700b6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/4 v2, -0x2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    const-string v1, "singerTv"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_8

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f0700b7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleContainer:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda5;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v1, 0x7f07009e

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Landroidx/databinding/ViewDataBinding;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const/16 v7, 0x11

    move-object v5, p0

    move v6, v0

    invoke-virtual/range {v5 .. v10}, Lcom/deepalhome/launcher/music/MusicAppWindow;->animateCoverSize(IIIJ)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->coverIv:Landroid/widget/ImageView;

    const-string v2, "coverIv"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_7

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object p1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverSource:Ljava/lang/Object;

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->currentCoverBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-lt v2, v0, :cond_5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v0, :cond_6

    :cond_5
    invoke-virtual {p0, v0, p1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->loadCover(ILjava/lang/Object;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final startBackgroundFloat()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorX:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-ne v3, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700a1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070098

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    neg-float v5, v3

    new-array v6, v1, [F

    aput v5, v6, v0

    aput v3, v6, v2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0015

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v3, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v6, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    iput-object v3, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorX:Landroid/animation/ValueAnimator;

    neg-float v3, v4

    new-array v6, v1, [F

    aput v4, v6, v0

    aput v3, v6, v2

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c001c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda0;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorY:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final startDragging()V
    .locals 2

    invoke-super {p0}, Lcom/deepalhome/launcher/window/BaseAppWindow;->startDragging()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundBlurView:Leightbitlab/com/blurview/BlurView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Leightbitlab/com/blurview/BlurView;->setBlurAutoUpdate(Z)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicDynamicEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->isPlaying:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorX:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_0
    iget-object p0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->backgroundAnimatorY:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->pause()V

    :cond_1
    return-void
.end method

.method public final updateFavoriteAvailability()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->resolveFavoriteTargetPackage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "Music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v2, "com.tinnove.mediacenter"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/deepalhome/launcher/music/MusicManager;->privateCanCollect:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->privateBridge:Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;

    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->addFavorMethod$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v2}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcom/deepalhome/launcher/util/s05/music/MusicPrivateBridge;->cancelFavorMethod$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "com.tencent.qqmusiccar"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :sswitch_3
    const-string v2, "com.arcvideo.car.luna.music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :sswitch_4
    const-string v2, "com.luna.music"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->likeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->likeBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->likeBtn:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_3
    const v0, 0x3ee66666    # 0.45f

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5fb9a2c0 -> :sswitch_4
        -0x29578d3b -> :sswitch_3
        -0xe791a7b -> :sswitch_2
        -0x390f4d9 -> :sswitch_1
        0x473fe05 -> :sswitch_0
    .end sparse-switch
.end method

.method public final updateLyricAlignIcon()V
    .locals 2

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricTextGravity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f080162

    goto :goto_0

    :cond_0
    const v0, 0x7f080163

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricAlignBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public final updateLyricChineseModeButton()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/UserConfig;->getLyricTraditionalChineseEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricChineseModeBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricChineseModeBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_0

    const v3, 0x7f1302b0

    goto :goto_0

    :cond_0
    const v3, 0x7f1302b3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricChineseModeBtn:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v0, :cond_1

    const v0, 0x7f1302b1

    goto :goto_1

    :cond_1
    const v0, 0x7f1302b2

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricChineseModeBtn:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public final updateLyricPanelMargin()V
    .locals 2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->isExpandedMode()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicAppWindow;->isLyricShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/deepalhome/launcher/music/MusicAppWindow;->lyricTextGravity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricPanel:Landroid/widget/FrameLayout;

    const-string v1, "lyricPanel"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public final updateOutsideMusicIcon()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->INSTANCE:Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "getContext(...)"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/music/CarOutsideMusicHelper;->getEnabled(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->outsideMusicBtn:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public final updateProgressThumbPosition(IIZZF)V
    .locals 5

    const/high16 v0, 0x40000000    # 2.0f

    if-gtz p2, :cond_0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    div-float/2addr p0, v0

    invoke-virtual {p1, p0}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setPositionImmediate(F)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressContainer:Landroid/widget/FrameLayout;

    const-string v2, "progressContainer"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-gtz v1, :cond_3

    return-void

    :cond_3
    const/4 v3, 0x0

    invoke-static {p1, v3, p2}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result p1

    int-to-float v1, v1

    int-to-float v3, p1

    int-to-float v4, p2

    div-float/2addr v3, v4

    mul-float/2addr v3, v1

    int-to-float v2, v2

    div-float/2addr v2, v0

    sub-float/2addr v3, v2

    if-nez p3, :cond_6

    if-nez p4, :cond_4

    goto :goto_3

    :cond_4
    const-wide/16 p3, 0x3e8

    long-to-float v0, p3

    mul-float/2addr v0, p5

    float-to-int p5, v0

    add-int/2addr p1, p5

    if-le p1, p2, :cond_5

    goto :goto_2

    :cond_5
    move p2, p1

    :goto_2
    int-to-float p1, p2

    div-float/2addr p1, v4

    mul-float/2addr p1, v1

    sub-float/2addr p1, v2

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {p0, v3, p1, p3, p4}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animateToPredictedPosition(FFJ)V

    return-void

    :cond_6
    :goto_3
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {p0, v3, p3}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->animateToPosition(FZ)V

    return-void
.end method

.method public final updateSeekAvailability()V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/music/MusicManager;->INSTANCE:Lcom/deepalhome/launcher/music/MusicManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/music/MusicManager;->canSeekCurrentSource()Z

    move-result v0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v1

    check-cast v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v1, v1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    if-eqz v0, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v2, 0x3ee66666    # 0.45f

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lrcView:Lme/wcy/lrcview/LrcView;

    new-instance v1, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/deepalhome/launcher/music/MusicAppWindow$$ExternalSyntheticLambda7;-><init>(Lcom/deepalhome/launcher/music/MusicAppWindow;)V

    iput-object v1, v0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lrcView:Lme/wcy/lrcview/LrcView;

    const/4 v0, 0x0

    iput-object v0, p0, Lme/wcy/lrcview/LrcView;->mOnPlayClickListener:Lme/wcy/lrcview/LrcView$OnPlayClickListener;

    :goto_1
    return-void
.end method

.method public final updateUIMode(Z)V
    .locals 7

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->backgroundMaskView:Landroid/view/View;

    if-eqz p1, :cond_0

    const v1, 0x7f060029

    goto :goto_0

    :cond_0
    const v1, 0x7f060025

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v0

    check-cast v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v0, v0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressBarDisplay:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_1

    const v2, 0x7f0801da

    goto :goto_1

    :cond_1
    const v2, 0x7f0801d9

    :goto_1
    invoke-static {v1, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p1, :cond_2

    const v1, 0x7f06038c

    goto :goto_2

    :cond_2
    const v1, 0x7f06038b

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_3

    const v2, 0x7f060099

    goto :goto_3

    :cond_3
    const v2, 0x7f060098

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->singerTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v5

    check-cast v5, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v5, v5, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->positionTv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v6

    check-cast v6, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v6, v6, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->durationTv:Landroid/widget/TextView;

    filled-new-array {v2, v3, v4, v5, v6}, [Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/music/MusicAppWindow;->applyLyricColor(Z)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontSizeMenuBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    const v3, 0x7f08008a

    goto :goto_5

    :cond_5
    const v3, 0x7f080089

    :goto_5
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getMusicDynamicColorEnabled()Z

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressThumb:Lcom/deepalhome/launcher/view/AnimatedProgressThumb;

    invoke-virtual {v2, v1}, Lcom/deepalhome/launcher/view/AnimatedProgressThumb;->setThumbColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->prevSongBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    const v3, 0x7f0801ee

    goto :goto_6

    :cond_6
    const v3, 0x7f0801ed

    :goto_6
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->playBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    const v3, 0x7f0801e9

    goto :goto_7

    :cond_7
    const v3, 0x7f0801e8

    :goto_7
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->loadingPb:Landroid/widget/ProgressBar;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminateTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->nextSongBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    const v3, 0x7f0801e5

    goto :goto_8

    :cond_8
    const v3, 0x7f0801e4

    :goto_8
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->switchMusicBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    const v3, 0x7f0800b0

    goto :goto_9

    :cond_9
    const v3, 0x7f0800af

    :goto_9
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontDecreaseBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_a

    const v3, 0x7f0801de

    goto :goto_a

    :cond_a
    const v3, 0x7f0801dd

    :goto_a
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontIncreaseBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_b

    const v3, 0x7f0801e0

    goto :goto_b

    :cond_b
    const v3, 0x7f0801df

    :goto_b
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontSizeMenuBtn:Landroid/widget/ImageView;

    const v3, 0x7f080165

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/music/MusicAppWindow;->updateLyricAlignIcon()V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->floatBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_c

    const v3, 0x7f0800c3

    goto :goto_c

    :cond_c
    const v3, 0x7f0800c2

    :goto_c
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->likeBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    const p1, 0x7f0801e3

    goto :goto_d

    :cond_d
    const p1, 0x7f0801e2

    :goto_d
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    const-string v2, "valueOf(...)"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontDecreaseBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontIncreaseBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->fontSizeMenuBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricColorBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricChineseModeBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricAlignBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->lyricAnchorBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->outsideMusicBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->floatBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v2, 0x7f060337

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->likeBtn:Landroid/widget/ImageView;

    new-instance v3, Landroid/content/res/ColorStateList;

    const v4, 0x10100a0

    filled-new-array {v4}, [I

    move-result-object v4

    const v5, 0x10100a1

    filled-new-array {v5}, [I

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [I

    filled-new-array {v4, v5, v6}, [[I

    move-result-object v4

    filled-new-array {p1, p1, v1}, [I

    move-result-object p1

    invoke-direct {v3, v4, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->prevSongBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v2

    check-cast v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v2, v2, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->playBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v3

    check-cast v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v3, v3, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->nextSongBtn:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object v4

    check-cast v4, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object v4, v4, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->switchMusicBtn:Landroid/widget/ImageView;

    filled-new-array {p1, v2, v3, v4}, [Landroid/widget/ImageView;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_e

    :cond_e
    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p1, p1, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressBarDisplay:Landroid/widget/ProgressBar;

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0c0002

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    invoke-virtual {p0}, Lcom/deepalhome/launcher/view/BaseView;->getBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;

    iget-object p0, p0, Lcom/deepalhome/launcher/databinding/MusicAppWindowBinding;->progressBarDisplay:Landroid/widget/ProgressBar;

    invoke-static {v0, p1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_f
    return-void
.end method
