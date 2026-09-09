.class public interface abstract Lcom/incall/serversdk/power/IScreenStateListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/power/IScreenStateListener$Default;,
        Lcom/incall/serversdk/power/IScreenStateListener$Stub;,
        Lcom/incall/serversdk/power/IScreenStateListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onWelScreenStateChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
