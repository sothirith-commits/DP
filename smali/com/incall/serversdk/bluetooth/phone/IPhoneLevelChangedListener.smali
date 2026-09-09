.class public interface abstract Lcom/incall/serversdk/bluetooth/phone/IPhoneLevelChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/bluetooth/phone/IPhoneLevelChangedListener$Default;,
        Lcom/incall/serversdk/bluetooth/phone/IPhoneLevelChangedListener$Stub;,
        Lcom/incall/serversdk/bluetooth/phone/IPhoneLevelChangedListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onLevelChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
