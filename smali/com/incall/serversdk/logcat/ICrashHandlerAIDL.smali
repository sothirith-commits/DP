.class public interface abstract Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/logcat/ICrashHandlerAIDL$Default;,
        Lcom/incall/serversdk/logcat/ICrashHandlerAIDL$Stub;,
        Lcom/incall/serversdk/logcat/ICrashHandlerAIDL$Stub$Proxy;
    }
.end annotation


# virtual methods
.method public abstract crashReportWithLabel(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract exportLogFiles(Lcom/incall/serversdk/logcat/IExportLogListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract reportLogFiles(JJLcom/incall/serversdk/logcat/ILogReportCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
