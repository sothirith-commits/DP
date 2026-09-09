.class Lcom/incall/serversdk/base/BaseProxy$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/base/BaseProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/incall/serversdk/base/BaseProxy;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/base/BaseProxy;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/base/BaseProxy$1;->this$0:Lcom/incall/serversdk/base/BaseProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy$1;->this$0:Lcom/incall/serversdk/base/BaseProxy;

    invoke-virtual {v0}, Lcom/incall/serversdk/base/BaseProxy;->reRegisterCallBacks()V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
