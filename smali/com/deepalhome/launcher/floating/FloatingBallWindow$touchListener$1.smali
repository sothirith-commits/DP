.class public final Lcom/deepalhome/launcher/floating/FloatingBallWindow$touchListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/petterp/floatingx/listener/IFxTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown()V
    .locals 0

    const/4 p0, 0x0

    sput-boolean p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->isDragging:Z

    return-void
.end method

.method public final onDragIng(Landroid/view/MotionEvent;FF)V
    .locals 0

    const-string p0, "event"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->lastDragAt:J

    const/4 p0, 0x1

    sput-boolean p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->isDragging:Z

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p1

    invoke-static {p2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallX(I)V

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    invoke-static {p3}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/config/UserConfig;->setFloatingBallY(I)V

    return-void
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;Lcom/petterp/floatingx/view/IFxInternalHelper;)V
    .locals 0

    const-string p0, "event"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final onTouch(Landroid/view/MotionEvent;)V
    .locals 0

    const-string p0, "event"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->gestureHelper:Lcom/deepalhome/launcher/util/GestureHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/deepalhome/launcher/util/GestureHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public final onUp()V
    .locals 1

    sget-boolean p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->isDragging:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->isDragging:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/FloatingBallWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/floating/FloatingBallWindow;->restartAnimatedIconAfterPositionChange()V

    :cond_0
    return-void
.end method
