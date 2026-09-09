.class public interface abstract Lcom/incall/serversdk/tbox/ITboxSingalListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/tbox/ITboxSingalListener$Default;,
        Lcom/incall/serversdk/tbox/ITboxSingalListener$Stub;,
        Lcom/incall/serversdk/tbox/ITboxSingalListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract singalChangeCallBack(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
