.class public abstract synthetic Lcom/cocos/remoterender/client/lib/renderview/RenderMode$EnumUnboxingLocalUtility;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $VALUES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lcom/cocos/remoterender/client/lib/renderview/RenderMode$EnumUnboxingLocalUtility;->$VALUES:[I

    return-void
.end method

.method public static _values()[I
    .locals 1

    sget-object v0, Lcom/cocos/remoterender/client/lib/renderview/RenderMode$EnumUnboxingLocalUtility;->$VALUES:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public static synthetic stringValueOf(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "null"

    return-object p0

    :cond_0
    const-string p0, "image"

    return-object p0

    :cond_1
    const-string p0, "texture"

    return-object p0

    :cond_2
    const-string p0, "surface"

    return-object p0
.end method
