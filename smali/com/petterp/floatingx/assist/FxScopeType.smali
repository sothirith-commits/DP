.class public final enum Lcom/petterp/floatingx/assist/FxScopeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/petterp/floatingx/assist/FxScopeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/petterp/floatingx/assist/FxScopeType;

.field public static final enum APP:Lcom/petterp/floatingx/assist/FxScopeType;

.field public static final enum SYSTEM:Lcom/petterp/floatingx/assist/FxScopeType;

.field public static final enum SYSTEM_AUTO:Lcom/petterp/floatingx/assist/FxScopeType;


# direct methods
.method private static final synthetic $values()[Lcom/petterp/floatingx/assist/FxScopeType;
    .locals 3

    sget-object v0, Lcom/petterp/floatingx/assist/FxScopeType;->APP:Lcom/petterp/floatingx/assist/FxScopeType;

    sget-object v1, Lcom/petterp/floatingx/assist/FxScopeType;->SYSTEM:Lcom/petterp/floatingx/assist/FxScopeType;

    sget-object v2, Lcom/petterp/floatingx/assist/FxScopeType;->SYSTEM_AUTO:Lcom/petterp/floatingx/assist/FxScopeType;

    filled-new-array {v0, v1, v2}, [Lcom/petterp/floatingx/assist/FxScopeType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/petterp/floatingx/assist/FxScopeType;

    const-string v1, "APP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/petterp/floatingx/assist/FxScopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxScopeType;->APP:Lcom/petterp/floatingx/assist/FxScopeType;

    new-instance v0, Lcom/petterp/floatingx/assist/FxScopeType;

    const-string v1, "SYSTEM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/petterp/floatingx/assist/FxScopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxScopeType;->SYSTEM:Lcom/petterp/floatingx/assist/FxScopeType;

    new-instance v0, Lcom/petterp/floatingx/assist/FxScopeType;

    const-string v1, "SYSTEM_AUTO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/petterp/floatingx/assist/FxScopeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxScopeType;->SYSTEM_AUTO:Lcom/petterp/floatingx/assist/FxScopeType;

    invoke-static {}, Lcom/petterp/floatingx/assist/FxScopeType;->$values()[Lcom/petterp/floatingx/assist/FxScopeType;

    move-result-object v0

    sput-object v0, Lcom/petterp/floatingx/assist/FxScopeType;->$VALUES:[Lcom/petterp/floatingx/assist/FxScopeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/petterp/floatingx/assist/FxScopeType;
    .locals 1

    const-class v0, Lcom/petterp/floatingx/assist/FxScopeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/petterp/floatingx/assist/FxScopeType;

    return-object p0
.end method

.method public static values()[Lcom/petterp/floatingx/assist/FxScopeType;
    .locals 1

    sget-object v0, Lcom/petterp/floatingx/assist/FxScopeType;->$VALUES:[Lcom/petterp/floatingx/assist/FxScopeType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/petterp/floatingx/assist/FxScopeType;

    return-object v0
.end method


# virtual methods
.method public final getHasPermission()Z
    .locals 1

    sget-object v0, Lcom/petterp/floatingx/assist/FxScopeType;->APP:Lcom/petterp/floatingx/assist/FxScopeType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
