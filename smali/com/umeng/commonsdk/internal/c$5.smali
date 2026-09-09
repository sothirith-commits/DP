.class public final Lcom/umeng/commonsdk/internal/c$5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/umeng/commonsdk/internal/c;


# direct methods
.method public constructor <init>(Lcom/umeng/commonsdk/internal/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/internal/c$5;->a:Lcom/umeng/commonsdk/internal/c;

    return-void
.end method


# virtual methods
.method public final onMessageSend()V
    .locals 4

    iget-object v0, p0, Lcom/umeng/commonsdk/internal/c$5;->a:Lcom/umeng/commonsdk/internal/c;

    iget-object v0, v0, Lcom/umeng/commonsdk/internal/c;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/umeng/commonsdk/internal/b;->a(Landroid/content/Context;)Lcom/umeng/commonsdk/internal/b;

    move-result-object v1

    iget-object v1, v1, Lcom/umeng/commonsdk/internal/b;->c:Lcom/umeng/commonsdk/internal/c;

    const/4 v2, 0x0

    const v3, 0x8016

    invoke-static {v0, v3, v1, v2}, Lcom/umeng/commonsdk/framework/UMWorkDispatch;->sendEvent(Landroid/content/Context;ILcom/umeng/commonsdk/framework/UMLogDataProtocol;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/umeng/commonsdk/UMConfigureImpl;->a:Ljava/lang/String;

    const-class v0, Lcom/umeng/commonsdk/UMConfigureImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/umeng/commonsdk/UMConfigureImpl;->b:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :catch_0
    :cond_1
    :goto_0
    monitor-exit v0

    return-void
.end method
