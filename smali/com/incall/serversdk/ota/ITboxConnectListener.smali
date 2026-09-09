.class public Lcom/incall/serversdk/ota/ITboxConnectListener;
.super Lcom/incall/serversdk/ota/ITboxConnectCallbackListener$Stub;
.source "SourceFile"


# instance fields
.field private mTboxConnectCallbackListener:Lcom/incall/serversdk/ota/ITboxConnectCallbackListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/ota/ITboxConnectCallbackListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/ota/ITboxConnectCallbackListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/ota/ITboxConnectListener;->mTboxConnectCallbackListener:Lcom/incall/serversdk/ota/ITboxConnectCallbackListener;

    return-void
.end method


# virtual methods
.method public onTboxConnect(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/ITboxConnectListener;->mTboxConnectCallbackListener:Lcom/incall/serversdk/ota/ITboxConnectCallbackListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/ITboxConnectCallbackListener;->onTboxConnect(I)V

    return-void
.end method

.method public onTboxVersionChanage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/ota/ITboxConnectListener;->mTboxConnectCallbackListener:Lcom/incall/serversdk/ota/ITboxConnectCallbackListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/ota/ITboxConnectCallbackListener;->onTboxVersionChanage(Ljava/lang/String;)V

    return-void
.end method
