.class public interface abstract Lcom/incall/serversdk/tbox/IRmtJobListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/tbox/IRmtJobListener$Default;,
        Lcom/incall/serversdk/tbox/IRmtJobListener$Stub;,
        Lcom/incall/serversdk/tbox/IRmtJobListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onRevRmtJob(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
