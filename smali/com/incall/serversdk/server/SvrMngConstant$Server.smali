.class public final enum Lcom/incall/serversdk/server/SvrMngConstant$Server;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/server/SvrMngConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Server"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/incall/serversdk/server/SvrMngConstant$Server;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/incall/serversdk/server/SvrMngConstant$Server;

.field public static final enum BLUETOOTH_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

.field public static final enum CORE_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

.field public static final enum CRASH_LOG:Lcom/incall/serversdk/server/SvrMngConstant$Server;

.field public static final enum KEY_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

.field public static final enum MEDIA_SCANNER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

.field public static final enum NETWORK_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

.field public static final enum RADIO_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

.field public static final enum TBOX_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

.field public static final enum UPDATE_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

.field public static final enum USB_MUSIC:Lcom/incall/serversdk/server/SvrMngConstant$Server;

.field public static final enum VOLUME_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;


# instance fields
.field private iBinderName:Ljava/lang/String;

.field private serviceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    const-string v1, "com.incall.CORE_SERVICE"

    const-string v2, "CORE_SERVER"

    const/4 v3, 0x0

    const-string v4, "com.incall.coreserver"

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/incall/serversdk/server/SvrMngConstant$Server;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/incall/serversdk/server/SvrMngConstant$Server;->CORE_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

    new-instance v1, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    const-string v2, "com.incall.apps.music"

    const-string v3, "com.incall.USB_MUSIC_SERVICE"

    const-string v5, "USB_MUSIC"

    const/4 v6, 0x1

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/incall/serversdk/server/SvrMngConstant$Server;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/incall/serversdk/server/SvrMngConstant$Server;->USB_MUSIC:Lcom/incall/serversdk/server/SvrMngConstant$Server;

    new-instance v2, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    const-string v3, "com.incall.service.MediaScanner"

    const-string v5, "com.incall.MEDIA_SCANNER_SERVICE"

    const-string v6, "MEDIA_SCANNER"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v3, v5}, Lcom/incall/serversdk/server/SvrMngConstant$Server;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/incall/serversdk/server/SvrMngConstant$Server;->MEDIA_SCANNER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

    new-instance v3, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    const-string v5, "com.incall.apps.logreport"

    const-string v6, "com.incall.CRASH_LOG_SERVICE"

    const-string v7, "CRASH_LOG"

    const/4 v8, 0x3

    invoke-direct {v3, v7, v8, v5, v6}, Lcom/incall/serversdk/server/SvrMngConstant$Server;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/incall/serversdk/server/SvrMngConstant$Server;->CRASH_LOG:Lcom/incall/serversdk/server/SvrMngConstant$Server;

    new-instance v5, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    const/4 v6, 0x4

    const-string v7, "com.incall.HARD_KEY_SERVICE"

    const-string v8, "KEY_SERVER"

    invoke-direct {v5, v8, v6, v4, v7}, Lcom/incall/serversdk/server/SvrMngConstant$Server;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/incall/serversdk/server/SvrMngConstant$Server;->KEY_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

    new-instance v6, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    const-string v4, "com.incall.bluetooth"

    const-string v7, "com.incall.bluetooth.server"

    const-string v8, "BLUETOOTH_SERVER"

    const/4 v9, 0x5

    invoke-direct {v6, v8, v9, v4, v7}, Lcom/incall/serversdk/server/SvrMngConstant$Server;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/incall/serversdk/server/SvrMngConstant$Server;->BLUETOOTH_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

    new-instance v7, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    const-string v4, "com.incall.radio"

    const-string v8, "com.incall.incallproxy.radio.ACTION_RADIO"

    const-string v9, "RADIO_SERVER"

    const/4 v10, 0x6

    invoke-direct {v7, v9, v10, v4, v8}, Lcom/incall/serversdk/server/SvrMngConstant$Server;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/incall/serversdk/server/SvrMngConstant$Server;->RADIO_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

    new-instance v8, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    const-string v4, "com.incall.otaserver"

    const-string v9, "com.incall.update.server"

    const-string v10, "UPDATE_SERVER"

    const/4 v11, 0x7

    invoke-direct {v8, v10, v11, v4, v9}, Lcom/incall/serversdk/server/SvrMngConstant$Server;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/incall/serversdk/server/SvrMngConstant$Server;->UPDATE_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

    new-instance v9, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    const-string v4, "com.incall.service.volumegain"

    const-string v10, "com.incall.VOLUMEGAIN_SERVICE"

    const-string v11, "VOLUME_SERVER"

    const/16 v12, 0x8

    invoke-direct {v9, v11, v12, v4, v10}, Lcom/incall/serversdk/server/SvrMngConstant$Server;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/incall/serversdk/server/SvrMngConstant$Server;->VOLUME_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

    new-instance v10, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    const-string v4, "com.incall.tboxservice"

    const-string v11, "com.incall.tbox.service"

    const-string v12, "TBOX_SERVER"

    const/16 v13, 0x9

    invoke-direct {v10, v12, v13, v4, v11}, Lcom/incall/serversdk/server/SvrMngConstant$Server;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/incall/serversdk/server/SvrMngConstant$Server;->TBOX_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

    new-instance v11, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    const-string v4, "com.incall.network"

    const-string v12, "com.incall.network.NETWORK_SERVICE"

    const-string v13, "NETWORK_SERVER"

    const/16 v14, 0xa

    invoke-direct {v11, v13, v14, v4, v12}, Lcom/incall/serversdk/server/SvrMngConstant$Server;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v11, Lcom/incall/serversdk/server/SvrMngConstant$Server;->NETWORK_SERVER:Lcom/incall/serversdk/server/SvrMngConstant$Server;

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    filled-new-array/range {v0 .. v10}, [Lcom/incall/serversdk/server/SvrMngConstant$Server;

    move-result-object v0

    sput-object v0, Lcom/incall/serversdk/server/SvrMngConstant$Server;->$VALUES:[Lcom/incall/serversdk/server/SvrMngConstant$Server;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/incall/serversdk/server/SvrMngConstant$Server;->serviceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/incall/serversdk/server/SvrMngConstant$Server;->iBinderName:Ljava/lang/String;

    return-void
.end method

.method public static findById(I)Lcom/incall/serversdk/server/SvrMngConstant$Server;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/incall/serversdk/server/SvrMngConstant$Server;->values()[Lcom/incall/serversdk/server/SvrMngConstant$Server;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/incall/serversdk/server/SvrMngConstant$Server;
    .locals 1

    const-class v0, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/incall/serversdk/server/SvrMngConstant$Server;

    return-object p0
.end method

.method public static values()[Lcom/incall/serversdk/server/SvrMngConstant$Server;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/server/SvrMngConstant$Server;->$VALUES:[Lcom/incall/serversdk/server/SvrMngConstant$Server;

    invoke-virtual {v0}, [Lcom/incall/serversdk/server/SvrMngConstant$Server;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/incall/serversdk/server/SvrMngConstant$Server;

    return-object v0
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/server/SvrMngConstant$Server;->serviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getiBinderName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/incall/serversdk/server/SvrMngConstant$Server;->iBinderName:Ljava/lang/String;

    return-object p0
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/server/SvrMngConstant$Server;->serviceName:Ljava/lang/String;

    return-void
.end method

.method public setiBinderName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/incall/serversdk/server/SvrMngConstant$Server;->iBinderName:Ljava/lang/String;

    return-void
.end method
