.class Lcom/incall/serversdk/bluetooth/IPairingRequestListenerIMP;
.super Lcom/incall/serversdk/bluetooth/IPairingRequestListener$Stub;
.source "SourceFile"


# instance fields
.field private mIPairingRequestListener:Lcom/incall/serversdk/bluetooth/IPairingRequestListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/bluetooth/IPairingRequestListener;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/bluetooth/IPairingRequestListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/IPairingRequestListenerIMP;->mIPairingRequestListener:Lcom/incall/serversdk/bluetooth/IPairingRequestListener;

    return-void
.end method


# virtual methods
.method public onRquestPairState(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/IPairingRequestListenerIMP;->mIPairingRequestListener:Lcom/incall/serversdk/bluetooth/IPairingRequestListener;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/bluetooth/IPairingRequestListener;->onRquestPairState(Ljava/lang/String;I)V

    return-void
.end method
