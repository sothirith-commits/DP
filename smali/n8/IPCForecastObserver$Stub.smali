.class public abstract Ln8/IPCForecastObserver$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Ln8/IPCForecastObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tinnove.navi.skill.observer.IPCForecastObserver"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.tinnove.navi.skill.observer.IPCForecastObserver"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    sget-object p1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->isS05VoiceAutoNaviEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_3

    invoke-static {p0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->parseS05BasicPoiJson(Ljava/lang/String;)Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p1, "BasicPoi JSON parsing failed: "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p0, "BehaviorPrediction"

    invoke-virtual {p1, p2, p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->handleS05PoiFromSystem(Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$S05PoiResult;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "Received empty BasicPoi JSON, ignoring"

    invoke-static {p0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_4
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1
.end method
