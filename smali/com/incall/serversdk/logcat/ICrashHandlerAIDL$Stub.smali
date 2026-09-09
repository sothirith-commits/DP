.class public abstract Lcom/incall/serversdk/logcat/ICrashHandlerAIDL$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/logcat/ICrashHandlerAIDL$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.incall.serversdk.logcat.ICrashHandlerAIDL"

.field static final TRANSACTION_crashReportWithLabel:I = 0x1

.field static final TRANSACTION_exportLogFiles:I = 0x3

.field static final TRANSACTION_reportLogFiles:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.incall.serversdk.logcat.ICrashHandlerAIDL"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.incall.serversdk.logcat.ICrashHandlerAIDL"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;

    return-object v0

    :cond_1
    new-instance v0, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;)Z
    .locals 1

    sget-object v0, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL$Stub$Proxy;->sDefaultImpl:Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const-string v1, "com.incall.serversdk.logcat.ICrashHandlerAIDL"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/logcat/IExportLogListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/logcat/IExportLogListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;->exportLogFiles(Lcom/incall/serversdk/logcat/IExportLogListener;)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/incall/serversdk/logcat/ILogReportCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/incall/serversdk/logcat/ILogReportCallback;

    move-result-object v8

    move-object v3, p0

    invoke-interface/range {v3 .. v8}, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;->reportLogFiles(JJLcom/incall/serversdk/logcat/ILogReportCallback;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/incall/serversdk/logcat/ICrashHandlerAIDL;->crashReportWithLabel(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2
.end method
