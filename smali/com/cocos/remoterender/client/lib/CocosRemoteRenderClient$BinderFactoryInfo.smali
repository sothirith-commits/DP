.class public final Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final mFactory:Lcom/cocos/aidl/ICocosBinderFactory;

.field public mRefCount:I


# direct methods
.method public constructor <init>(Lcom/cocos/aidl/ICocosBinderFactory;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;->mFactory:Lcom/cocos/aidl/ICocosBinderFactory;

    const/4 p1, 0x1

    iput p1, p0, Lcom/cocos/remoterender/client/lib/CocosRemoteRenderClient$BinderFactoryInfo;->mRefCount:I

    return-void
.end method
