.class public final enum Lcom/deepalhome/launcher/hvac/HvacCommand$Position;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

.field public static final Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;

.field public static final enum FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

.field public static final enum FRONT_RIGHT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

.field public static final enum FRONT_ROW:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;


# instance fields
.field private final rawValue:Ljava/lang/String;

.field private final seatDisplayName:Ljava/lang/String;

.field private final seatVoiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    const/4 v1, 0x0

    const-string v3, "front_row"

    const-string v2, "FRONT_ROW"

    const-string v4, "Front row"

    const-string v5, "Front row"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_ROW:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    new-instance v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    const/4 v8, 0x1

    const-string v10, "front_left"

    const-string v9, "FRONT_LEFT"

    const-string v11, "Driver"

    const-string v12, "Front left"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_LEFT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    new-instance v1, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    const/4 v14, 0x2

    const-string v16, "front_right"

    const-string v15, "FRONT_RIGHT"

    const-string v17, "Passenger"

    const-string v18, "Front right"

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->FRONT_RIGHT:Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    filled-new-array {v6, v0, v1}, [Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->$VALUES:[Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    new-instance v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;-><init>(I)V

    sput-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->Companion:Lcom/deepalhome/launcher/hvac/HvacCommand$Position$Companion;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->rawValue:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->seatDisplayName:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->seatVoiceName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/launcher/hvac/HvacCommand$Position;
    .locals 1

    const-class v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/launcher/hvac/HvacCommand$Position;
    .locals 1

    sget-object v0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->$VALUES:[Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/launcher/hvac/HvacCommand$Position;

    return-object v0
.end method


# virtual methods
.method public final getRawValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->rawValue:Ljava/lang/String;

    return-object p0
.end method

.method public final getSeatDisplayName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->seatDisplayName:Ljava/lang/String;

    return-object p0
.end method

.method public final getSeatVoiceName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/deepalhome/launcher/hvac/HvacCommand$Position;->seatVoiceName:Ljava/lang/String;

    return-object p0
.end method
