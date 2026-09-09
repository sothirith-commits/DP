.class public interface abstract Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener$Default;,
        Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener$Stub;,
        Lcom/incall/serversdk/tbox/ITboxDiagnosticLinstener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract onChanager(Lcom/incall/serversdk/tbox/TboxDiagnosticInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
