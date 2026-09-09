.class public final Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

.field public final synthetic val$activity:Landroid/app/Activity;

.field public final synthetic val$listener:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;


# direct methods
.method public synthetic constructor <init>(Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;Landroid/app/Activity;Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;I)V
    .locals 0

    iput p4, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;->$r8$classId:I

    iput-object p1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;->this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    iput-object p2, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;->val$listener:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;->this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    iget-object v0, v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;->val$listener:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;->this$0:Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;

    iget-object v0, v0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl;->mActivityLifecycleCallbacksMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object p0, p0, Lcom/blankj/utilcode/util/UtilsActivityLifecycleImpl$1;->val$listener:Lcom/blankj/utilcode/util/Utils$ActivityLifecycleCallbacks;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
