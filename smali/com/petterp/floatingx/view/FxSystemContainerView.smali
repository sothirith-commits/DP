.class public final Lcom/petterp/floatingx/view/FxSystemContainerView;
.super Lcom/petterp/floatingx/view/FxBasicContainerView;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private downTouchX:F

.field private downTouchY:F

.field private final helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

.field private isShowKeyBoard:Z

.field private wl:Landroid/view/WindowManager$LayoutParams;

.field private final wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Landroid/view/WindowManager;Landroid/content/Context;)V
    .locals 8

    const-string v0, "helper"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "wm"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "context"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v6, 0x8

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/petterp/floatingx/view/FxSystemContainerView;-><init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Landroid/view/WindowManager;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Landroid/view/WindowManager;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "helper"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "wm"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "context"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, p1, p3, p4}, Lcom/petterp/floatingx/view/FxBasicContainerView;-><init>(Lcom/petterp/floatingx/assist/helper/FxBasisHelper;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    iput-object p2, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wm:Landroid/view/WindowManager;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Landroid/view/WindowManager;Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/petterp/floatingx/view/FxSystemContainerView;-><init>(Lcom/petterp/floatingx/assist/helper/FxAppHelper;Landroid/view/WindowManager;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final checkFullFlags(IZZ)I
    .locals 0

    if-nez p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    return p1

    :cond_1
    :goto_0
    or-int/lit16 p0, p1, 0x300

    return p0
.end method

.method public static checkFullFlags$default(Lcom/petterp/floatingx/view/FxSystemContainerView;IZZILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object p3

    iget-boolean p3, p3, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->enableSafeArea:Z

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/petterp/floatingx/view/FxSystemContainerView;->checkFullFlags(IZZ)I

    move-result p0

    return p0
.end method

.method private final getDefaultFlags()I
    .locals 0

    const/16 p0, 0x28

    return p0
.end method

.method private final initWLParams()V
    .locals 8

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-direct {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getDefaultFlags()I

    move-result v3

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/petterp/floatingx/view/FxSystemContainerView;->checkFullFlags$default(Lcom/petterp/floatingx/view/FxSystemContainerView;IZZILjava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iput-object v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wl:Landroid/view/WindowManager$LayoutParams;

    return-void
.end method

.method private final isAttachToWM()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final safeUpdateViewLayout(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    invoke-direct {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->isAttachToWM()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wm:Landroid/view/WindowManager;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final checkOrRegisterWM$floatingx_release(Landroid/view/WindowManager;)V
    .locals 1

    const-string v0, "wm"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_0
    invoke-direct {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->isAttachToWM()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wl:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    invoke-interface {p1, p0, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string p0, "wl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->isInitLayout$floatingx_release()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->isShowKeyBoard:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->isShowKeyBoard:Z

    invoke-virtual {p0, v0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->updateKeyBoardStatus$floatingx_release(Z)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public getHelper()Lcom/petterp/floatingx/assist/helper/FxAppHelper;
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->helper:Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    return-object p0
.end method

.method public bridge synthetic getHelper()Lcom/petterp/floatingx/assist/helper/FxBasisHelper;
    .locals 0

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object p0

    return-object p0
.end method

.method public getX()F
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wl:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float p0, p0

    return p0

    :cond_0
    const-string p0, "wl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public getY()F
    .locals 0

    iget-object p0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wl:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float p0, p0

    return p0

    :cond_0
    const-string p0, "wl"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public initView()V
    .locals 1

    invoke-super {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->initView()V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxBasicContainerView;->installChildView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->initWLParams()V

    return-void
.end method

.method public onInitChildViewEnd(Lcom/petterp/floatingx/view/FxViewHolder;)V
    .locals 6

    const-string v0, "vh"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object v0

    iget-boolean v0, v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->isEnableKeyBoardAdapt:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->editTextIds:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/petterp/floatingx/view/FxViewHolder;->getViewOrNull(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    sget-object v2, Lcom/petterp/floatingx/util/FxInputHelper;->INSTANCE:Lcom/petterp/floatingx/util/FxInputHelper;

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object v3

    iget-object v3, v3, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->tag:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "fxTag"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const v2, 0x7f0b024e

    invoke-virtual {v1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    new-instance v4, Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v3}, Lcom/petterp/floatingx/util/FxKeyBoardTouchImpl;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onTouchCancel(Landroid/view/MotionEvent;)V
    .locals 1

    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->downTouchX:F

    iput p1, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->downTouchY:F

    return-void
.end method

.method public onTouchDown(Landroid/view/MotionEvent;)V
    .locals 4

    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wl:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const-string v2, "wl"

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->downTouchX:F

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wl:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->downTouchY:F

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public onTouchMove(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    iget v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->downTouchX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    add-float/2addr v1, v0

    iget v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->downTouchY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    add-float/2addr p1, v0

    invoke-virtual {p0, v1, p1}, Lcom/petterp/floatingx/view/FxBasicContainerView;->safeUpdatingXY(FF)V

    return-void
.end method

.method public parentSize()Lkotlin/Pair;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object v0

    iget-object v0, v0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->context:Landroid/app/Application;

    sget v1, Lcom/petterp/floatingx/util/_FxScreenExt;->screenHeightBf:I

    const-string v1, "<this>"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type android.view.WindowManager"

    if-eqz v0, :cond_1

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getHelper()Lcom/petterp/floatingx/assist/helper/FxAppHelper;

    move-result-object p0

    iget-object p0, p0, Lcom/petterp/floatingx/assist/helper/FxAppHelper;->context:Landroid/app/Application;

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    new-instance v1, Lkotlin/Pair;

    invoke-direct {v1, v0, p0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public preCheckPointerDownTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p0, p1}, Lcom/petterp/floatingx/view/FxBasicContainerView;->checkPointerDownTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final updateEnableHalfStatus$floatingx_release(Z)V
    .locals 9

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wl:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const-string v2, "wl"

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getDefaultFlags()I

    move-result v4

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    move v5, p1

    invoke-static/range {v3 .. v8}, Lcom/petterp/floatingx/view/FxSystemContainerView;->checkFullFlags$default(Lcom/petterp/floatingx/view/FxSystemContainerView;IZZILjava/lang/Object;)I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wl:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/petterp/floatingx/view/FxSystemContainerView;->safeUpdateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public final updateKeyBoardStatus$floatingx_release(Z)V
    .locals 9

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wl:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const-string v2, "wl"

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->isShowKeyBoard:Z

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/16 v4, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/petterp/floatingx/view/FxSystemContainerView;->checkFullFlags$default(Lcom/petterp/floatingx/view/FxSystemContainerView;IZZILjava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/petterp/floatingx/view/FxSystemContainerView;->getDefaultFlags()I

    move-result v4

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Lcom/petterp/floatingx/view/FxSystemContainerView;->checkFullFlags$default(Lcom/petterp/floatingx/view/FxSystemContainerView;IZZILjava/lang/Object;)I

    move-result p1

    :goto_0
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wl:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, Lcom/petterp/floatingx/view/FxSystemContainerView;->safeUpdateViewLayout(Landroid/view/WindowManager$LayoutParams;)V

    return-void

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method

.method public updateXY(FF)V
    .locals 3

    iget-object v0, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wl:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    const-string v2, "wl"

    if-eqz v0, :cond_2

    float-to-int p1, p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz v0, :cond_1

    float-to-int p1, p2

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/petterp/floatingx/view/FxSystemContainerView;->wm:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    invoke-interface {p1, p0, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method
