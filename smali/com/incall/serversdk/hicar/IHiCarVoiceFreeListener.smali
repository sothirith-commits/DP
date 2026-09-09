.class public interface abstract Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener$Default;,
        Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener$Stub;,
        Lcom/incall/serversdk/hicar/IHiCarVoiceFreeListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onVoiceStatusChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
