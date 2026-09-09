.class public final enum Lcom/deepalhome/mitemp/MiConnectionStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/mitemp/MiConnectionStatus;

.field public static final enum CONNECTED:Lcom/deepalhome/mitemp/MiConnectionStatus;

.field public static final enum CONNECTING:Lcom/deepalhome/mitemp/MiConnectionStatus;

.field public static final enum IDLE:Lcom/deepalhome/mitemp/MiConnectionStatus;

.field public static final enum SCANNING:Lcom/deepalhome/mitemp/MiConnectionStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/deepalhome/mitemp/MiConnectionStatus;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/deepalhome/mitemp/MiConnectionStatus;->IDLE:Lcom/deepalhome/mitemp/MiConnectionStatus;

    new-instance v1, Lcom/deepalhome/mitemp/MiConnectionStatus;

    const-string v2, "SCANNING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/deepalhome/mitemp/MiConnectionStatus;->SCANNING:Lcom/deepalhome/mitemp/MiConnectionStatus;

    new-instance v2, Lcom/deepalhome/mitemp/MiConnectionStatus;

    const-string v3, "CONNECTING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTING:Lcom/deepalhome/mitemp/MiConnectionStatus;

    new-instance v3, Lcom/deepalhome/mitemp/MiConnectionStatus;

    const-string v4, "CONNECTED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/deepalhome/mitemp/MiConnectionStatus;->CONNECTED:Lcom/deepalhome/mitemp/MiConnectionStatus;

    filled-new-array {v0, v1, v2, v3}, [Lcom/deepalhome/mitemp/MiConnectionStatus;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/mitemp/MiConnectionStatus;->$VALUES:[Lcom/deepalhome/mitemp/MiConnectionStatus;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/mitemp/MiConnectionStatus;
    .locals 1

    const-class v0, Lcom/deepalhome/mitemp/MiConnectionStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/mitemp/MiConnectionStatus;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/mitemp/MiConnectionStatus;
    .locals 1

    sget-object v0, Lcom/deepalhome/mitemp/MiConnectionStatus;->$VALUES:[Lcom/deepalhome/mitemp/MiConnectionStatus;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/mitemp/MiConnectionStatus;

    return-object v0
.end method
