.class public interface abstract Lcom/incall/serversdk/tbox/ITboxConnectListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/tbox/ITboxConnectListener$Default;,
        Lcom/incall/serversdk/tbox/ITboxConnectListener$Stub;,
        Lcom/incall/serversdk/tbox/ITboxConnectListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onTboxConnect(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
