.class public interface abstract Lcom/incall/serversdk/logcat/ILogReportCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/logcat/ILogReportCallback$Default;,
        Lcom/incall/serversdk/logcat/ILogReportCallback$Stub;,
        Lcom/incall/serversdk/logcat/ILogReportCallback$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract logReportStatus(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
