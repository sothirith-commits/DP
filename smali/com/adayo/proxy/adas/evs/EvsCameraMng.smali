.class public Lcom/adayo/proxy/adas/evs/EvsCameraMng;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adayo/proxy/adas/evs/EvsCameraMng$IEvsServiceCallBack;
    }
.end annotation


# static fields
.field private static sLibLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "evsserviceproxy_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/adayo/proxy/adas/evs/EvsCameraMng;->sLibLoaded:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adayo/proxy/adas/evs/EvsCameraMng;->sLibLoaded:Z

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native closeCamera(B)Z
.end method

.method public static native closeSubCamera(B)Z
.end method

.method public static native connectEvsService()Z
.end method

.method public static native getDeviceValue(Ljava/lang/String;)I
.end method

.method public static isLibLoaded()Z
    .locals 1

    sget-boolean v0, Lcom/adayo/proxy/adas/evs/EvsCameraMng;->sLibLoaded:Z

    return v0
.end method

.method public static native openCamera(B)Z
.end method

.method public static native openSubCamera(B)Z
.end method

.method public static native registEvsServiceCallback(Lcom/adayo/proxy/adas/evs/EvsCameraMng$IEvsServiceCallBack;Ljava/lang/String;)Z
.end method

.method public static native setDeviceString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setDeviceValue(Ljava/lang/String;I)V
.end method

.method public static native setSubSurface(Landroid/view/Surface;II)Z
.end method

.method public static native setSurface(Landroid/view/Surface;II)Z
.end method

.method public static native unRegistEvsServiceCallback(Lcom/adayo/proxy/adas/evs/EvsCameraMng$IEvsServiceCallBack;Ljava/lang/String;)Z
.end method
