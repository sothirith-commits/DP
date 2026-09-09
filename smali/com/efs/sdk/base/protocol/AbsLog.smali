.class public abstract Lcom/efs/sdk/base/protocol/AbsLog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/efs/sdk/base/protocol/ILogProtocol;


# instance fields
.field private cp:Ljava/lang/String;

.field private de:B

.field private logType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "none"

    iput-object v0, p0, Lcom/efs/sdk/base/protocol/AbsLog;->cp:Ljava/lang/String;

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/efs/sdk/base/protocol/AbsLog;->de:B

    iput-object p1, p0, Lcom/efs/sdk/base/protocol/AbsLog;->logType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLogType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/efs/sdk/base/protocol/AbsLog;->logType:Ljava/lang/String;

    return-object p0
.end method

.method public isCp()Z
    .locals 1

    iget-object p0, p0, Lcom/efs/sdk/base/protocol/AbsLog;->cp:Ljava/lang/String;

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDe()Z
    .locals 1

    iget-byte p0, p0, Lcom/efs/sdk/base/protocol/AbsLog;->de:B

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setCp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/efs/sdk/base/protocol/AbsLog;->cp:Ljava/lang/String;

    return-void
.end method

.method public setDe(B)V
    .locals 0

    iput-byte p1, p0, Lcom/efs/sdk/base/protocol/AbsLog;->de:B

    return-void
.end method
