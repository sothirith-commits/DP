.class public interface abstract Lcom/incall/serversdk/bluetooth/phone/IAudioChannelChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/phone/IAudioChannelChangeListener$Default;,
        Lcom/incall/serversdk/bluetooth/phone/IAudioChannelChangeListener$Stub;,
        Lcom/incall/serversdk/bluetooth/phone/IAudioChannelChangeListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onAudioChannelChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
