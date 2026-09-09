.class public final Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$4;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string p1, "service_name"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    sget-object p1, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient;->sEngineLifecycleCallback:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tinnove/renderclient/ClientRenderControl$15;

    if-eqz p1, :cond_2

    const-string p2, "com.cocos.remoterender.ENGINE_LAUNCHED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iget-object p1, p1, Lcom/tinnove/renderclient/ClientRenderControl$15;->this$0:Lcom/tinnove/renderclient/ClientRenderControl;

    if-eqz p2, :cond_0

    iget-object p0, p1, Lcom/tinnove/renderclient/ClientRenderControl;->mListener:Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;->onEngineLaunched()V

    goto :goto_0

    :cond_0
    const-string p2, "com.cocos.remoterender.ENGINE_SHUTDOWN"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p1, Lcom/tinnove/renderclient/ClientRenderControl;->mListener:Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;

    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/tinnove/renderclient/ClientRenderControl$ClientRenderListener;->onEngineShutdown()V

    goto :goto_0

    :cond_1
    const-string p1, "Unknown action: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "CocosRemoteRenderClient"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
