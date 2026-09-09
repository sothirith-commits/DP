.class public final Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$1;

.field public final lifecycleToRequestManager:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/RequestManagerRetriever$1;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->lifecycleToRequestManager:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$1;

    return-void
.end method


# virtual methods
.method public final getOrCreate(Landroid/content/Context;Lcom/bumptech/glide/Glide;Landroidx/lifecycle/Lifecycle;Landroidx/fragment/app/FragmentManager;Z)Lcom/bumptech/glide/RequestManager;
    .locals 9

    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->lifecycleToRequestManager:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/RequestManager;

    if-nez v1, :cond_1

    new-instance v1, Lcom/bumptech/glide/manager/LifecycleLifecycle;

    invoke-direct {v1, p3}, Lcom/bumptech/glide/manager/LifecycleLifecycle;-><init>(Landroidx/lifecycle/Lifecycle;)V

    new-instance v5, Lcom/bumptech/glide/GlideBuilder$1;

    const/16 v2, 0xd

    invoke-direct {v5, v2, p0, p4}, Lcom/bumptech/glide/GlideBuilder$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;->factory:Lcom/bumptech/glide/manager/RequestManagerRetriever$1;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, Lcom/bumptech/glide/RequestManager;

    new-instance v6, Lcom/bumptech/glide/manager/RequestTracker;

    invoke-direct {v6}, Lcom/bumptech/glide/manager/RequestTracker;-><init>()V

    iget-object v7, p2, Lcom/bumptech/glide/Glide;->connectivityMonitorFactory:Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;

    move-object v2, p4

    move-object v3, p2

    move-object v4, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Lcom/bumptech/glide/manager/RequestTracker;Lcom/bumptech/glide/manager/DefaultConnectivityMonitorFactory;Landroid/content/Context;)V

    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;

    invoke-direct {p1, p0, p3}, Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever$1;-><init>(Lcom/bumptech/glide/manager/LifecycleRequestManagerRetriever;Landroidx/lifecycle/Lifecycle;)V

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/manager/LifecycleLifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    if-eqz p5, :cond_0

    invoke-virtual {p4}, Lcom/bumptech/glide/RequestManager;->onStart()V

    :cond_0
    move-object v1, p4

    :cond_1
    return-object v1
.end method
