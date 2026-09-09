.class public final enum Lcom/petterp/floatingx/assist/FxGravity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/petterp/floatingx/assist/FxGravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/petterp/floatingx/assist/FxGravity;

.field public static final enum BOTTOM_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

.field public static final enum CENTER:Lcom/petterp/floatingx/assist/FxGravity;

.field public static final enum DEFAULT:Lcom/petterp/floatingx/assist/FxGravity;

.field public static final enum LEFT_OR_BOTTOM:Lcom/petterp/floatingx/assist/FxGravity;

.field public static final enum LEFT_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

.field public static final enum LEFT_OR_TOP:Lcom/petterp/floatingx/assist/FxGravity;

.field public static final enum RIGHT_OR_BOTTOM:Lcom/petterp/floatingx/assist/FxGravity;

.field public static final enum RIGHT_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

.field public static final enum RIGHT_OR_TOP:Lcom/petterp/floatingx/assist/FxGravity;

.field public static final enum TOP_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;


# instance fields
.field private final scope:I

.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/petterp/floatingx/assist/FxGravity;
    .locals 10

    sget-object v0, Lcom/petterp/floatingx/assist/FxGravity;->DEFAULT:Lcom/petterp/floatingx/assist/FxGravity;

    sget-object v1, Lcom/petterp/floatingx/assist/FxGravity;->LEFT_OR_TOP:Lcom/petterp/floatingx/assist/FxGravity;

    sget-object v2, Lcom/petterp/floatingx/assist/FxGravity;->LEFT_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    sget-object v3, Lcom/petterp/floatingx/assist/FxGravity;->LEFT_OR_BOTTOM:Lcom/petterp/floatingx/assist/FxGravity;

    sget-object v4, Lcom/petterp/floatingx/assist/FxGravity;->RIGHT_OR_TOP:Lcom/petterp/floatingx/assist/FxGravity;

    sget-object v5, Lcom/petterp/floatingx/assist/FxGravity;->RIGHT_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    sget-object v6, Lcom/petterp/floatingx/assist/FxGravity;->RIGHT_OR_BOTTOM:Lcom/petterp/floatingx/assist/FxGravity;

    sget-object v7, Lcom/petterp/floatingx/assist/FxGravity;->CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    sget-object v8, Lcom/petterp/floatingx/assist/FxGravity;->TOP_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    sget-object v9, Lcom/petterp/floatingx/assist/FxGravity;->BOTTOM_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    filled-new-array/range {v0 .. v9}, [Lcom/petterp/floatingx/assist/FxGravity;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/petterp/floatingx/assist/FxGravity;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    const v3, 0x800033

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/petterp/floatingx/assist/FxGravity;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxGravity;->DEFAULT:Lcom/petterp/floatingx/assist/FxGravity;

    new-instance v0, Lcom/petterp/floatingx/assist/FxGravity;

    const-string v1, "LEFT_OR_TOP"

    invoke-direct {v0, v1, v4, v3, v4}, Lcom/petterp/floatingx/assist/FxGravity;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxGravity;->LEFT_OR_TOP:Lcom/petterp/floatingx/assist/FxGravity;

    new-instance v0, Lcom/petterp/floatingx/assist/FxGravity;

    const v1, 0x800013

    const-string v2, "LEFT_OR_CENTER"

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/petterp/floatingx/assist/FxGravity;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxGravity;->LEFT_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    new-instance v0, Lcom/petterp/floatingx/assist/FxGravity;

    const v1, 0x800053

    const-string v2, "LEFT_OR_BOTTOM"

    const/4 v5, 0x3

    invoke-direct {v0, v2, v5, v1, v5}, Lcom/petterp/floatingx/assist/FxGravity;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxGravity;->LEFT_OR_BOTTOM:Lcom/petterp/floatingx/assist/FxGravity;

    new-instance v0, Lcom/petterp/floatingx/assist/FxGravity;

    const/4 v1, 0x4

    const v2, 0x800035

    const-string v6, "RIGHT_OR_TOP"

    invoke-direct {v0, v6, v1, v2, v4}, Lcom/petterp/floatingx/assist/FxGravity;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxGravity;->RIGHT_OR_TOP:Lcom/petterp/floatingx/assist/FxGravity;

    new-instance v0, Lcom/petterp/floatingx/assist/FxGravity;

    const/4 v1, 0x5

    const v2, 0x800015

    const-string v6, "RIGHT_OR_CENTER"

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/petterp/floatingx/assist/FxGravity;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxGravity;->RIGHT_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    new-instance v0, Lcom/petterp/floatingx/assist/FxGravity;

    const/4 v1, 0x6

    const v2, 0x800055

    const-string v6, "RIGHT_OR_BOTTOM"

    invoke-direct {v0, v6, v1, v2, v5}, Lcom/petterp/floatingx/assist/FxGravity;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxGravity;->RIGHT_OR_BOTTOM:Lcom/petterp/floatingx/assist/FxGravity;

    new-instance v0, Lcom/petterp/floatingx/assist/FxGravity;

    const/4 v1, 0x7

    const/16 v2, 0x11

    const-string v6, "CENTER"

    invoke-direct {v0, v6, v1, v2, v3}, Lcom/petterp/floatingx/assist/FxGravity;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxGravity;->CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    new-instance v0, Lcom/petterp/floatingx/assist/FxGravity;

    const/16 v1, 0x8

    const/16 v2, 0x31

    const-string v3, "TOP_OR_CENTER"

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/petterp/floatingx/assist/FxGravity;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxGravity;->TOP_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    new-instance v0, Lcom/petterp/floatingx/assist/FxGravity;

    const/16 v1, 0x9

    const/16 v2, 0x51

    const-string v3, "BOTTOM_OR_CENTER"

    invoke-direct {v0, v3, v1, v2, v5}, Lcom/petterp/floatingx/assist/FxGravity;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxGravity;->BOTTOM_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    invoke-static {}, Lcom/petterp/floatingx/assist/FxGravity;->$values()[Lcom/petterp/floatingx/assist/FxGravity;

    move-result-object v0

    sput-object v0, Lcom/petterp/floatingx/assist/FxGravity;->$VALUES:[Lcom/petterp/floatingx/assist/FxGravity;

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

    iput p3, p0, Lcom/petterp/floatingx/assist/FxGravity;->value:I

    iput p4, p0, Lcom/petterp/floatingx/assist/FxGravity;->scope:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/petterp/floatingx/assist/FxGravity;
    .locals 1

    const-class v0, Lcom/petterp/floatingx/assist/FxGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/petterp/floatingx/assist/FxGravity;

    return-object p0
.end method

.method public static values()[Lcom/petterp/floatingx/assist/FxGravity;
    .locals 1

    sget-object v0, Lcom/petterp/floatingx/assist/FxGravity;->$VALUES:[Lcom/petterp/floatingx/assist/FxGravity;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/petterp/floatingx/assist/FxGravity;

    return-object v0
.end method


# virtual methods
.method public final getScope()I
    .locals 0

    iget p0, p0, Lcom/petterp/floatingx/assist/FxGravity;->scope:I

    return p0
.end method

.method public final getValue()I
    .locals 0

    iget p0, p0, Lcom/petterp/floatingx/assist/FxGravity;->value:I

    return p0
.end method

.method public final isDefault()Z
    .locals 1

    sget-object v0, Lcom/petterp/floatingx/assist/FxGravity;->DEFAULT:Lcom/petterp/floatingx/assist/FxGravity;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
