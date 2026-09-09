.class Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;
.super Lcom/incall/serversdk/server/ISvrConnListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/base/BaseProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SvrConnListener"
.end annotation


# instance fields
.field final this$0:Lcom/incall/serversdk/base/BaseProxy;


# direct methods
.method private constructor <init>(Lcom/incall/serversdk/base/BaseProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;->this$0:Lcom/incall/serversdk/base/BaseProxy;

    invoke-direct {p0}, Lcom/incall/serversdk/server/ISvrConnListener$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/incall/serversdk/base/BaseProxy;Lcom/incall/serversdk/base/BaseProxy$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;-><init>(Lcom/incall/serversdk/base/BaseProxy;)V

    return-void
.end method


# virtual methods
.method public onSvrConnStatusChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;->this$0:Lcom/incall/serversdk/base/BaseProxy;

    invoke-static {v0}, Lcom/incall/serversdk/base/BaseProxy;->access$100(Lcom/incall/serversdk/base/BaseProxy;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSvrConnStatusChanged: isConnected = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;->this$0:Lcom/incall/serversdk/base/BaseProxy;

    invoke-static {v0, p1}, Lcom/incall/serversdk/base/BaseProxy;->access$202(Lcom/incall/serversdk/base/BaseProxy;Z)Z

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;->this$0:Lcom/incall/serversdk/base/BaseProxy;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/incall/serversdk/base/BaseProxy;->access$302(Lcom/incall/serversdk/base/BaseProxy;I)I

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;->this$0:Lcom/incall/serversdk/base/BaseProxy;

    invoke-virtual {v0}, Lcom/incall/serversdk/base/BaseProxy;->getInterface()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, v0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;->this$0:Lcom/incall/serversdk/base/BaseProxy;

    invoke-static {v0}, Lcom/incall/serversdk/base/BaseProxy;->access$400(Lcom/incall/serversdk/base/BaseProxy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/incall/serversdk/base/BaseProxy;->access$302(Lcom/incall/serversdk/base/BaseProxy;I)I

    iget-object v0, p0, Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;->this$0:Lcom/incall/serversdk/base/BaseProxy;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/incall/serversdk/base/BaseProxy;->mInterface:Ljava/lang/Object;

    :goto_0
    iget-object p0, p0, Lcom/incall/serversdk/base/BaseProxy$SvrConnListener;->this$0:Lcom/incall/serversdk/base/BaseProxy;

    invoke-static {p0, p1}, Lcom/incall/serversdk/base/BaseProxy;->access$500(Lcom/incall/serversdk/base/BaseProxy;Z)V

    return-void
.end method
