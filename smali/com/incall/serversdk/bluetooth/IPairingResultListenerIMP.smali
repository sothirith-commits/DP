.class Lcom/incall/serversdk/bluetooth/IPairingResultListenerIMP;
.super Lcom/incall/serversdk/bluetooth/IPairingResultListener$Stub;
.source "SourceFile"


# instance fields
.field private mIPairingResultListener:Lcom/incall/serversdk/bluetooth/IPairingResultListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/bluetooth/IPairingResultListener;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/bluetooth/IPairingResultListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/IPairingResultListenerIMP;->mIPairingResultListener:Lcom/incall/serversdk/bluetooth/IPairingResultListener;

    return-void
.end method


# virtual methods
.method public onResultPairState(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/IPairingResultListenerIMP;->mIPairingResultListener:Lcom/incall/serversdk/bluetooth/IPairingResultListener;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/bluetooth/IPairingResultListener;->onResultPairState(Ljava/lang/String;I)V

    return-void
.end method
