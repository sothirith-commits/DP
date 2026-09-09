.class public final enum Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

.field public static final enum AdbConnectFailed:Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

.field public static final enum EnableWirelessDebuggingFailed:Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

.field public static final enum MissingSecureSettingsPermission:Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

.field public static final enum PortUnavailable:Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

.field public static final enum WifiDisconnected:Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    const-string v1, "WifiDisconnected"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;->WifiDisconnected:Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    new-instance v1, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    const-string v2, "MissingSecureSettingsPermission"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;->MissingSecureSettingsPermission:Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    new-instance v2, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    const-string v3, "EnableWirelessDebuggingFailed"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;->EnableWirelessDebuggingFailed:Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    new-instance v3, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    const-string v4, "PortUnavailable"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;->PortUnavailable:Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    new-instance v4, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    const-string v5, "AdbConnectFailed"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;->AdbConnectFailed:Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;->$VALUES:[Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;->$VALUES:[Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/task/WirelessDebugPrepareFailure;

    return-object v0
.end method
