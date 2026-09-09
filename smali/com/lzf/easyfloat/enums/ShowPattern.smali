.class public final enum Lcom/lzf/easyfloat/enums/ShowPattern;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/lzf/easyfloat/enums/ShowPattern;

.field public static final enum ALL_TIME:Lcom/lzf/easyfloat/enums/ShowPattern;

.field public static final enum BACKGROUND:Lcom/lzf/easyfloat/enums/ShowPattern;

.field public static final enum CURRENT_ACTIVITY:Lcom/lzf/easyfloat/enums/ShowPattern;

.field public static final enum FOREGROUND:Lcom/lzf/easyfloat/enums/ShowPattern;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/lzf/easyfloat/enums/ShowPattern;

    const-string v1, "CURRENT_ACTIVITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/lzf/easyfloat/enums/ShowPattern;->CURRENT_ACTIVITY:Lcom/lzf/easyfloat/enums/ShowPattern;

    new-instance v1, Lcom/lzf/easyfloat/enums/ShowPattern;

    const-string v2, "FOREGROUND"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/lzf/easyfloat/enums/ShowPattern;->FOREGROUND:Lcom/lzf/easyfloat/enums/ShowPattern;

    new-instance v2, Lcom/lzf/easyfloat/enums/ShowPattern;

    const-string v3, "BACKGROUND"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/lzf/easyfloat/enums/ShowPattern;->BACKGROUND:Lcom/lzf/easyfloat/enums/ShowPattern;

    new-instance v3, Lcom/lzf/easyfloat/enums/ShowPattern;

    const-string v4, "ALL_TIME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/lzf/easyfloat/enums/ShowPattern;->ALL_TIME:Lcom/lzf/easyfloat/enums/ShowPattern;

    filled-new-array {v0, v1, v2, v3}, [Lcom/lzf/easyfloat/enums/ShowPattern;

    move-result-object v0

    sput-object v0, Lcom/lzf/easyfloat/enums/ShowPattern;->$VALUES:[Lcom/lzf/easyfloat/enums/ShowPattern;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/lzf/easyfloat/enums/ShowPattern;
    .locals 1

    const-class v0, Lcom/lzf/easyfloat/enums/ShowPattern;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/lzf/easyfloat/enums/ShowPattern;

    return-object p0
.end method

.method public static values()[Lcom/lzf/easyfloat/enums/ShowPattern;
    .locals 1

    sget-object v0, Lcom/lzf/easyfloat/enums/ShowPattern;->$VALUES:[Lcom/lzf/easyfloat/enums/ShowPattern;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/lzf/easyfloat/enums/ShowPattern;

    return-object v0
.end method
