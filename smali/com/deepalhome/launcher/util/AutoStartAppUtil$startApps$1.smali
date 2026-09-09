.class public final Lcom/deepalhome/launcher/util/AutoStartAppUtil$startApps$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $appContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/util/AutoStartAppUtil$startApps$1;->$appContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/util/AutoStartAppUtil;->INSTANCE:Lcom/deepalhome/launcher/util/AutoStartAppUtil;

    iget-object p0, p0, Lcom/deepalhome/launcher/util/AutoStartAppUtil$startApps$1;->$appContext:Landroid/content/Context;

    const-string v0, "$appContext"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->INSTANCE:Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "autoStart"

    invoke-static {p0, p1}, Lcom/deepalhome/launcher/accessibility/AccessibilityManagerHelper;->scheduleAutoNaviServiceCheck(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/deepalhome/launcher/util/AutoStartAppUtil;->startState:Lcom/deepalhome/launcher/util/AutoStartAppUtil$StartState;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/deepalhome/launcher/util/AutoStartAppUtil$StartState;->Starting:Lcom/deepalhome/launcher/util/AutoStartAppUtil$StartState;

    sput-object p1, Lcom/deepalhome/launcher/util/AutoStartAppUtil;->startState:Lcom/deepalhome/launcher/util/AutoStartAppUtil$StartState;

    :goto_0
    sget-object p1, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;->INSTANCE:Lcom/deepalhome/launcher/util/CoreServiceCoordinator;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;->lastForegroundAt:J

    invoke-static {p0}, Lcom/deepalhome/launcher/util/CoreServiceCoordinator;->ensureServices(Landroid/content/Context;)V

    sget-object p1, Lcom/deepalhome/launcher/analytics/UmengInitializer;->INSTANCE:Lcom/deepalhome/launcher/analytics/UmengInitializer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/deepalhome/launcher/analytics/UmengInitializer;->requestInit(Landroid/content/Context;)V

    sget-object p1, Lcom/deepalhome/launcher/util/LogcatUtil;->INSTANCE:Lcom/deepalhome/launcher/util/LogcatUtil;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/LogcatUtil;->isRunning()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/deepalhome/launcher/util/LogcatUtil;->hasPermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1}, Lcom/deepalhome/launcher/util/LogcatUtil;->start()V

    :cond_1
    new-instance p0, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;

    const/16 p1, 0x1d

    invoke-direct {p0, p1}, Lcom/deepalhome/launcher/util/AppUtil$$ExternalSyntheticLambda1;-><init>(I)V

    sget-object p1, Lcom/deepalhome/launcher/util/AutoStartAppUtil;->initialAutoStartDelay$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/ThreadUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
