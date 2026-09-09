.class public final enum Lcom/petterp/floatingx/assist/FxDisplayMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/petterp/floatingx/assist/FxDisplayMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/petterp/floatingx/assist/FxDisplayMode;

.field public static final enum ClickOnly:Lcom/petterp/floatingx/assist/FxDisplayMode;

.field public static final enum DisplayOnly:Lcom/petterp/floatingx/assist/FxDisplayMode;

.field public static final enum Normal:Lcom/petterp/floatingx/assist/FxDisplayMode;


# direct methods
.method private static final synthetic $values()[Lcom/petterp/floatingx/assist/FxDisplayMode;
    .locals 3

    sget-object v0, Lcom/petterp/floatingx/assist/FxDisplayMode;->Normal:Lcom/petterp/floatingx/assist/FxDisplayMode;

    sget-object v1, Lcom/petterp/floatingx/assist/FxDisplayMode;->ClickOnly:Lcom/petterp/floatingx/assist/FxDisplayMode;

    sget-object v2, Lcom/petterp/floatingx/assist/FxDisplayMode;->DisplayOnly:Lcom/petterp/floatingx/assist/FxDisplayMode;

    filled-new-array {v0, v1, v2}, [Lcom/petterp/floatingx/assist/FxDisplayMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/petterp/floatingx/assist/FxDisplayMode;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/petterp/floatingx/assist/FxDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxDisplayMode;->Normal:Lcom/petterp/floatingx/assist/FxDisplayMode;

    new-instance v0, Lcom/petterp/floatingx/assist/FxDisplayMode;

    const-string v1, "ClickOnly"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/petterp/floatingx/assist/FxDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxDisplayMode;->ClickOnly:Lcom/petterp/floatingx/assist/FxDisplayMode;

    new-instance v0, Lcom/petterp/floatingx/assist/FxDisplayMode;

    const-string v1, "DisplayOnly"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/petterp/floatingx/assist/FxDisplayMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/petterp/floatingx/assist/FxDisplayMode;->DisplayOnly:Lcom/petterp/floatingx/assist/FxDisplayMode;

    invoke-static {}, Lcom/petterp/floatingx/assist/FxDisplayMode;->$values()[Lcom/petterp/floatingx/assist/FxDisplayMode;

    move-result-object v0

    sput-object v0, Lcom/petterp/floatingx/assist/FxDisplayMode;->$VALUES:[Lcom/petterp/floatingx/assist/FxDisplayMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/petterp/floatingx/assist/FxDisplayMode;
    .locals 1

    const-class v0, Lcom/petterp/floatingx/assist/FxDisplayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/petterp/floatingx/assist/FxDisplayMode;

    return-object p0
.end method

.method public static values()[Lcom/petterp/floatingx/assist/FxDisplayMode;
    .locals 1

    sget-object v0, Lcom/petterp/floatingx/assist/FxDisplayMode;->$VALUES:[Lcom/petterp/floatingx/assist/FxDisplayMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/petterp/floatingx/assist/FxDisplayMode;

    return-object v0
.end method


# virtual methods
.method public final getCanMove()Z
    .locals 1

    sget-object v0, Lcom/petterp/floatingx/assist/FxDisplayMode;->Normal:Lcom/petterp/floatingx/assist/FxDisplayMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
