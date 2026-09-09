.class public abstract synthetic Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final $SwitchMap$com$cocos$remoterender$client$lib$renderview$RenderMode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/cocos/remoterender/client/lib/renderview/RenderMode$EnumUnboxingLocalUtility;->_values()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$7;->$SwitchMap$com$cocos$remoterender$client$lib$renderview$RenderMode:[I

    const/4 v1, 0x1

    const/4 v2, 0x2

    :try_start_0
    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$7;->$SwitchMap$com$cocos$remoterender$client$lib$renderview$RenderMode:[I

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
