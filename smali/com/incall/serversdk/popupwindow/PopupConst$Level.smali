.class public final enum Lcom/incall/serversdk/popupwindow/PopupConst$Level;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/incall/serversdk/popupwindow/PopupConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/incall/serversdk/popupwindow/PopupConst$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final $VALUES:[Lcom/incall/serversdk/popupwindow/PopupConst$Level;

.field public static final enum AUTOCORE_VOLUME:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

.field public static final enum CALL:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

.field public static final enum CALL_MAIN:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

.field public static final enum POWER_OFF:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

.field public static final enum REVERSE:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

.field public static final enum SCREEN_OFF:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

.field public static final enum SEND_PENN:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

.field public static final enum SYSTEM_UPGRADE:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

.field public static final enum TOAST:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

.field public static final enum TOAST_OPERA:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

.field public static final enum WELCOME:Lcom/incall/serversdk/popupwindow/PopupConst$Level;


# instance fields
.field private duration:I

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    const-string v1, "SEND_PENN"

    const/4 v2, 0x0

    const/16 v3, 0x7e8

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->SEND_PENN:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    new-instance v1, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    const-string v5, "POWER_OFF"

    const/4 v6, 0x1

    const/16 v7, 0x7e5

    invoke-direct {v1, v5, v6, v7, v4}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->POWER_OFF:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    new-instance v5, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    const-string v6, "SYSTEM_UPGRADE"

    const/16 v8, 0x7e6

    invoke-direct {v5, v6, v4, v8, v4}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;-><init>(Ljava/lang/String;III)V

    sput-object v5, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->SYSTEM_UPGRADE:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    new-instance v6, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    const-string v8, "REVERSE"

    const/4 v9, 0x3

    invoke-direct {v6, v8, v9, v7, v4}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;-><init>(Ljava/lang/String;III)V

    sput-object v6, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->REVERSE:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    new-instance v8, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    const-string v9, "CALL"

    const/4 v10, 0x4

    invoke-direct {v8, v9, v10, v3, v4}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;-><init>(Ljava/lang/String;III)V

    sput-object v8, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->CALL:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    new-instance v9, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    const-string v10, "CALL_MAIN"

    const/4 v11, 0x5

    invoke-direct {v9, v10, v11, v3, v4}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;-><init>(Ljava/lang/String;III)V

    sput-object v9, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->CALL_MAIN:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    new-instance v10, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    const-string v3, "SCREEN_OFF"

    const/4 v11, 0x6

    invoke-direct {v10, v3, v11, v7, v4}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;-><init>(Ljava/lang/String;III)V

    sput-object v10, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->SCREEN_OFF:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    new-instance v11, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    const-string v3, "AUTOCORE_VOLUME"

    const/4 v12, 0x7

    const/16 v13, 0x7d6

    invoke-direct {v11, v3, v12, v13, v2}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;-><init>(Ljava/lang/String;III)V

    sput-object v11, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->AUTOCORE_VOLUME:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    new-instance v12, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    const-string v3, "TOAST"

    const/16 v14, 0x8

    invoke-direct {v12, v3, v14, v13, v2}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;-><init>(Ljava/lang/String;III)V

    sput-object v12, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->TOAST:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    new-instance v14, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    const-string v2, "TOAST_OPERA"

    const/16 v3, 0x9

    invoke-direct {v14, v2, v3, v13, v4}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;-><init>(Ljava/lang/String;III)V

    sput-object v14, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->TOAST_OPERA:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    new-instance v13, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    const-string v2, "WELCOME"

    const/16 v3, 0xa

    invoke-direct {v13, v2, v3, v7, v4}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;-><init>(Ljava/lang/String;III)V

    sput-object v13, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->WELCOME:Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    move-object v2, v5

    move-object v3, v6

    move-object v4, v8

    move-object v5, v9

    move-object v6, v10

    move-object v7, v11

    move-object v8, v12

    move-object v9, v14

    move-object v10, v13

    filled-new-array/range {v0 .. v10}, [Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    move-result-object v0

    sput-object v0, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->$VALUES:[Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->type:I

    iput p4, p0, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->duration:I

    return-void
.end method

.method public static final findByIndex(I)Lcom/incall/serversdk/popupwindow/PopupConst$Level;
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->values()[Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    move-result-object v0

    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/incall/serversdk/popupwindow/PopupConst$Level;
    .locals 1

    const-class v0, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    return-object p0
.end method

.method public static values()[Lcom/incall/serversdk/popupwindow/PopupConst$Level;
    .locals 1

    sget-object v0, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->$VALUES:[Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    invoke-virtual {v0}, [Lcom/incall/serversdk/popupwindow/PopupConst$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/incall/serversdk/popupwindow/PopupConst$Level;

    return-object v0
.end method


# virtual methods
.method public duration()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->duration:I

    return p0
.end method

.method public type()I
    .locals 0

    iget p0, p0, Lcom/incall/serversdk/popupwindow/PopupConst$Level;->type:I

    return p0
.end method
