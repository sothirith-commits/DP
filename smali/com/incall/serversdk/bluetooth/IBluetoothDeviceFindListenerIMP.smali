.class Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListenerIMP;
.super Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener$Stub;
.source "SourceFile"


# instance fields
.field private mIBluetoothDeviceFindListener:Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListenerIMP;->mIBluetoothDeviceFindListener:Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener;

    return-void
.end method


# virtual methods
.method public onFindDevice(Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListenerIMP;->mIBluetoothDeviceFindListener:Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/IBluetoothDeviceFindListener;->onFindDevice(Lcom/incall/serversdk/bluetooth/BluetoothDeviceInfo;)V

    return-void
.end method
