.class public final enum Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

.field public static final enum AUTHENTICATING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

.field public static final enum CONNECTING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

.field public static final enum FAILED:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

.field public static final enum PREPARING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

.field public static final enum SCANNING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

.field public static final enum SUCCESS:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    const-string v1, "SCANNING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->SCANNING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    new-instance v1, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    const-string v2, "CONNECTING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->CONNECTING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    new-instance v2, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    const-string v3, "AUTHENTICATING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->AUTHENTICATING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    new-instance v3, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    const-string v4, "PREPARING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->PREPARING:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    new-instance v4, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    const-string v5, "SUCCESS"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->SUCCESS:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    new-instance v5, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    const-string v6, "FAILED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->FAILED:Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    filled-new-array/range {v0 .. v5}, [Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->$VALUES:[Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;->$VALUES:[Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/settings/BlePairingPresentation$Stage;

    return-object v0
.end method
