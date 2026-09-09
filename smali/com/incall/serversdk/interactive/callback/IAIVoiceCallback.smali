.class public interface abstract Lcom/incall/serversdk/interactive/callback/IAIVoiceCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/interactive/callback/IAIVoiceCallback$Default;,
        Lcom/incall/serversdk/interactive/callback/IAIVoiceCallback$Stub;,
        Lcom/incall/serversdk/interactive/callback/IAIVoiceCallback$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onVoiceStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
