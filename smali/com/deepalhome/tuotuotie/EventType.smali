.class public final enum Lcom/deepalhome/tuotuotie/EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/deepalhome/tuotuotie/EventType;

.field public static final enum CLICK:Lcom/deepalhome/tuotuotie/EventType;

.field public static final enum DOUBLE_CLICK:Lcom/deepalhome/tuotuotie/EventType;

.field public static final enum LONG_PRESS:Lcom/deepalhome/tuotuotie/EventType;

.field public static final enum ROTATE_CCW:Lcom/deepalhome/tuotuotie/EventType;

.field public static final enum ROTATE_CW:Lcom/deepalhome/tuotuotie/EventType;


# instance fields
.field private final code:B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/deepalhome/tuotuotie/EventType;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/deepalhome/tuotuotie/EventType;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/deepalhome/tuotuotie/EventType;->CLICK:Lcom/deepalhome/tuotuotie/EventType;

    new-instance v1, Lcom/deepalhome/tuotuotie/EventType;

    const-string v2, "DOUBLE_CLICK"

    const/16 v4, -0x7f

    invoke-direct {v1, v2, v3, v4}, Lcom/deepalhome/tuotuotie/EventType;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lcom/deepalhome/tuotuotie/EventType;->DOUBLE_CLICK:Lcom/deepalhome/tuotuotie/EventType;

    new-instance v2, Lcom/deepalhome/tuotuotie/EventType;

    const-string v3, "ROTATE_CW"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/deepalhome/tuotuotie/EventType;-><init>(Ljava/lang/String;IB)V

    sput-object v2, Lcom/deepalhome/tuotuotie/EventType;->ROTATE_CW:Lcom/deepalhome/tuotuotie/EventType;

    new-instance v3, Lcom/deepalhome/tuotuotie/EventType;

    const-string v4, "ROTATE_CCW"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/deepalhome/tuotuotie/EventType;-><init>(Ljava/lang/String;IB)V

    sput-object v3, Lcom/deepalhome/tuotuotie/EventType;->ROTATE_CCW:Lcom/deepalhome/tuotuotie/EventType;

    new-instance v4, Lcom/deepalhome/tuotuotie/EventType;

    const/16 v5, 0x41

    const-string v6, "LONG_PRESS"

    const/4 v7, 0x4

    invoke-direct {v4, v6, v7, v5}, Lcom/deepalhome/tuotuotie/EventType;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lcom/deepalhome/tuotuotie/EventType;->LONG_PRESS:Lcom/deepalhome/tuotuotie/EventType;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/deepalhome/tuotuotie/EventType;

    move-result-object v0

    sput-object v0, Lcom/deepalhome/tuotuotie/EventType;->$VALUES:[Lcom/deepalhome/tuotuotie/EventType;

    invoke-static {v0}, Lkotlin/io/TextStreamsKt;->enumEntries([Ljava/lang/Enum;)Lkotlin/enums/EnumEntriesList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-byte p3, p0, Lcom/deepalhome/tuotuotie/EventType;->code:B

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/deepalhome/tuotuotie/EventType;
    .locals 1

    const-class v0, Lcom/deepalhome/tuotuotie/EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/deepalhome/tuotuotie/EventType;

    return-object p0
.end method

.method public static values()[Lcom/deepalhome/tuotuotie/EventType;
    .locals 1

    sget-object v0, Lcom/deepalhome/tuotuotie/EventType;->$VALUES:[Lcom/deepalhome/tuotuotie/EventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/deepalhome/tuotuotie/EventType;

    return-object v0
.end method


# virtual methods
.method public final getCode()B
    .locals 0

    iget-byte p0, p0, Lcom/deepalhome/tuotuotie/EventType;->code:B

    return p0
.end method
