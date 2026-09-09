.class public interface abstract Lcom/incall/serversdk/hicar/IHiCarListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/hicar/IHiCarListener$Default;,
        Lcom/incall/serversdk/hicar/IHiCarListener$Stub;,
        Lcom/incall/serversdk/hicar/IHiCarListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onStatusChange(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
