.class public Lcom/incall/serversdk/config/ConfigConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/incall/serversdk/config/ConfigConstants$CarId;,
        Lcom/incall/serversdk/config/ConfigConstants$CarType;,
        Lcom/incall/serversdk/config/ConfigConstants$NaviType;,
        Lcom/incall/serversdk/config/ConfigConstants$Tbox;,
        Lcom/incall/serversdk/config/ConfigConstants$VoiceType;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIG_INIT_SUCCESS:Ljava/lang/String; = "com.incall.action.config.init.success"

.field public static final INDEX_VEHICLE_CONFIG:I = 0x1c

.field public static final LENGTH_AIR_CONFIG:I = 0x8

.field public static final LENGTH_APP_CONFIG:I = 0xc

.field public static final LENGTH_CAR_CONFIG:I = 0x42

.field public static final LENGTH_VEHICLE_CONFIG:I = 0xe

.field public static final TAG_AIR_CONFIG:Ljava/lang/String; = "incall_tag_air_config"

.field public static final TAG_APP_CONFIG:Ljava/lang/String; = "incall_tag_app_config"

.field public static final TAG_CAR_CONFIG:Ljava/lang/String; = "incall_tag_car_config"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
