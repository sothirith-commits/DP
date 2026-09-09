.class public interface abstract Lcom/incall/serversdk/server/ISvrConnListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/server/ISvrConnListener$Default;,
        Lcom/incall/serversdk/server/ISvrConnListener$Stub;,
        Lcom/incall/serversdk/server/ISvrConnListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onSvrConnStatusChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
