.class Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicIistenerIMP;
.super Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener$Stub;
.source "SourceFile"


# instance fields
.field private mIBluetoothMusicListener:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;


# direct methods
.method public constructor <init>(Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicIistenerIMP;->mIBluetoothMusicListener:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    return-void
.end method


# virtual methods
.method public onBluetoothA2DPConnectStatusChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicIistenerIMP;->mIBluetoothMusicListener:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    invoke-interface {p0, p1}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothA2DPConnectStatusChanged(I)V

    return-void
.end method

.method public onBluetoothA2dpStateChanage(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicIistenerIMP;->mIBluetoothMusicListener:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothA2dpStateChanage(II)V

    return-void
.end method

.method public onBluetoothAvrcpPositionChanged(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicIistenerIMP;->mIBluetoothMusicListener:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothAvrcpPositionChanged(J)V

    return-void
.end method

.method public onBluetoothAvrcpStateChanage(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicIistenerIMP;->mIBluetoothMusicListener:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothAvrcpStateChanage(II)V

    return-void
.end method

.method public onBluetoothMediaInfoChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicIistenerIMP;->mIBluetoothMusicListener:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothMediaInfoChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onBluetoothMusicStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicIistenerIMP;->mIBluetoothMusicListener:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothMusicStart()V

    return-void
.end method

.method public onBluetoothMusicStop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicIistenerIMP;->mIBluetoothMusicListener:Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;

    invoke-interface {p0}, Lcom/incall/serversdk/bluetooth/music/IBluetoothMusicListener;->onBluetoothMusicStop()V

    return-void
.end method
