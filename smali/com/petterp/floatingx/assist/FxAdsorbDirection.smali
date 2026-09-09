.class public final enum Lcom/petterp/floatingx/assist/FxAdsorbDirection;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/petterp/floatingx/assist/FxAdsorbDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/petterp/floatingx/assist/FxAdsorbDirection;

.field public static final enum BOTTOM:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

.field public static final enum LEFT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

.field public static final enum LEFT_OR_RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

.field public static final enum RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

.field public static final enum TOP:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

.field public static final enum TOP_OR_BOTTOM:Lcom/petterp/floatingx/assist/FxAdsorbDirection;


# direct methods
.method private static final synthetic $values()[Lcom/petterp/floatingx/assist/FxAdsorbDirection;
    .locals 6

    sget-object v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->TOP:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    sget-object v1, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->LEFT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    sget-object v2, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    sget-object v3, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->BOTTOM:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    sget-object v4, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->TOP_OR_BOTTOM:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    sget-object v5, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->LEFT_OR_RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    filled-new-array/range {v0 .. v5}, [Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    const-string v1, "TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/petterp/floatingx/assist/FxAdsorbDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->TOP:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    new-instance v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    const-string v1, "LEFT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/petterp/floatingx/assist/FxAdsorbDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->LEFT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    new-instance v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    const-string v1, "RIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/petterp/floatingx/assist/FxAdsorbDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    new-instance v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    const-string v1, "BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/petterp/floatingx/assist/FxAdsorbDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->BOTTOM:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    new-instance v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    const-string v1, "TOP_OR_BOTTOM"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/petterp/floatingx/assist/FxAdsorbDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->TOP_OR_BOTTOM:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    new-instance v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    const-string v1, "LEFT_OR_RIGHT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/petterp/floatingx/assist/FxAdsorbDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->LEFT_OR_RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    invoke-static {}, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->$values()[Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    move-result-object v0

    sput-object v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->$VALUES:[Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/petterp/floatingx/assist/FxAdsorbDirection;
    .locals 1

    const-class v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    return-object p0
.end method

.method public static values()[Lcom/petterp/floatingx/assist/FxAdsorbDirection;
    .locals 1

    sget-object v0, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->$VALUES:[Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    return-object v0
.end method
