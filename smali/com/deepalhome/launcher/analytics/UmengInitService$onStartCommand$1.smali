.class public final Lcom/deepalhome/launcher/analytics/UmengInitService$onStartCommand$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $startId:I

.field final synthetic this$0:Lcom/deepalhome/launcher/analytics/UmengInitService;


# direct methods
.method public constructor <init>(Lcom/deepalhome/launcher/analytics/UmengInitService;I)V
    .locals 0

    iput-object p1, p0, Lcom/deepalhome/launcher/analytics/UmengInitService$onStartCommand$1;->this$0:Lcom/deepalhome/launcher/analytics/UmengInitService;

    iput p2, p0, Lcom/deepalhome/launcher/analytics/UmengInitService$onStartCommand$1;->$startId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/deepalhome/launcher/analytics/UmengInitService$onStartCommand$1;->this$0:Lcom/deepalhome/launcher/analytics/UmengInitService;

    :try_start_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/umeng/commonsdk/UMConfigure;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    :try_start_1
    sput v2, Lcom/umeng/commonsdk/UMConfigure;->preInitInvokedFlag:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->preInitInternal(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/commonsdk/UMConfigure;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/umeng/commonsdk/UMConfigure;->setLogEnabled()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    :goto_1
    iget-object v0, p0, Lcom/deepalhome/launcher/analytics/UmengInitService$onStartCommand$1;->this$0:Lcom/deepalhome/launcher/analytics/UmengInitService;

    iget p0, p0, Lcom/deepalhome/launcher/analytics/UmengInitService$onStartCommand$1;->$startId:I

    invoke-virtual {v0, p0}, Landroid/app/Service;->stopSelf(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
