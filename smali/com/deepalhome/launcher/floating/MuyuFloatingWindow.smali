.class public final Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

.field public static final carInfoListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$carInfoListener$1;

.field public static control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

.field public static gestureHelper:Lcom/deepalhome/launcher/util/GestureHelper;

.field public static final gestureListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$gestureListener$1;

.field public static hideDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

.field public static iconView:Landroid/widget/ImageView;

.field public static isCarInfoListenerRegistered:Z

.field public static isDragging:Z

.field public static isHiddenBySpeed:Z

.field public static lastDragAt:J

.field public static lastSpeed:I

.field public static final mainHandler:Landroid/os/Handler;

.field public static final meritChangedListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$meritChangedListener$1;

.field public static meritPlusView:Landroid/widget/TextView;

.field public static meritView:Landroid/widget/TextView;

.field public static rootView:Landroid/view/View;

.field public static showDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

.field public static final touchListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$touchListener$1;

.field public static final uiModeChangedListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$uiModeChangedListener$1;

.field public static final viewLifecycle:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$viewLifecycle$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->mainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$meritChangedListener$1;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$meritChangedListener$1;

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritChangedListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$meritChangedListener$1;

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$carInfoListener$1;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$carInfoListener$1;

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->carInfoListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$carInfoListener$1;

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$uiModeChangedListener$1;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$uiModeChangedListener$1;

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->uiModeChangedListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$uiModeChangedListener$1;

    new-instance v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$viewLifecycle$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$viewLifecycle$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->viewLifecycle:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$viewLifecycle$1;

    new-instance v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$touchListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$touchListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->touchListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$touchListener$1;

    new-instance v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$gestureListener$1;

    invoke-direct {v0}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$gestureListener$1;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->gestureListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$gestureListener$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final access$handleTap(Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;)Z
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isDragging:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    move p0, v1

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->lastDragAt:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long p0, v2, v4

    if-gez p0, :cond_0

    move p0, v0

    :goto_0
    if-eqz p0, :cond_2

    move v0, v1

    goto/16 :goto_5

    :cond_2
    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuCore;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuCore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/deepalhome/launcher/floating/MuyuCore;->isLoaded:Z

    if-eqz p0, :cond_4

    sget v3, Lcom/deepalhome/launcher/floating/MuyuCore;->soundId:I

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/deepalhome/launcher/floating/MuyuCore;->soundPool:Landroid/media/SoundPool;

    if-eqz v2, :cond_4

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/media/SoundPool;->play(IFFIIF)I

    :cond_4
    :goto_1
    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuMeritCount()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0, v2, v3}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuMeritCount(J)V

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuCore;->onMeritChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    sget-object v4, Lcom/deepalhome/launcher/floating/MuyuCore;->meritMilestones:Ljava/util/Set;

    invoke-interface {v4, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuCore;->onMilestoneReachedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->iconView:Landroid/widget/ImageView;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez p0, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const v4, 0x3f666666    # 0.9f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v5, 0xb

    invoke-direct {v4, v5, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_4
    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritPlusView:Landroid/widget/TextView;

    if-nez p0, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v2, 0x42200000    # 40.0f

    invoke-static {v2}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    neg-float v2, v2

    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;

    const/16 v3, 0xc

    invoke-direct {v2, v3, p0}, Landroidx/activity/ComponentDialog$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_5
    return v0
.end method

.method public static applyTheme()V
    .locals 4

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->iconView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuColor()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    sget-object v2, Lcom/deepalhome/launcher/theme/UIModeManager;->INSTANCE:Lcom/deepalhome/launcher/theme/UIModeManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/theme/UIModeManager;->isSystemNight()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f06033a

    goto :goto_0

    :cond_1
    const v2, 0x7f060339

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method public static applyViewConfig()V
    .locals 7

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->rootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuSize()I

    move-result v2

    const/16 v3, 0x50

    const/16 v4, 0xc8

    invoke-static {v2, v3, v4}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(III)I

    move-result v2

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuSize()I

    move-result v3

    if-eq v2, v3, :cond_1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuSize(I)V

    :cond_1
    int-to-float v2, v2

    invoke-static {v2}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iput v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_2
    move-object v4, v5

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v4, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->iconView:Landroid/widget/ImageView;

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    if-eqz v6, :cond_4

    iput v3, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    move-object v5, v6

    :cond_4
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const/16 v3, 0x78

    int-to-float v3, v3

    div-float/2addr v2, v3

    const/high16 v3, 0x41600000    # 14.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-static {v3, v4, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v3

    const/high16 v4, 0x41a00000    # 20.0f

    mul-float/2addr v2, v4

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x41f00000    # 30.0f

    invoke-static {v2, v4, v5}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    move-result v2

    sget-object v4, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritView:Landroid/widget/TextView;

    const/4 v5, 0x2

    if-eqz v4, :cond_5

    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_5
    sget-object v3, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->meritPlusView:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public static ensureVisible(Landroid/content/Context;Z)V
    .locals 7

    const-string v0, "context"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuEnabled()Z

    move-result v1

    const-string v2, "floating_muyu"

    if-eqz v1, :cond_b

    sget-object v1, Lcom/deepalhome/launcher/util/FloatWindowPermissionUtils;->INSTANCE:Lcom/deepalhome/launcher/util/FloatWindowPermissionUtils;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_c

    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_c

    check-cast p0, Landroid/app/Activity;

    invoke-static {p0}, Lcom/deepalhome/launcher/util/FloatWindowPermissionUtils;->requestPermission(Landroid/app/Activity;)V

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/deepalhome/launcher/util/CarInfoUtil;->INSTANCE:Lcom/deepalhome/launcher/util/CarInfoUtil;

    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->start()V

    sget-object p1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->gestureHelper:Lcom/deepalhome/launcher/util/GestureHelper;

    if-nez p1, :cond_1

    new-instance p1, Lcom/deepalhome/launcher/util/GestureHelper;

    sget-object v1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->gestureListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$gestureListener$1;

    invoke-direct {p1, p0, v1}, Lcom/deepalhome/launcher/util/GestureHelper;-><init>(Landroid/content/Context;Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;)V

    sput-object p1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->gestureHelper:Lcom/deepalhome/launcher/util/GestureHelper;

    :cond_1
    sget-object p1, Lcom/deepalhome/launcher/floating/MuyuCore;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuCore;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/floating/MuyuCore;->soundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {p1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p1, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    new-instance v4, Landroid/media/SoundPool$Builder;

    invoke-direct {v4}, Landroid/media/SoundPool$Builder;-><init>()V

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object p1

    sput-object p1, Lcom/deepalhome/launcher/floating/MuyuCore;->soundPool:Landroid/media/SoundPool;

    if-eqz p1, :cond_3

    new-instance v4, Lcom/deepalhome/launcher/floating/MuyuCore$$ExternalSyntheticLambda0;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    :cond_3
    sget-object p1, Lcom/deepalhome/launcher/floating/MuyuCore;->soundPool:Landroid/media/SoundPool;

    if-eqz p1, :cond_4

    const v4, 0x7f120002

    invoke-virtual {p1, p0, v4, v1}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p1

    goto :goto_0

    :cond_4
    move p1, v3

    :goto_0
    sput p1, Lcom/deepalhome/launcher/floating/MuyuCore;->soundId:I

    :goto_1
    sget-boolean p1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isCarInfoListenerRegistered:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    sput-boolean v1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isCarInfoListenerRegistered:Z

    sget-object p1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->carInfoListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$carInfoListener$1;

    invoke-static {p1}, Lcom/deepalhome/launcher/util/CarInfoUtil;->addOnCarInfoChangedListener(Lkotlin/jvm/functions/Function1;)V

    :goto_2
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuSafetyModeEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isHiddenBySpeed:Z

    if-nez p1, :cond_7

    :cond_6
    move v3, v1

    :cond_7
    sget-object p1, Lcom/petterp/floatingx/FloatingX;->fxs:Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {v2}, Lcom/petterp/floatingx/FloatingX;->control(Ljava/lang/String;)Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    move-result-object p0

    sput-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz v3, :cond_8

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->show()V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->hide()V

    :goto_3
    invoke-static {}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->applyViewConfig()V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuX()I

    move-result p1

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuY()I

    move-result v4

    sget-object v5, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->Companion:Lcom/petterp/floatingx/assist/helper/FxAppHelper$Companion;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;

    invoke-direct {v5}, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;-><init>()V

    invoke-virtual {v5, p0}, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->setContext(Landroid/content/Context;)V

    const p0, 0x7f0e0063

    iput p0, v5, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->layoutId:I

    sget-object p0, Lcom/petterp/floatingx/assist/FxScopeType;->SYSTEM:Lcom/petterp/floatingx/assist/FxScopeType;

    const-string v6, "scope"

    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p0, v5, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->scopeEnum:Lcom/petterp/floatingx/assist/FxScopeType;

    invoke-virtual {v5, v2}, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->setTag(Ljava/lang/String;)V

    iput-boolean v1, v5, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->enableSafeArea:Z

    sget-object p0, Lcom/petterp/floatingx/assist/FxGravity;->RIGHT_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    const-string v2, "gravity"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p0, v5, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->gravity:Lcom/petterp/floatingx/assist/FxGravity;

    if-ltz p1, :cond_a

    if-ltz v4, :cond_a

    int-to-float p0, p1

    int-to-float p1, v4

    iput p0, v5, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->defaultX:F

    iput p1, v5, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->defaultY:F

    :cond_a
    const/high16 p0, 0x40c00000    # 6.0f

    invoke-static {p0}, Lcom/blankj/utilcode/util/SizeUtils;->dp2px(F)I

    move-result p0

    int-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    iput p0, v5, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->edgeOffset:F

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/UserConfig;->getMuyuEdgeAdsorptionEnabled()Z

    move-result p0

    iput-boolean p0, v5, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->enableEdgeAdsorption:Z

    sget-object p0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->LEFT_OR_RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    const-string p1, "direction"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p0, v5, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->edgeAdsorbDirection:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    sget-object p0, Lcom/petterp/floatingx/assist/FxDisplayMode;->Normal:Lcom/petterp/floatingx/assist/FxDisplayMode;

    const-string p1, "mode"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p0, v5, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->displayMode:Lcom/petterp/floatingx/assist/FxDisplayMode;

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$MuyuStorage;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$MuyuStorage;

    const-string p1, "iFxConfigStorage"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v1, v5, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->enableSaveDirection:Z

    iput-object p0, v5, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->iFxConfigStorage:Lcom/petterp/floatingx/listener/IFxConfigStorage;

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->viewLifecycle:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$viewLifecycle$1;

    const-string p1, "listener"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, v5, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->iFxViewLifecycles:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->touchListener:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$touchListener$1;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p0, v5, Lcom/petterp/floatingx/assist/helper/FxBasisHelper$Builder;->iFxTouchListener:Lcom/petterp/floatingx/listener/IFxTouchListener;

    invoke-virtual {v5}, Lcom/petterp/floatingx/assist/helper/FxAppHelper$Builder;->build()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object p0

    invoke-static {p0}, Lcom/petterp/floatingx/FloatingX;->install(Lcom/petterp/floatingx/assist/helper/FxAppHelper;)Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    move-result-object p0

    sput-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->show()V

    goto :goto_4

    :cond_b
    sget-object p0, Lcom/petterp/floatingx/FloatingX;->fxs:Ljava/util/HashMap;

    invoke-virtual {p0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->hide()V

    :cond_c
    :goto_4
    return-void
.end method

.method public static handleSpeedChanged(I)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->mainHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    if-lez p0, :cond_1

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->showDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    sput-object v1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->showDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->hideDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isHiddenBySpeed:Z

    if-nez p0, :cond_3

    new-instance p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->hideDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->hideDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    if-eqz p0, :cond_2

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    sput-object v1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->hideDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->showDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isHiddenBySpeed:Z

    if-eqz p0, :cond_3

    new-instance p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/4 v1, 0x5

    invoke-direct {p0, v1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    sput-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->showDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public static updateSafetyMode(Z)V
    .locals 3

    sget-object v0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuSafetyModeEnabled(Z)V

    sget-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->hideDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sget-object v1, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->mainHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->hideDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    sget-object v2, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->showDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    sput-object v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->showDelayRunnable:Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    if-nez p0, :cond_3

    sget-boolean p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isHiddenBySpeed:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    sput-boolean p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isHiddenBySpeed:Z

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->control:Lcom/petterp/floatingx/imp/app/FxAppControlImp;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/petterp/floatingx/imp/app/FxAppControlImp;->show()V

    :cond_2
    return-void

    :cond_3
    sget p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->lastSpeed:I

    if-lez p0, :cond_4

    invoke-static {p0}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->handleSpeedChanged(I)V

    :cond_4
    return-void
.end method
