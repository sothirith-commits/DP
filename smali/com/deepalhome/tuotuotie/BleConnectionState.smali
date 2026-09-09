.class public final enum Lcom/deepalhome/tuotuotie/BleConnectionState;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/tuotuotie/BleConnectionState;

.field public static final enum AUTHENTICATED:Lcom/deepalhome/tuotuotie/BleConnectionState;

.field public static final enum AUTHENTICATING:Lcom/deepalhome/tuotuotie/BleConnectionState;

.field public static final enum CONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

.field public static final enum CONNECTING:Lcom/deepalhome/tuotuotie/BleConnectionState;

.field public static final enum DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/deepalhome/tuotuotie/BleConnectionState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/tuotuotie/BleConnectionState;->DISCONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    new-instance v1, Lcom/deepalhome/tuotuotie/BleConnectionState;

    const-string v2, "CONNECTING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/tuotuotie/BleConnectionState;->CONNECTING:Lcom/deepalhome/tuotuotie/BleConnectionState;

    new-instance v2, Lcom/deepalhome/tuotuotie/BleConnectionState;

    const-string v3, "CONNECTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/tuotuotie/BleConnectionState;->CONNECTED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    new-instance v3, Lcom/deepalhome/tuotuotie/BleConnectionState;

    const-string v4, "AUTHENTICATING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/deepalhome/tuotuotie/BleConnectionState;->AUTHENTICATING:Lcom/deepalhome/tuotuotie/BleConnectionState;

    new-instance v4, Lcom/deepalhome/tuotuotie/BleConnectionState;

    const-string v5, "AUTHENTICATED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/deepalhome/tuotuotie/BleConnectionState;->AUTHENTICATED:Lcom/deepalhome/tuotuotie/BleConnectionState;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/deepalhome/tuotuotie/BleConnectionState;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/tuotuotie/BleConnectionState;->$VALUES:[Lcom/deepalhome/tuotuotie/BleConnectionState;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/tuotuotie/BleConnectionState;
    .locals 1

    const-class v0, Lcom/deepalhome/tuotuotie/BleConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/tuotuotie/BleConnectionState;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/tuotuotie/BleConnectionState;
    .locals 1

    sget-object v0, Lcom/deepalhome/tuotuotie/BleConnectionState;->$VALUES:[Lcom/deepalhome/tuotuotie/BleConnectionState;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/tuotuotie/BleConnectionState;

    return-object v0
.end method
