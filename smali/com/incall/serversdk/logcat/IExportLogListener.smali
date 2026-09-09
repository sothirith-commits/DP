.class public interface abstract Lcom/incall/serversdk/logcat/IExportLogListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/logcat/IExportLogListener$Default;,
        Lcom/incall/serversdk/logcat/IExportLogListener$Stub;,
        Lcom/incall/serversdk/logcat/IExportLogListener$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract doExport()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
