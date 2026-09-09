.class public final Lcom/deepalhome/launcher/floating/MuyuFloatingWindow$gestureListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/deepalhome/launcher/util/GestureHelper$GestureListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final mutiFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final mutiFingerSlipProcess()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onDoubleTap()Z
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-static {p0}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->access$handleTap(Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;)Z

    move-result p0

    return p0
.end method

.method public final onDown(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->isDragging:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p0

    sget-wide v0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->lastDragAt:J

    sub-long/2addr p0, v0

    const-wide/16 v0, 0xc8

    cmp-long p0, p0, v0

    if-gez p0, :cond_1

    return-void

    :cond_1
    :goto_0
    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuCore;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuCore;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {p0}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/deepalhome/launcher/config/UserConfig;->setMuyuMeritCount(J)V

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuCore;->onMeritChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onSingleTapUp()Z
    .locals 0

    sget-object p0, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->INSTANCE:Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;

    invoke-static {p0}, Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;->access$handleTap(Lcom/deepalhome/launcher/floating/MuyuFloatingWindow;)Z

    move-result p0

    return p0
.end method

.method public final onUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final singleFingerSlipAction(Lcom/deepalhome/launcher/util/GestureHelper$GestureEvent;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final singleFingeronSlipProcess(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
