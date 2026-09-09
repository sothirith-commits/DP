.class Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListenerIMP;
.super Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener$Stub;
.source "SourceFile"


# instance fields
.field private mIBluetoothConnectChangedListener:Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListenerIMP;->mIBluetoothConnectChangedListener:Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener;

    return-void
.end method


# virtual methods
.method public onBluetoothConnectChange(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListenerIMP;->mIBluetoothConnectChangedListener:Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothConnectChangedListener;->onBluetoothConnectChange(I)V

    return-void
.end method
