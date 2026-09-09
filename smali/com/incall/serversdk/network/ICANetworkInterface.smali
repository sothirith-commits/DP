.class public interface abstract Lcom/incall/serversdk/network/ICANetworkInterface;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/network/ICANetworkInterface$Default;,
        Lcom/incall/serversdk/network/ICANetworkInterface$Stub;,
        Lcom/incall/serversdk/network/ICANetworkInterface$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract downloadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/incall/serversdk/network/callback/IRequestCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getAppAuthStateByAppId(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getFoundationServiceState()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIOVOpenHost()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNetworkState()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getToken()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getUCSHost()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registNetworkStateListener(Lcom/incall/serversdk/network/callback/INetworkStateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestAppAuthorise(Lcom/incall/serversdk/network/callback/IAppAuthCallBack;Lcom/incall/serversdk/network/bean/AppAuthRequestParam;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestHeaderAndDownloadFileFromInCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/incall/serversdk/network/callback/IRequestCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestInCallNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/incall/serversdk/network/callback/IRequestCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestInCallNetworkWithParamsObject(Lcom/incall/serversdk/network/callback/IRequestCallBack;Lcom/incall/serversdk/network/bean/NetworkRequestParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestNet(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/incall/serversdk/network/callback/IRequestCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestNetWithParamsObject(Lcom/incall/serversdk/network/callback/IRequestCallBack;Lcom/incall/serversdk/network/bean/NetworkRequestParams;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract requestSystemAuthorise(Lcom/incall/serversdk/network/callback/ISystemAuthCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setEnviroment(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showAutoDismissDialogWithStatus(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showAutoDismissDialogWithType(Lcom/incall/serversdk/network/define/DialogType;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showConfirmDialogWithStatus(Ljava/lang/String;Lcom/incall/serversdk/network/callback/ICAVehicleNetworkConfirmCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract showConfirmDialogWithType(Lcom/incall/serversdk/network/define/DialogType;Lcom/incall/serversdk/network/callback/ICAVehicleNetworkConfirmCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregistNetworkStateListener(Lcom/incall/serversdk/network/callback/INetworkStateListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract uploadFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/incall/serversdk/network/callback/IRequestCallBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
