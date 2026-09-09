.class public final Lcom/deepalhome/launcher/hud/s05dvr/HudDvrEvsManager$registerCallback$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adayo/proxy/adas/evs/EvsCameraMng$IEvsServiceCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final native notifyDeviceString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final native notifyDeviceValue(Ljava/lang/String;I)V
.end method

.method public final native notifyParkInfo(Ljava/lang/String;II)V
.end method
