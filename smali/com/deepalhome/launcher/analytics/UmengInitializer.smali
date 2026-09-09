.class public final Lcom/deepalhome/launcher/analytics/UmengInitializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/deepalhome/launcher/analytics/UmengInitializer;

.field public static final handler:Landroid/os/Handler;

.field public static final initScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final initStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final minUptimeMs$delegate:Lkotlin/SynchronizedLazyImpl;

.field public static final retryDelayMs$delegate:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepalhome/launcher/analytics/UmengInitializer;

    invoke-direct {v0}, Lcom/deepalhome/launcher/analytics/UmengInitializer;-><init>()V

    sput-object v0, Lcom/deepalhome/launcher/analytics/UmengInitializer;->INSTANCE:Lcom/deepalhome/launcher/analytics/UmengInitializer;

    sget-object v0, Lcom/deepalhome/launcher/analytics/UmengInitializer$retryDelayMs$2;->INSTANCE:Lcom/deepalhome/launcher/analytics/UmengInitializer$retryDelayMs$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/analytics/UmengInitializer;->retryDelayMs$delegate:Lkotlin/SynchronizedLazyImpl;

    sget-object v0, Lcom/deepalhome/launcher/analytics/UmengInitializer$minUptimeMs$2;->INSTANCE:Lcom/deepalhome/launcher/analytics/UmengInitializer$minUptimeMs$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/SynchronizedLazyImpl;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/analytics/UmengInitializer;->minUptimeMs$delegate:Lkotlin/SynchronizedLazyImpl;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/deepalhome/launcher/analytics/UmengInitializer;->handler:Landroid/os/Handler;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/deepalhome/launcher/analytics/UmengInitializer;->initScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/deepalhome/launcher/analytics/UmengInitializer;->initStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static requestInit(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/analytics/UmengInitializer;->initStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/deepalhome/launcher/analytics/UmengInitializer;->initScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "getApplicationContext(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepalhome/launcher/analytics/UmengInitializer;->handler:Landroid/os/Handler;

    new-instance v1, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Landroidx/appcompat/app/AppCompatDelegate$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
