.class public abstract synthetic Lcom/petterp/floatingx/view/helper/FxViewLocationHelper$WhenMappings;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    invoke-static {}, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->values()[Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->LEFT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->LEFT_OR_RIGHT:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->TOP:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->BOTTOM:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v6, 0x5

    aput v6, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxAdsorbDirection;->TOP_OR_BOTTOM:Lcom/petterp/floatingx/assist/FxAdsorbDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v7, 0x6

    aput v7, v0, v1

    sput-object v0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/petterp/floatingx/assist/FxGravity;->values()[Lcom/petterp/floatingx/assist/FxGravity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/petterp/floatingx/assist/FxGravity;->DEFAULT:Lcom/petterp/floatingx/assist/FxGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxGravity;->LEFT_OR_TOP:Lcom/petterp/floatingx/assist/FxGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxGravity;->LEFT_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxGravity;->LEFT_OR_BOTTOM:Lcom/petterp/floatingx/assist/FxGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v5, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxGravity;->RIGHT_OR_TOP:Lcom/petterp/floatingx/assist/FxGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v6, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxGravity;->RIGHT_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aput v7, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxGravity;->RIGHT_OR_BOTTOM:Lcom/petterp/floatingx/assist/FxGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxGravity;->TOP_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1

    sget-object v1, Lcom/petterp/floatingx/assist/FxGravity;->BOTTOM_OR_CENTER:Lcom/petterp/floatingx/assist/FxGravity;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1

    sput-object v0, Lcom/petterp/floatingx/view/helper/FxViewLocationHelper$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method
