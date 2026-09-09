.class public interface abstract Lcom/incall/serversdk/tbox/IBoxEventListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/tbox/IBoxEventListener$Default;,
        Lcom/incall/serversdk/tbox/IBoxEventListener$Stub;,
        Lcom/incall/serversdk/tbox/IBoxEventListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onGotBoxEvent(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
