.class public Lcom/efs/sdk/pa/PAFactory$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/efs/sdk/pa/PAFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/efs/sdk/pa/config/PackageLevel;

.field private b:Lcom/efs/sdk/pa/config/IEfsReporter;

.field private c:Z

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;

.field private h:J

.field private i:Lcom/efs/sdk/pa/PATraceListener;

.field private j:Lcom/efs/sdk/pa/IPaClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/IEfsReporter;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->h:J

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iput-object p2, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->b:Lcom/efs/sdk/pa/config/IEfsReporter;

    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->d:Landroid/content/Context;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "reporter Should Not Empty"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "context Should Not null"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public build()Lcom/efs/sdk/pa/PAFactory;
    .locals 14

    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->a:Lcom/efs/sdk/pa/config/PackageLevel;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/efs/sdk/pa/PAFactory;

    iget-object v2, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->a:Lcom/efs/sdk/pa/config/PackageLevel;

    iget-object v4, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->b:Lcom/efs/sdk/pa/config/IEfsReporter;

    iget-boolean v5, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->c:Z

    iget-object v6, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->e:Ljava/lang/String;

    iget-object v7, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->f:Ljava/util/HashMap;

    iget-object v8, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->g:Ljava/lang/String;

    iget-wide v9, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->h:J

    iget-object v11, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->i:Lcom/efs/sdk/pa/PATraceListener;

    iget-object v12, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->j:Lcom/efs/sdk/pa/IPaClient;

    const/4 v13, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/efs/sdk/pa/PAFactory;-><init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/PackageLevel;Lcom/efs/sdk/pa/config/IEfsReporter;ZLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JLcom/efs/sdk/pa/PATraceListener;Lcom/efs/sdk/pa/IPaClient;Lcom/efs/sdk/pa/PAFactory$1;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, " Should Not Null"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public extendLogInfo(Ljava/util/HashMap;)Lcom/efs/sdk/pa/PAFactory$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/efs/sdk/pa/PAFactory$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->f:Ljava/util/HashMap;

    return-object p0
.end method

.method public isNewInstall(Z)Lcom/efs/sdk/pa/PAFactory$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->c:Z

    return-object p0
.end method

.method public packageLevel(Lcom/efs/sdk/pa/config/PackageLevel;)Lcom/efs/sdk/pa/PAFactory$Builder;
    .locals 0

    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->a:Lcom/efs/sdk/pa/config/PackageLevel;

    return-object p0
.end method

.method public serial(Ljava/lang/String;)Lcom/efs/sdk/pa/PAFactory$Builder;
    .locals 0

    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->e:Ljava/lang/String;

    return-object p0
.end method

.method public setPaClient(Lcom/efs/sdk/pa/IPaClient;)Lcom/efs/sdk/pa/PAFactory$Builder;
    .locals 0

    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->j:Lcom/efs/sdk/pa/IPaClient;

    return-object p0
.end method

.method public sver(Ljava/lang/String;)Lcom/efs/sdk/pa/PAFactory$Builder;
    .locals 0

    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->g:Ljava/lang/String;

    return-object p0
.end method

.method public timeoutTime(J)Lcom/efs/sdk/pa/PAFactory$Builder;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x7d0

    const-string v3, "pafactory"

    if-gtz v0, :cond_0

    const-string p1, "Timeout time is invalid, and the default value 2s will be used"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->h:J

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0xfa0

    cmp-long v0, p1, v4

    if-lez v0, :cond_1

    const-string p1, "Timeout time over 4s is not recommended, and the default value 2s will be used"

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->h:J

    return-object p0

    :cond_1
    iput-wide p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->h:J

    :goto_0
    return-object p0
.end method

.method public traceListener(Lcom/efs/sdk/pa/PATraceListener;)Lcom/efs/sdk/pa/PAFactory$Builder;
    .locals 0

    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory$Builder;->i:Lcom/efs/sdk/pa/PATraceListener;

    return-object p0
.end method
