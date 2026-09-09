.class public interface abstract Lcom/incall/serversdk/hicar/IHiCarManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/hicar/IHiCarManager$Default;,
        Lcom/incall/serversdk/hicar/IHiCarManager$Stub;,
        Lcom/incall/serversdk/hicar/IHiCarManager$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract closeVoice()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract disConnectDevice()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getPhoneName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isConnected()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerHiCarListener(Lcom/incall/serversdk/hicar/IHiCarListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerHiCarVoiceFreeListener(Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterHiCarListener(Lcom/incall/serversdk/hicar/IHiCarListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unRegisterHiCarVoiceFreeListener(Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
