.class public abstract Ln8/IPCGuideInfoObserver$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Ln8/IPCGuideInfoObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public final onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22

    move/from16 v0, p1

    move-object/from16 v1, p2

    const v2, 0x5f4e5446

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    move-object/from16 v2, p3

    invoke-virtual {v2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :cond_0
    move-object/from16 v2, p3

    const/4 v4, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x29

    packed-switch v0, :pswitch_data_0

    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    :pswitch_0
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Received GuideInfo.onNaviRemainDistance value="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    sget v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastNaviProgressPercent:F

    cmpg-float v2, v0, v4

    if-ltz v2, :cond_2

    cmpg-float v2, v1, v4

    if-lez v2, :cond_2

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    div-float v1, v0, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v12, 0x0

    :goto_1
    const-string v1, ", progressPercent="

    if-eqz v12, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "[Remaining battery] "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v6

    if-nez v6, :cond_4

    cmpg-float v4, v5, v4

    if-gez v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%.1f%%"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    :goto_2
    const-string v4, "Unknown"

    :goto_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " (raw="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastNaviProgressPercent:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "[Remaining battery] Cannot infer from current progress (raw="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastNaviProgressPercent:F

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :goto_4
    return v3

    :pswitch_1
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Received GuideInfo.onNaviPathInfo payload="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return v3

    :pswitch_2
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Received GuideInfo.onNaviProgress percent="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", payload="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    cmpl-float v4, v0, v4

    if-lez v4, :cond_6

    sput v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->lastNaviProgressPercent:F

    :cond_6
    if-eqz v1, :cond_b

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_9

    :cond_7
    :try_start_0
    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "pathID"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    cmp-long v0, v0, v8

    if-lez v0, :cond_8

    goto :goto_5

    :cond_8
    const/4 v4, 0x0

    :goto_5
    if-eqz v4, :cond_9

    invoke-virtual {v4}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    goto :goto_6

    :cond_9
    const/4 v0, 0x0

    goto :goto_7

    :goto_6
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_7
    instance-of v1, v0, Lkotlin/Result$Failure;

    if-eqz v1, :cond_a

    const/4 v12, 0x0

    goto :goto_8

    :cond_a
    move-object v12, v0

    :goto_8
    check-cast v12, Ljava/lang/String;

    goto :goto_a

    :cond_b
    :goto_9
    const/4 v12, 0x0

    :goto_a
    const-string v0, "GuideInfo.onNaviProgress"

    invoke-static {v2, v0, v12}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->access$queryS05CurrentDestination(Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :pswitch_3
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Received GuideInfo.onEnlargedIntersectionInfo payload="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return v3

    :pswitch_4
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const-string v1, "Received GuideInfo.onCrossImageNeedHide"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return v3

    :pswitch_5
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    return v3

    :pswitch_6
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const-string v1, "Received GuideInfo.onLaneLineNeedHide"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return v3

    :pswitch_7
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Received GuideInfo.onLaneLineInfo payload="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return v3

    :pswitch_8
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Received GuideInfo.onServiceAreaInfo payload="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return v3

    :pswitch_9
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Received GuideInfo.onElectronicEyeInfo payload="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return v3

    :pswitch_a
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    sget-object v4, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const-string v5, "Received GuideInfo.onSpeedLimitInfo type="

    const-string v6, ", extra="

    const-string v7, ", payload="

    invoke-static {v0, v1, v5, v6, v7}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    return v3

    :pswitch_b
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v13, "Received GuideInfo.onNaviInfo payload="

    invoke-direct {v4, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    const-string v1, ""

    const-string v4, ", via points remaining="

    const-string v13, "(icon="

    const-string v14, "(action="

    const-string v15, "Enter"

    const-string v12, ", ahead"

    const-string v11, ", intersection distance="

    const-string v10, ", turn icon="

    const-string v8, ", next intersection="

    const-string v9, ", current road="

    const-string v3, ", arrival remaining battery="

    const-string v5, ", expected"

    const-string v6, " remaining"

    if-eqz v0, :cond_1c

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    goto/16 :goto_12

    :cond_c
    :try_start_1
    sget v7, Lkotlin/Result;->$r8$clinit:I

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[Navigation information]"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "routeRemain"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 p0, v4

    const-string v4, "distance"

    if-eqz v2, :cond_d

    move-object/from16 p1, v13

    move-object/from16 p2, v14

    const-wide/16 v13, -0x1

    :try_start_2
    invoke-virtual {v2, v4, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v18

    move-object/from16 p4, v15

    const-string v15, "time"

    invoke-virtual {v2, v15, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v20

    const-string v13, "chargeLeft"

    const/4 v14, -0x1

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v18 .. v19}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Distance(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2f

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static/range {v20 .. v21}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Duration(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v20 .. v21}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05ArrivalTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Arrive"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ltz v2, :cond_e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :catchall_1
    move-exception v0

    goto/16 :goto_10

    :cond_d
    move-object/from16 p1, v13

    move-object/from16 p2, v14

    move-object/from16 p4, v15

    :cond_e
    :goto_b
    const-string v2, "currentRoadName"

    invoke-virtual {v7, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v2}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v5, 0x1

    xor-int/2addr v3, v5

    if-eqz v3, :cond_f

    invoke-virtual {v9, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v2, "panelData"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v3, "turnIcon"

    if-eqz v2, :cond_12

    :try_start_3
    const-string v5, "nextRouteName"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v6

    const/4 v13, 0x1

    xor-int/2addr v6, v13

    if-eqz v6, :cond_10

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    if-ltz v9, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    const-string v5, "segmentRemain"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_12

    const-wide/16 v5, -0x1

    invoke-virtual {v2, v4, v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    const-wide/16 v5, 0x0

    cmp-long v2, v8, v5

    if-ltz v2, :cond_12

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Distance(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    const-string v2, "nextCrossInfo"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lez v5, :cond_1a

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_13

    const-string v5, "roadName"

    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v16, v5

    goto :goto_c

    :cond_13
    const/16 v16, 0x0

    :goto_c
    if-nez v16, :cond_14

    goto :goto_d

    :cond_14
    move-object/from16 v1, v16

    :goto_d
    if-eqz v2, :cond_15

    const-string v5, "mainAction"

    const/4 v6, -0x1

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v5, v17

    goto :goto_e

    :cond_15
    const/4 v6, -0x1

    move v5, v6

    :goto_e
    if-eqz v2, :cond_16

    invoke-virtual {v2, v3, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    goto :goto_f

    :cond_16
    const/4 v3, -0x1

    :goto_f
    if-eqz v2, :cond_17

    const-string v6, "carToSegment"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_17

    const-wide/16 v8, -0x1

    invoke-virtual {v2, v4, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8, v9}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Distance(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    if-eqz v2, :cond_18

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    if-ltz v5, :cond_19

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    if-ltz v3, :cond_1a

    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    const-string v1, "viaRemain"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v3, p0

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x4e2a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_11

    :goto_10
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_11
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1c

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Navigation information] Parse failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :cond_1c
    :goto_12
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    const/4 v1, 0x1

    return v1

    :pswitch_c
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received GuideInfo.onTrafficInfo payload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :pswitch_d
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received GuideInfo.onRemainInfo payload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    const-string v1, " Unrecognized structure, raw: "

    const-string v2, ", remaining battery="

    const-string v3, ", time="

    const-string v4, " distance="

    if-eqz v0, :cond_22

    invoke-static {v0}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1d

    goto/16 :goto_16

    :cond_1d
    :try_start_4
    sget v5, Lkotlin/Result;->$r8$clinit:I

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "distance"

    const-wide/16 v7, -0x1

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    const-string v6, "time"

    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    const-string v8, "chargeLeft"

    const/4 v11, -0x1

    invoke-virtual {v5, v8, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v11, "[Remaining information]"

    invoke-direct {v8, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-wide/16 v11, 0x0

    cmp-long v13, v9, v11

    if-ltz v13, :cond_1e

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "m("

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9, v10}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Distance(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    const-wide/16 v9, 0x0

    goto :goto_13

    :catchall_2
    move-exception v0

    goto :goto_14

    :goto_13
    cmp-long v4, v6, v9

    if-ltz v4, :cond_1f

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "s("

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Duration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1f
    if-ltz v5, :cond_20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    if-gez v13, :cond_21

    if-gez v4, :cond_21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_21
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString(...)"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_15

    :goto_14
    sget v1, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_15
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_22

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Remaining information] Parse failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :cond_22
    :goto_16
    const/4 v1, 0x1

    return v1

    :pswitch_e
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Received GuideInfo.onTurnInfo type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", payload="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :pswitch_f
    const-string v2, "Arrive at destination"

    goto :goto_17

    :pswitch_10
    const-string v2, "Arrive at waypoint"

    goto :goto_17

    :pswitch_11
    const-string v2, "Turn right around"

    goto :goto_17

    :pswitch_12
    const-string v2, "Turn left around"

    goto :goto_17

    :pswitch_13
    const-string v2, "Right rear"

    goto :goto_17

    :pswitch_14
    const-string v2, "Left rear"

    goto :goto_17

    :pswitch_15
    const-string v2, "Right front"

    goto :goto_17

    :pswitch_16
    const-string v2, "Left front"

    goto :goto_17

    :pswitch_17
    const-string v2, "Turn right"

    goto :goto_17

    :pswitch_18
    const-string v2, "Turn left"

    goto :goto_17

    :pswitch_19
    const-string v2, "Go straight"

    goto :goto_17

    :pswitch_1a
    const-string v2, "None"

    :goto_17
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[Turn information] Type="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x28

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "), payload="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :pswitch_1b
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received GuideInfo.onNextRoadName payload="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    const-string v0, ", subsequent segments="

    const-string v2, ", first segment state="

    const-string v3, ", first segment time="

    const-string v4, ", first segment distance="

    const-string v5, ", remainLen="

    const-string v6, " type="

    if-eqz v1, :cond_2d

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_23

    goto/16 :goto_1e

    :cond_23
    :try_start_5
    sget v7, Lkotlin/Result;->$r8$clinit:I

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "MessageType"

    const/4 v9, -0x1

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "remainLen"

    const-wide/16 v10, -0x1

    invoke-virtual {v7, v9, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v12

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[Next road information]"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ltz v8, :cond_24

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_24
    const-wide/16 v10, 0x0

    goto :goto_18

    :catchall_3
    move-exception v0

    goto/16 :goto_1c

    :goto_18
    cmp-long v6, v12, v10

    if-ltz v6, :cond_25

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v12, v13}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Distance(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_25
    const-string v5, "infoList"

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    if-eqz v5, :cond_2c

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_2c

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_26

    const-string v7, "length"

    const-wide/16 v13, -0x1

    invoke-virtual {v6, v7, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    goto :goto_19

    :cond_26
    const-wide/16 v13, -0x1

    move-wide v7, v13

    :goto_19
    if-eqz v6, :cond_27

    const-string v10, "timeOfSeconds"

    invoke-virtual {v6, v10, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    move-wide v13, v10

    :cond_27
    if-eqz v6, :cond_28

    const-string v10, "state"

    const/4 v11, -0x1

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move v11, v6

    :goto_1a
    const-wide/16 v15, 0x0

    goto :goto_1b

    :cond_28
    const/4 v11, -0x1

    goto :goto_1a

    :goto_1b
    cmp-long v6, v7, v15

    if-ltz v6, :cond_29

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v8}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Distance(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    const-wide/16 v6, 0x0

    cmp-long v4, v13, v6

    if-ltz v4, :cond_2a

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v13, v14}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Duration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2a
    if-ltz v11, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x6bb5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2c
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "toString(...)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1d

    :goto_1c
    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_1d
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2d

    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[Next road information] Non-JSON format: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->formatS05Payload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    :cond_2d
    :goto_1e
    const/4 v2, 0x1

    return v2

    :pswitch_1c
    move v2, v3

    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p0

    check-cast v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$guideInfoObserver$1;

    invoke-virtual {v1, v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge$guideInfoObserver$1;->onRouteInfoChanged(Ljava/lang/String;)V

    return v2

    :pswitch_1d
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Received GuideInfo.onNaviModeChanged value="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :pswitch_1e
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    const-string v0, "[S05] Targeted exit navigation broadcast package="

    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const-string v2, "Received GuideInfo.onNaviStop, exiting navigation"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    sget-object v2, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    sput-boolean v2, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->isNavigating:Z

    const-string v2, ""

    sput-object v2, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastPrimaryLine:Ljava/lang/String;

    sput-object v2, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastSecondaryLine:Ljava/lang/String;

    sput-object v2, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->lastRenderedText:Ljava/lang/String;

    sget-object v2, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager$onNaviStop$1;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager$onNaviStop$1;

    invoke-static {v2}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    monitor-enter v1

    :try_start_6
    sget-boolean v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ignoreNextSystemNaviStop:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    if-nez v2, :cond_31

    monitor-exit v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->resetS05GuideState()V

    invoke-static {}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->isS05VoiceAutoNaviEnabled()Z

    move-result v1

    if-nez v1, :cond_2f

    :cond_2e
    :goto_1f
    const/4 v1, 0x1

    goto/16 :goto_21

    :cond_2f
    sget-object v1, Lcom/deepalhome/launcher/util/s05/navi/MapIntentRouter;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/MapIntentRouter;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/deepalhome/launcher/config/ConfigManager;->INSTANCE:Lcom/deepalhome/launcher/config/ConfigManager;

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/ConfigManager;->getUserConfig()Lcom/deepalhome/launcher/config/UserConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepalhome/launcher/config/UserConfig;->getSelectedMapAppPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "MapIntentRouter"

    if-nez v2, :cond_30

    sget-object v0, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    const-string v1, "[S05] No map package configured, falling back to default exit navigation broadcast"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->exitNavi()V

    goto :goto_1f

    :cond_30
    new-instance v2, Landroid/content/Intent;

    const-string v4, "AUTONAVI_STANDARD_BROADCAST_RECV"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "KEY_TYPE"

    const/16 v5, 0x271a

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_7
    sget v4, Lkotlin/Result;->$r8$clinit:I

    sget-object v4, Lcom/blankj/utilcode/util/ThreadUtils;->HANDLER:Landroid/os/Handler;

    sget-object v5, Lcom/deepalhome/launcher/util/s05/navi/MapIntentRouter;->returnToAppRunnable:Lcom/deepalhome/launcher/util/LogcatUtil$$ExternalSyntheticLambda0;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v2, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v0}, Lcom/deepalhome/launcher/util/DebugLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_20

    :catchall_4
    move-exception v0

    sget v2, Lkotlin/Result;->$r8$clinit:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->createFailure(Ljava/lang/Throwable;)Lkotlin/Result$Failure;

    move-result-object v0

    :goto_20
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2e

    sget-object v2, Lcom/deepalhome/launcher/util/DebugLogger;->INSTANCE:Lcom/deepalhome/launcher/util/DebugLogger;

    const-string v3, "[S05] Targeted exit navigation broadcast failed package="

    const-string v4, ", error="

    invoke-static {v3, v1, v4}, Landroid/sun/security/x509/AVA$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MapIntentRouter"

    invoke-static {v2, v1, v0}, Lcom/deepalhome/launcher/util/DebugLogger;->e$default(Lcom/deepalhome/launcher/util/DebugLogger;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/map/MapController;->INSTANCE:Lcom/deepalhome/launcher/map/MapController;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/deepalhome/launcher/map/MapController;->exitNavi()V

    goto/16 :goto_1f

    :cond_31
    const/4 v0, 0x0

    :try_start_8
    sput-boolean v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->ignoreNextSystemNaviStop:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    monitor-exit v1

    const-string v0, "This onNaviStop is from navigation handoff, ignoring third-party exit"

    invoke-static {v0}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->resetS05GuideState()V

    goto/16 :goto_1f

    :goto_21
    return v1

    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0

    :pswitch_1f
    const-string v0, "com.tinnove.navi.skill.observer.IPCGuideInfoObserver"

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    sget-object v0, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->INSTANCE:Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;

    const-string v1, "Received GuideInfo.onNaviStart"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->logS05NaviIpc(Ljava/lang/String;)V

    sget-object v1, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;

    sget-object v2, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->appContext:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_33

    :cond_32
    sget-object v1, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->appContext:Landroid/content/Context;

    :cond_33
    sput-object v1, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->appContext:Landroid/content/Context;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->isNavigating:Z

    sget-object v2, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager$onNaviStart$1;->INSTANCE:Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager$onNaviStart$1;

    invoke-static {v2}, Lcom/deepalhome/launcher/hud/s05eta/HudNaviManager;->dispatchOnMain(Lkotlin/jvm/functions/Function0;)V

    const-string v2, "GuideInfo.onNaviStart"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;->access$queryS05CurrentDestination(Lcom/deepalhome/launcher/util/s05/navi/NaviIpcBridge;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch
.end method