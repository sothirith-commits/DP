.class public final Lcom/koushikdutta/async/AsyncServer$8;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/koushikdutta/async/AsyncServer;

.field public final synthetic val$queue:Ljava/util/PriorityQueue;

.field public final synthetic val$selector:Lcom/koushikdutta/async/SelectorWrapper;


# direct methods
.method public constructor <init>(Lcom/koushikdutta/async/AsyncServer;Ljava/lang/String;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    .locals 0

    iput-object p1, p0, Lcom/koushikdutta/async/AsyncServer$8;->this$0:Lcom/koushikdutta/async/AsyncServer;

    iput-object p3, p0, Lcom/koushikdutta/async/AsyncServer$8;->val$selector:Lcom/koushikdutta/async/SelectorWrapper;

    iput-object p4, p0, Lcom/koushikdutta/async/AsyncServer$8;->val$queue:Ljava/util/PriorityQueue;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/koushikdutta/async/AsyncServer$8;->this$0:Lcom/koushikdutta/async/AsyncServer;

    :try_start_0
    sget-object v1, Lcom/koushikdutta/async/AsyncServer;->threadServer:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/koushikdutta/async/AsyncServer$8;->val$selector:Lcom/koushikdutta/async/SelectorWrapper;

    iget-object p0, p0, Lcom/koushikdutta/async/AsyncServer$8;->val$queue:Ljava/util/PriorityQueue;

    invoke-static {v0, v2, p0}, Lcom/koushikdutta/async/AsyncServer;->access$800(Lcom/koushikdutta/async/AsyncServer;Lcom/koushikdutta/async/SelectorWrapper;Ljava/util/PriorityQueue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    return-void

    :catchall_0
    move-exception p0

    sget-object v0, Lcom/koushikdutta/async/AsyncServer;->threadServer:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    throw p0
.end method
