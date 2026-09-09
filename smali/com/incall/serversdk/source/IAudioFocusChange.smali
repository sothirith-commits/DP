.class public interface abstract Lcom/incall/serversdk/source/IAudioFocusChange;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/source/IAudioFocusChange$Default;,
        Lcom/incall/serversdk/source/IAudioFocusChange$Stub;,
        Lcom/incall/serversdk/source/IAudioFocusChange$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onAudioFocusChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
