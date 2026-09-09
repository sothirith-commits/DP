.class public abstract Lcom/efs/sdk/base/protocol/file/AbsFileLog;
.super Lcom/efs/sdk/base/protocol/AbsLog;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/efs/sdk/base/protocol/AbsLog;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBodyType()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLogProtocol()B
    .locals 0

    const/4 p0, 0x2

    return p0
.end method
